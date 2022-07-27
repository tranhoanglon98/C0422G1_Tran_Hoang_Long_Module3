import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloServlet",urlPatterns = {"/hello","/xin-chao"})
public class HelloServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter printWriter = response.getWriter();
        printWriter.print("<h1>Do-post</h1>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter printWriter = response.getWriter();
        printWriter.print("<h1>Do-get</h1>");
    }

    @Override
    public void init() throws ServletException {
        System.out.println("init chay");
    }

    @Override
    public void destroy() {
        System.out.println("destroy chay");
    }
}
