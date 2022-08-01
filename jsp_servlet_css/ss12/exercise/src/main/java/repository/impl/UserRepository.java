package repository.impl;

import model.User;
import repository.BaseRepository;
import repository.IUserRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    private final String SELECT_ALL = "SELECT * FROM users";

    @Override
    public List<User> findAll() {
        List<User> userList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                userList.add(new User(id,name,email,country));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }

    @Override
    public void addNewUser(int id, User user) {

    }

    @Override
    public void editUser(int id, User user) {

    }

    @Override
    public void deleteUser(int id) {

    }

    @Override
    public List<User> findByCountry(String country) {
        return null;
    }

    @Override
    public List<User> sortByName() {
        return null;
    }

    public static void main(String[] args) {
        UserRepository userRepository = new UserRepository();
       List<User> a = userRepository.findAll();
    }
}
