import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

@WebServlet(name = "LibraryServlet", value = "/library")
public class LibraryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> library = new LinkedHashMap<>();
        library.put("Long", "Đẹp trai");
        library.put("hello", "xin chào");
        library.put("one", "một");
        library.put("two", "hai");

        String text = request.getParameter("text");
        String result = library.get(text);

        if (result !=null){
            request.setAttribute("result",result);
        }else {
            request.setAttribute("result","not found");
        }
        request.setAttribute("text",text);
       request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
