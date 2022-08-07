package service.customer;

import model.CustomerType;
import model.person.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();

    void add(Customer customer);

    void delete(int id);

    void update(Customer customer);
    Customer findById(int id);

    List<CustomerType> showCustomerType();

    List<Customer> findByNameAndCode(String name, String code);
}
