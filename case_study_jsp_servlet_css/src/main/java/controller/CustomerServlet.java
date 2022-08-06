package controller;

import model.CustomerType;
import model.person.Customer;
import service.customer.ICustomerService;
import service.customer.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

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
            default:
                showHomePage(request,response);
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
        }
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
        customerService.add(newCustomer);
        showHomePage(request,response);
    }
}
