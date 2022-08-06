package repository.customer.impl;

import model.CustomerType;
import model.person.Customer;
import repository.BaseRepository;
import repository.customer.ICustomerRepository;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private final String FIND_ALL = "select * from khach_hang;";
    private final String FIND_BY_ID = "select * from khach_hang where ma_khach_hang = ?;";
    private final String FIND_ALL_CUSTOMER_TYPE = "select * from loai_khach;";
    private final String ADD_NEW_CUSTOMER = "call add_new_customer(?,?,?,?,?,?,?,?);";
    private final String UPDATE_CUSTOMER = "call update_customer(?,?,?,?,?,?,?,?,?);";
    private final String DELETE_CUSTOMER = "call delete_customer (?);";

    @Override
    public List<Customer> findAll() {
        List<Customer> customerList = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("ho_ten");
                String birthDay = resultSet.getString("ngay_sinh");
                String idCard = resultSet.getString("so_cmnd");
                String phone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int customerCode = resultSet.getInt("ma_khach_hang");
                int customerTypeCode = resultSet.getInt("ma_loai_khach");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                Customer customer = new Customer(name, birthDay, idCard, phone, email, address, customerCode, customerTypeCode, gender);
                customerList.add(customer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void add(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(ADD_NEW_CUSTOMER);
            callableStatement.setString(1, customer.getName());
            callableStatement.setString(2, customer.getBirthDay());
            callableStatement.setBoolean(3, customer.isGender());
            callableStatement.setString(4, customer.getIdCard());
            callableStatement.setString(5, customer.getPhone());
            callableStatement.setString(6, customer.getEmail());
            callableStatement.setString(7, customer.getAddress());
            callableStatement.setInt(8, customer.getCustomerTypeCode());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(DELETE_CUSTOMER);
            callableStatement.setInt(1,id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void update(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(UPDATE_CUSTOMER);
            callableStatement.setString(1, customer.getName());
            callableStatement.setString(2, customer.getBirthDay());
            callableStatement.setBoolean(3, customer.isGender());
            callableStatement.setString(4, customer.getIdCard());
            callableStatement.setString(5, customer.getPhone());
            callableStatement.setString(6, customer.getEmail());
            callableStatement.setString(7, customer.getAddress());
            callableStatement.setInt(8, customer.getCustomerTypeCode());
            callableStatement.setInt(9, customer.getCustomerCode());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Customer findById(int id) {
        Connection connection = BaseRepository.getConnectDB();
        Customer customer = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("ho_ten");
                String birthDay = resultSet.getString("ngay_sinh");
                String idCard = resultSet.getString("so_cmnd");
                String phone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int customerCode = resultSet.getInt("ma_khach_hang");
                int customerTypeCode = resultSet.getInt("ma_loai_khach");
                boolean gender = resultSet.getBoolean("gioi_tinh");
                customer = new Customer(name, birthDay, idCard, phone, email, address, customerCode, customerTypeCode, gender);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    @Override
    public List<CustomerType> showCustomerType() {
        List<CustomerType> customerTypeList = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_CUSTOMER_TYPE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int customerTypeCode = resultSet.getInt("ma_loai_khach");
                String customerType = resultSet.getString("ten_loai_khach");
                customerTypeList.add(new CustomerType(customerTypeCode, customerType));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerTypeList;
    }
}
