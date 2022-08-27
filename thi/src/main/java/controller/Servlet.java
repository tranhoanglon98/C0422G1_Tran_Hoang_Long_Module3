package controller;

import model.Lesson;
import model.Level;
import model.Module;
import service.IService;
import service.impl.Service;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Servlet", value = "")
public class Servlet extends HttpServlet {
    private IService service = new Service();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "add":
                add(request,response);
                break;
            case "delete":
                delete(request,response);
                break;
            default:
                showList(request,response);
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        service.delete(id);
        showList(request,response);
    }

    private void add(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("view/update_add.jsp").forward(request,response);
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
        if (action == null){
            action = "";
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<Lesson> lessonList = service.findAll();
        List<Level> levelList = service.findAllLevel();
        List<Module> moduleList = service.findAllModule();
        request.setAttribute("lessonList",lessonList);
        request.setAttribute("levelList",levelList);
        request.setAttribute("moduleList",moduleList);
        try {
            request.getRequestDispatcher("index.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
