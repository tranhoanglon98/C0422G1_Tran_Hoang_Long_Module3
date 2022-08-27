package model;

public class ThanhVien {
    private String chung_minh_nhan_dan;
    private String ho_ten;
    private String ngay_sinh;
    private String ma_ho_khau;

    public ThanhVien() {
    }

    public ThanhVien(String chung_minh_nhan_dan, String ho_ten, String ngay_sinh, String ma_ho_khau) {
        this.chung_minh_nhan_dan = chung_minh_nhan_dan;
        this.ho_ten = ho_ten;
        this.ngay_sinh = ngay_sinh;
        this.ma_ho_khau = ma_ho_khau;
    }

    public String getChung_minh_nhan_dan() {
        return chung_minh_nhan_dan;
    }

    public void setChung_minh_nhan_dan(String chung_minh_nhan_dan) {
        this.chung_minh_nhan_dan = chung_minh_nhan_dan;
    }

    public String getHo_ten() {
        return ho_ten;
    }

    public void setHo_ten(String ho_ten) {
        this.ho_ten = ho_ten;
    }

    public String getNgay_sinh() {
        return ngay_sinh;
    }

    public void setNgay_sinh(String ngay_sinh) {
        this.ngay_sinh = ngay_sinh;
    }

    public String getMa_ho_khau() {
        return ma_ho_khau;
    }

    public void setMa_ho_khau(String ma_ho_khau) {
        this.ma_ho_khau = ma_ho_khau;
    }
}
