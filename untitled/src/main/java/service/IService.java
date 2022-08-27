package service;

import model.HoKhau;
import model.ThanhVien;

import java.util.List;

public interface IService {

    List<HoKhau> timKiemTatCaHoKhau();

    List<ThanhVien> timKiemTatCaThanhVien();

    boolean chinhSuaHoKhau(HoKhau maHoKhau);

    HoKhau timKiemBangMaHoKhau(String maHoKhau);


    List<String> timKiemThanhVien(String maHoKhau);
}
