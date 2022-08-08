package controller;

import model.CustomerType;
import model.person.Customer;
import service.customer.ICustomerService;
import service.customer.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private ICustomerService customerService = new CustomerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action==null){
            action = "";
        }
        switch (action){
            case "add":
                showAddNewCustomer(request,response);
                break;
            case "update":
                showUpdatePage(request,response);
                break;
            case "findByName":
                findByName(request,response);
                break;
            default:
                showHomePage(request,response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action==null){
            action = "";
        }
        switch (action){
            case "add":
                addNewCustomer(request,response);
                break;
            case "update":
                updateCustomer(request,response);
                break;
            case "delete":
                deleteCustomer(request,response);
                break;
        }
    }

    private void findByName(HttpServletRequest request, HttpServletResponse response) {
        String code = request.getParameter("customerCode");
        String name = request.getParameter("customerName");
        List<Customer> customerList = customerService.findByNameAndCode(name,code);
        request.setAttribute("customerList",customerList);
        try {
            request.getRequestDispatcher("view/customer/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showUpdatePage(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        List<CustomerType> customerTypeList = customerService.showCustomerType();
        Customer customer = customerService.findById(id);
        request.setAttribute("customer",customer);
        request.setAttribute("customerTypeList",customerTypeList);
        try {
            request.getRequestDispatcher("view/customer/update.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showAddNewCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<CustomerType> customerTypeList = customerService.showCustomerType();
        request.setAttribute("customerTypeList",customerTypeList);
        try {
            request.getRequestDispatcher("view/customer/add.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showHomePage(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = customerService.findAll();
        List<CustomerType> customerTypeList = customerService.showCustomerType();
        request.setAttribute("customerList",customerList);
        request.setAttribute("customerTypeList",customerTypeList);
        try {
            request.getRequestDispatcher("view/customer/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int customerCode = Integer.parseInt(request.getParameter("customerCode"));
        customerService.delete(customerCode);
        showHomePage(request,response);
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
        int customerCode = Integer.parseInt(request.getParameter("customerCode"));
        String name = request.getParameter("name");
        String birthDay = request.getParameter("birthday");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        int customerType = Integer.parseInt(request.getParameter("customerType"));
        String address = request.getParameter("address");
        Customer customer = new Customer(name,birthDay,idCard,phone,email,address,customerCode,customerType,gender);
        customerService.update(customer);
        showHomePage(request,response);
    }

    private void addNewCustomer(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String birthDay = request.getParameter("birthday");
        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        int customerType = Integer.parseInt(request.getParameter("customerType"));
        String address = request.getParameter("address");
        Customer newCustomer = new Customer(name,birthDay,idCard,phone,email,address,customerType,gender);
        Map<String, String> errMap =  customerService.add(newCustomer);
        request.setAttribute("customer",newCustomer);
        request.setAttribute("customerTypeList",customerService.showCustomerType());
        if (errMap.isEmpty()){
            showHomePage(request,response);
        }else {
            for (Map.Entry<String,String> entry: errMap.entrySet()){
                request.setAttribute(entry.getKey(),entry.getValue());
            }
            try {
                request.getRequestDispatcher("view/customer/add.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
