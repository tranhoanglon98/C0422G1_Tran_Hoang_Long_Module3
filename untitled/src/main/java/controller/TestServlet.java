package controller;

import model.HoKhau;
import model.ThanhVien;
import service.IService;
import service.impl.Service;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TestServlet", value = "")
public class TestServlet extends HttpServlet {
    private IService service = new Service();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "sua":
                hienThiTrangSua(request,response);
                break;
            case "thanhVien":
                timThanhVien(request,response);
                break;
            default:
                hienThi(request,response);
        }
    }

    private void timThanhVien(HttpServletRequest request, HttpServletResponse response) {
        String maHoKhau = request.getParameter("maHoKhau");
        List<String> danhSachThanhVien = service.timKiemThanhVien(maHoKhau);
        request.setAttribute("mess","ok");
        request.setAttribute("danhSachThanhVien",danhSachThanhVien);
        hienThi(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "sua":
                suaHoKhau(request,response);
                break;
        }
    }

    private void suaHoKhau(HttpServletRequest request, HttpServletResponse response) {
        String maHoKhau =request.getParameter("maHoKhau");
        String chuHo =request.getParameter("chuHo");
        String ngayLapHoKhau =request.getParameter("ngayLapHoKhau");
        String diaChi =request.getParameter("diaChi");
        HoKhau hoKhau = new HoKhau(maHoKhau,chuHo,ngayLapHoKhau,diaChi);
        boolean check = service.chinhSuaHoKhau(hoKhau);
        if (check){
            request.setAttribute("mess","sửa thành công");
        }else {
            request.setAttribute("mess","sửa không thành công");
        }

       hienThi(request,response);
    }

    private void hienThiTrangSua(HttpServletRequest request, HttpServletResponse response) {
        String maHoKhau = request.getParameter("maHoKhau");
        HoKhau hoKhau = service.timKiemBangMaHoKhau(maHoKhau);
        request.setAttribute("hoKhau",hoKhau);
        try {
            request.getRequestDispatcher("sua.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void hienThi(HttpServletRequest request, HttpServletResponse response) {
        List<HoKhau> danhSachHoKhau = service.timKiemTatCaHoKhau();
        request.setAttribute("danhSachHoKhau",danhSachHoKhau);
        try {
            request.getRequestDispatcher("index.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


}
