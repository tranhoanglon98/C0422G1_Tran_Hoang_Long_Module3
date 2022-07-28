package servlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    List<Customer> customerList = new ArrayList<>();
    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Long","03/08/1998","Huế","https://tieusunguoinoitieng.com/wp-content/uploads/2021/10/tieu-su-Dan-truong-8-1-509x375.jpg"));
        customerList.add(new Customer("Duyên","03/09/1998","ĐN","https://www.looper.com/img/gallery/20-epic-movies-like-avatar-you-need-to-watch-next/l-intro-1645555067.jpg"));
        customerList.add(new Customer("Trang","03/20/1998","Quảng Trị","https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/ThuTrang1984.jpg/1200px-ThuTrang1984.jpg"));
        customerList.add(new Customer("Phúc","03/12/1998","ĐN","https://vcdn-giaitri.vnecdn.net/2022/04/28/Avatar-2-James-Cameron-5081-1651112580.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("view/customer/list.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
