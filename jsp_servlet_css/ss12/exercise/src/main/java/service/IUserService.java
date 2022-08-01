package service;

import model.User;

import java.util.List;

public interface IUserService {

    List<User> findAll();

    void addNewUser(User user);

    void editUser(User user);

    void deleteUser(int id);

    List<User> findByCountry(String country);

    List<User> sortByName();

    User findById(int id);
}
