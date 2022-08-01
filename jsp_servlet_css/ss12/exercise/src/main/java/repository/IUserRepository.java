package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    List<User> findAll();

    void addNewUser(int id, User user);

    void editUser(int id, User user);

    void deleteUser(int id);

    List<User> findByCountry(String country);

    List<User> sortByName();
}
