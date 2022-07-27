import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet(name = "SumServlet",urlPatterns = {"/sum"})
public class SumServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       int number1 = Integer.parseInt(request.getParameter("num1"));
       int number2 = Integer.parseInt(request.getParameter("num2"));
       int sum = number1+number2;
       //cách1 : không dùng
//        PrintWriter printWriter = response.getWriter();
//        printWriter.print("<h1>"+number1+"+"+number2+"="+sum+"</h1>");
        // cách 2
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        request.setAttribute("ketQua",sum);
        requestDispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int number1 = Integer.parseInt(request.getParameter("num1"));
        int number2 = Integer.parseInt(request.getParameter("num2"));
        int sum = number1+number2;
        PrintWriter printWriter = response.getWriter();
        printWriter.print("<h1>"+number1+"+"+number2+"="+sum+"</h1>");
    }
}
