package repository;

import model.HoKhau;
import model.ThanhVien;

import java.util.List;

public interface IRepository {

    List<HoKhau> timKiemTatCaHoKhau();

    List<ThanhVien> timKiemTatCaThanhVien();

    boolean chinhSuaHoKhau(HoKhau maHoKhau);

    HoKhau timKiemBangMaHoKhau(String maHoKhau);

    List<String> timKiemThanhVien(String maHoKhau);

}
