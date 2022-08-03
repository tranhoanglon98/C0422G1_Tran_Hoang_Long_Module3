package repository;

import model.User;

import java.util.List;

public interface IUserRepository {

    List<User> findAll();

    void addNewUser( User user);

    void editUser( User user);

    void deleteUser(int id);

    List<User> findByCountry(String searchCountry);

    List<User> sortByName();

    User findById(int id);

    void addUserTransaction();

}
