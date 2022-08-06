package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FuramaServlet", value = "/furama")
public class FuramaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "contract":
                showHomePage(request,response,"/contract");
                break;
            case "customer":
                showHomePage(request,response,"/customer");
                break;
            case "employee":
                showHomePage(request,response,"/employee");
                break;
            default:
                showHomePage(request, response,"index.jsp");
        }
    }

    private void showHomePage(HttpServletRequest request, HttpServletResponse response,String path) {
        try {
            request.getRequestDispatcher(path).forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
