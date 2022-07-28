import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SimpleLoginServlet", value = "/login")
public class SimpleLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        if (name.equals("admin")&&password.equals("admin")){
            request.setAttribute("response", "Wellcome " + name + " to website.");
        }else {
            request.setAttribute("response", "Login error");
        }
        requestDispatcher.forward(request,response);
    }
}
