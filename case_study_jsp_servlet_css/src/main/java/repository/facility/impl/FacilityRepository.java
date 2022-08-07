package repository.facility.impl;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;
import repository.BaseRepository;
import repository.facility.IFacilityRepository;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {
    private String FIND_ALL = "select * from dich_vu;";
    private String FIND_ALL_FACILITY_TYPE = "select * from loai_dich_vu;";
    private String FIND_ALL_RENTAL_TYPE = "select * from kieu_thue;";
    private String ADD_NEW_FACILITY = "call add_facility(?,?,?,?,?,?,?,?,?,?,?);";
    private String DELETE_FACILITY = "delete from dich_vu where ma_dich_vu = ?;";
    private String FIND_BY_ID = "select * from dich_vu where ma_dich_vu = ?;";
    private String UPDATE_FACILITY = "call update_facility(?,?,?,?,?,?,?,?,?,?,?,?);";


    @Override
    public List<Facility> findAll() {
        List<Facility> facilityList = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("ma_dich_vu");
                String name = resultSet.getString("ten_dich_vu");
                int area = resultSet.getInt("dien_tich");
                double cost = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int facilityTypeCode = resultSet.getInt("ma_loai_dich_vu");
                String roomStandard = resultSet.getString("tieu_chuan_phong");
                String otherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int floors = resultSet.getInt("so_tang");
                String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                facilityList.add(new Facility(id,name,area,cost,maxPeople,rentTypeId,facilityTypeCode,roomStandard,
                        otherConvenience,poolArea,floors,facilityFree));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityList;
    }

    @Override
    public void addNewFacility(Facility facility) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(ADD_NEW_FACILITY);
            callableStatement.setString(1,facility.getName());
            callableStatement.setInt(2,facility.getArea());
            callableStatement.setDouble(3,facility.getCost());
            callableStatement.setInt(4,facility.getMaxPeople());
            callableStatement.setString(5,facility.getStandard());
            callableStatement.setString(6,facility.getOtherConvenience());
            callableStatement.setDouble(7,facility.getPoolArea());
            callableStatement.setInt(8,facility.getFloors());
            callableStatement.setString(9,facility.getFacilityFree());
            callableStatement.setInt(10,facility.getRentTypeId());
            callableStatement.setInt(11,facility.getFacilityTypeId());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void updateFacility(Facility facility) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(UPDATE_FACILITY);
            callableStatement.setString(1,facility.getName());
            callableStatement.setInt(2,facility.getArea());
            callableStatement.setDouble(3,facility.getCost());
            callableStatement.setInt(4,facility.getMaxPeople());
            callableStatement.setString(5,facility.getStandard());
            callableStatement.setString(6,facility.getOtherConvenience());
            callableStatement.setDouble(7,facility.getPoolArea());
            callableStatement.setInt(8,facility.getFloors());
            callableStatement.setString(9,facility.getFacilityFree());
            callableStatement.setInt(10,facility.getRentTypeId());
            callableStatement.setInt(11,facility.getFacilityTypeId());
            callableStatement.setInt(12,facility.getId());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteFacility(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_FACILITY);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Facility findById(int id) {
        Facility facility = null;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int facilityCode = resultSet.getInt("ma_dich_vu");
                String name = resultSet.getString("ten_dich_vu");
                int area = resultSet.getInt("dien_tich");
                double cost = resultSet.getDouble("chi_phi_thue");
                int maxPeople = resultSet.getInt("so_nguoi_toi_da");
                int rentTypeId = resultSet.getInt("ma_kieu_thue");
                int facilityTypeCode = resultSet.getInt("ma_loai_dich_vu");
                String roomStandard = resultSet.getString("tieu_chuan_phong");
                String otherConvenience = resultSet.getString("mo_ta_tien_nghi_khac");
                double poolArea = resultSet.getDouble("dien_tich_ho_boi");
                int floors = resultSet.getInt("so_tang");
                String facilityFree = resultSet.getString("dich_vu_mien_phi_di_kem");
                facility = new Facility(facilityCode,name,area,cost,maxPeople,rentTypeId,facilityTypeCode,roomStandard,otherConvenience,poolArea,floors,facilityFree);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facility;
    }

    @Override
    public List<FacilityType> showFacilityType() {
        List<FacilityType> facilityTypeList = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_FACILITY_TYPE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("ma_loai_dich_vu");
                String name = resultSet.getString("ten_loai_dich_vu");
                facilityTypeList.add(new FacilityType(id,name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityTypeList;
    }

    @Override
    public List<RentType> showRentType() {
        List<RentType> rentTypeList = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_RENTAL_TYPE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("ma_kieu_thue");
                String name = resultSet.getString("ten_kieu_thue");
                rentTypeList.add(new RentType(id,name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rentTypeList;
    }

    @Override
    public List<Facility> findByNameAndId() {
        return null;
    }
}
