package repository.imp;

import model.HoKhau;
import model.ThanhVien;
import repository.BaseRepository;
import repository.IRepository;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class Repository implements IRepository {
    private final String TIM_KIEM_HO_KHAU = "select * from ho_khau;";
    private final String TIM_KIEM_THANH_VIEN_BANG_MHK = "select ho_ten from thanh_vien where ma_ho_khau = ?;";
    private final String TIM_KIEM_MA_HO_KHAU = "select * from ho_khau where ma_ho_khau = ?;";
    private final String TIM_KIEM_THANH_VIEN = "select * from thanh_vien;";
    private final String SUA = " UPDATE ho_khau SET ten_chu_ho = ?, ngay_lap_ho_khau = ?, dia_chi = ? WHERE ma_ho_khau = ?;";

    @Override
    public List<HoKhau> timKiemTatCaHoKhau() {
        List<HoKhau> danhSachHoKhau = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TIM_KIEM_HO_KHAU);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String maHoKhau = resultSet.getString("ma_ho_khau");
                String chuHo = resultSet.getString("ten_chu_ho");
                int soLuongThanhVien = resultSet.getInt("so_luong_thanh_vien");
                String ngayLapHoKhau = resultSet.getString("ngay_lap_ho_khau");
                String diaChi = resultSet.getString("dia_chi");
                danhSachHoKhau.add(new HoKhau(maHoKhau,chuHo,soLuongThanhVien,ngayLapHoKhau,diaChi));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return danhSachHoKhau;
    }

    @Override
    public List<ThanhVien> timKiemTatCaThanhVien() {
        List<ThanhVien> danhSachThanhVien = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TIM_KIEM_THANH_VIEN);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String chungMinhNhanDan = resultSet.getString("chung_minh_nhan_dan");
                String hoTen = resultSet.getString("ho_ten");
                String ngaySinh = resultSet.getString("ngay_sinh");
                String maHoKhau = resultSet.getString("ma_ho_khau");
                danhSachThanhVien.add(new ThanhVien(chungMinhNhanDan,hoTen,ngaySinh,maHoKhau));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return danhSachThanhVien;
    }

    @Override
    public boolean chinhSuaHoKhau(HoKhau hoKhau) {
        Connection connection = BaseRepository.getConnectDB();
        boolean check = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SUA);
            preparedStatement.setString(1,hoKhau.getTenChuHo());
            preparedStatement.setDate(2, Date.valueOf(hoKhau.getNgayLapHoKhau()));
            preparedStatement.setString(3,hoKhau.getDiaChi());
            preparedStatement.setString(4,hoKhau.getMaHoKhau());
            check = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return check;
    }

    @Override
    public HoKhau timKiemBangMaHoKhau(String maHoKhau) {
        HoKhau hoKhau = null;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TIM_KIEM_MA_HO_KHAU);
            preparedStatement.setString(1,maHoKhau);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String maHoKhauTim = resultSet.getString("ma_ho_khau");
                String chuHo = resultSet.getString("ten_chu_ho");
                int soLuongThanhVien = resultSet.getInt("so_luong_thanh_vien");
                String ngayLapHoKhau = resultSet.getString("ngay_lap_ho_khau");
                String diaChi = resultSet.getString("dia_chi");
                hoKhau = new HoKhau(maHoKhauTim,chuHo,soLuongThanhVien,ngayLapHoKhau,diaChi);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return hoKhau;
    }

    @Override
    public List<String> timKiemThanhVien(String maHoKhau) {
        List<String> danhSachThanhVien = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(TIM_KIEM_THANH_VIEN_BANG_MHK);
            preparedStatement.setString(1,maHoKhau);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String hoTen = resultSet.getString("ho_ten");
                danhSachThanhVien.add(hoTen);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return danhSachThanhVien;
    }
}
