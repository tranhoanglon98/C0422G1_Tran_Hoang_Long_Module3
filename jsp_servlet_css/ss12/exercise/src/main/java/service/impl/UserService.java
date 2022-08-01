package service.impl;

import model.User;
import repository.IUserRepository;
import repository.impl.UserRepository;
import service.IUserService;

import java.util.List;

public class UserService implements IUserService {
    private static IUserRepository userRepository = new UserRepository();

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
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
}
