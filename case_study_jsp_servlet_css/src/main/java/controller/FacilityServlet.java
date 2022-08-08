package controller;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;
import service.facility.IFacilityService;
import service.facility.impl.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "FacilityServlet", value = "/facility")
public class FacilityServlet extends HttpServlet {
    private IFacilityService facilityService = new FacilityService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action==null){
            action = "";
        }
        switch (action){
            case "add":
                showAddNewFacility(request,response);
                break;
            case "delete":
                deleteFacility(request,response);
                break;
            case "edit":
                showEditPage(request,response);
                break;
            case "find":
                findByNameAndId(request,response);
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
                addNewFacility(request,response);
                break;
            case "update":
                updateFacility(request,response);
                break;
        }
    }

    private void findByNameAndId(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("facilityCode");
        String name = request.getParameter("facilityName");
        List<FacilityType> facilityTypeList = facilityService.showFacilityType();
        List<RentType> rentTypeList = facilityService.showRentType();
        List<Facility> facilityList = facilityService.findByNameAndId(id,name);
        request.setAttribute("facilityList",facilityList);
        request.setAttribute("rentTypeList",rentTypeList);
        request.setAttribute("facilityTypeList",facilityTypeList);
        try {
            request.getRequestDispatcher("view/facility/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditPage(HttpServletRequest request, HttpServletResponse response) {
        int facilityCode = Integer.parseInt(request.getParameter("facilityCode"));
        List<RentType> rentTypeList = facilityService.showRentType();
        Facility facility = facilityService.findById(facilityCode);
        request.setAttribute("rentTypeList",rentTypeList);
        request.setAttribute("facility",facility);
        try {
            request.getRequestDispatcher("view/facility/edit.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("facilityCode"));
        facilityService.deleteFacility(id);
        showHomePage(request,response);
    }

    private void showAddNewFacility(HttpServletRequest request, HttpServletResponse response) {
        List<RentType> rentTypeList = facilityService.showRentType();
        request.setAttribute("rentTypeList",rentTypeList);
        try {
            request.getRequestDispatcher("view/facility/add.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showHomePage(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.findAll();
        List<RentType> rentTypeList = facilityService.showRentType();
        List<FacilityType> facilityTypeList = facilityService.showFacilityType();
        request.setAttribute("facilityList",facilityList);
        request.setAttribute("rentTypeList",rentTypeList);
        request.setAttribute("facilityTypeList",facilityTypeList);
        try {
            request.getRequestDispatcher("view/facility/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateFacility(HttpServletRequest request, HttpServletResponse response) {
        int facilityCode = Integer.parseInt(request.getParameter("facilityCode"));
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("people"));
        int rentalTypeId = Integer.parseInt(request.getParameter("rentalType"));
        int typeId = Integer.parseInt(request.getParameter("TypeCode"));
        String standard = request.getParameter("standard");
        String convenience = request.getParameter("convenience");
        int floors = Integer.parseInt(request.getParameter("floors"));
        String facilityFree = request.getParameter("free");
        double poolArea = Double.parseDouble(request.getParameter("Pool"));
        Facility facility = new Facility(facilityCode,name,area,cost,maxPeople,rentalTypeId,typeId,standard,convenience,poolArea,floors,facilityFree);

        List<RentType> rentTypeList = facilityService.showRentType();
        List<FacilityType> facilityTypeList = facilityService.showFacilityType();
        request.setAttribute("rentTypeList",rentTypeList);
        request.setAttribute("facilityTypeList",facilityTypeList);
        request.setAttribute("facility",facility);

        Map<String,String> errMap = facilityService.updateFacility(facility);

        if (errMap.isEmpty()){
            showHomePage(request,response);
        }else {
            try {
                request.getRequestDispatcher("view/facility/edit.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void addNewFacility(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("people"));
        int rentalTypeId = Integer.parseInt(request.getParameter("rentalType"));
        int typeId = Integer.parseInt(request.getParameter("id"));
        String standard = request.getParameter("standard");
        String convenience = request.getParameter("convenience");
        int floors = Integer.parseInt(request.getParameter("floors"));
        String facilityFree = request.getParameter("free");
        double poolArea = Double.parseDouble(request.getParameter("Pool"));

        Facility facility = new Facility(name,area,cost,maxPeople,rentalTypeId,typeId,standard,convenience,poolArea,floors,facilityFree);

        List<RentType> rentTypeList = facilityService.showRentType();
        List<FacilityType> facilityTypeList = facilityService.showFacilityType();
        request.setAttribute("rentTypeList",rentTypeList);
        request.setAttribute("facilityTypeList",facilityTypeList);
        request.setAttribute("facility",facility);

        Map<String,String> errMap = facilityService.addNewFacility(facility);

        if (errMap.isEmpty()){
            showHomePage(request,response);
        }else {
            try {
                request.getRequestDispatcher("view/facility/add.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
