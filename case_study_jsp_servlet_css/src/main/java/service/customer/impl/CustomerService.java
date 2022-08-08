package service.customer.impl;

import model.CustomerType;
import model.person.Customer;
import repository.customer.ICustomerRepository;
import repository.customer.impl.CustomerRepository;
import service.customer.ICustomerService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements ICustomerService {
    private ICustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> findAll() {
        return customerRepository.findAll();
    }

    @Override
    public Map<String, String> add(Customer customer) {
        Map<String,String> errMap = new HashMap<>();
        if (!customer.getName().isEmpty()){
            if (!customer.getName().matches("[A-Z][a-z]+( [A-Z][a-z]+)*")){
                errMap.put("nameErr","Please input right format!");
            }
        }else {
            errMap.put("nameErr","Please input name");
        }

        if (!customer.getIdCard().isEmpty()){
            if (!customer.getIdCard().matches("[0-9]{9}|[0-9]{12}")){
                errMap.put("idErr","Please input right format!");
            }
        }else {
            errMap.put("idErr","please input idCard");
        }

        if (!customer.getPhone().isEmpty()){
            if (!customer.getPhone().matches("((090)|(091)|(\\(84\\)+90)|(\\(84\\)+91))[0-9]{7}")){
                errMap.put("phoneErr","Please input right format!");
            }
        }else {
            errMap.put("phoneErr","please input phone");
        }

        if (!customer.getEmail().isEmpty()){
            if (!customer.getEmail().matches("[a-z]+@[a-z]+\\.[a-z]+")){
                errMap.put("emailErr","Please input right format!");
            }
        }else {
            errMap.put("emailErr","please input email");
        }

        if ((!customer.getBirthDay().isEmpty())){
            if ((customer.getBirthDay()).matches("[0-9]{2}/[0-9]{2}/[0-9]{4}")){
                errMap.put("birthdayErr","Please input right format!");
            }
        }else {
            errMap.put("birthdayErr","please input birthday");
        }

        if (errMap.isEmpty()){
            customerRepository.add(customer);
        }

        return errMap;
    }

    @Override
    public void delete(int id) {
        customerRepository.delete(id);
    }

    @Override
    public void update(Customer customer) {
        customerRepository.update(customer);
    }

    @Override
    public Customer findById(int id) {
        return customerRepository.findById(id);
    }

    @Override
    public List<CustomerType> showCustomerType() {
        return customerRepository.showCustomerType();
    }

    @Override
    public List<Customer> findByNameAndCode(String name,String code) {
        return customerRepository.findByNameAndCode(name,code);
    }


}
