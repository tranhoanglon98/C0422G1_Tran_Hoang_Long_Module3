package service.impl;

import model.HoKhau;
import model.ThanhVien;
import repository.IRepository;
import repository.imp.Repository;
import service.IService;

import java.util.List;

public class Service implements IService {
    private IRepository repository = new Repository();

    @Override
    public List<HoKhau> timKiemTatCaHoKhau() {
        return repository.timKiemTatCaHoKhau();
    }

    @Override
    public List<ThanhVien> timKiemTatCaThanhVien() {
        return repository.timKiemTatCaThanhVien();
    }

    @Override
    public boolean chinhSuaHoKhau(HoKhau hoKhau) {
        return repository.chinhSuaHoKhau(hoKhau);
    }

    @Override
    public HoKhau timKiemBangMaHoKhau(String maHoKhau) {
        return repository.timKiemBangMaHoKhau(maHoKhau);
    }

    @Override
    public List<String> timKiemThanhVien(String maHoKhau) {
        return repository.timKiemThanhVien(maHoKhau);
    }
}
