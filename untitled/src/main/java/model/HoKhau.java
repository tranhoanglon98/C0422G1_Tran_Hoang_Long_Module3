package model;

public class HoKhau {
    private String maHoKhau;
    private String tenChuHo;
    private int soLuongThanhVien;
    private String ngayLapHoKhau;
    private String diaChi;

    public HoKhau() {
    }

    public HoKhau(String maHoKhau, String tenChuHo, String ngayLapHoKhau, String diaChi) {
        this.maHoKhau = maHoKhau;
        this.tenChuHo = tenChuHo;
        this.ngayLapHoKhau = ngayLapHoKhau;
        this.diaChi = diaChi;
    }

    public HoKhau(String maHoKhau, String tenChuHo, int soLuongThanhVien, String ngayLapHoKhau, String diaChi) {
        this.maHoKhau = maHoKhau;
        this.tenChuHo = tenChuHo;
        this.soLuongThanhVien = soLuongThanhVien;
        this.ngayLapHoKhau = ngayLapHoKhau;
        this.diaChi = diaChi;
    }

    public String getMaHoKhau() {
        return maHoKhau;
    }

    public void setMaHoKhau(String maHoKhau) {
        this.maHoKhau = maHoKhau;
    }

    public String getTenChuHo() {
        return tenChuHo;
    }

    public void setTenChuHo(String tenChuHo) {
        this.tenChuHo = tenChuHo;
    }

    public int getSoLuongThanhVien() {
        return soLuongThanhVien;
    }

    public void setSoLuongThanhVien(int soLuongThanhVien) {
        this.soLuongThanhVien = soLuongThanhVien;
    }

    public String getNgayLapHoKhau() {
        return ngayLapHoKhau;
    }

    public void setNgayLapHoKhau(String ngayLapHoKhau) {
        this.ngayLapHoKhau = ngayLapHoKhau;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
}
