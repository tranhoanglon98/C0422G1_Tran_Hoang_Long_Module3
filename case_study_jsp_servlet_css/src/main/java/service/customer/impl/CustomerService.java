package service.customer.impl;

import model.CustomerType;
import model.person.Customer;
import repository.customer.ICustomerRepository;
import repository.customer.impl.CustomerRepository;
import service.customer.ICustomerService;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
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
        Map<String,String> errMap = this.validate(customer);
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
    public Map<String, String> update(Customer customer) {
        Map<String,String> errMap = this.validate(customer);

        if (errMap.isEmpty()){
            customerRepository.update(customer);
        }

        return errMap;
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


    public Map<String, String> validate(Customer customer){
        Map<String,String> errMap = new HashMap<>();
        if (!customer.getName().isEmpty()){
            if (!customer.getName().matches("^[A-ZĐ][a-zỳọáầảấờễàạằệếýộậốũứĩõúữịỗìềểẩớặòùồợãụủíỹắẫựỉỏừỷởóéửỵẳẹèẽổẵẻỡơôưăêâ]+" +
                    "( [A-ZĐ][a-zỳọáầảấờễàạằệếýộậốũứĩõúữịỗìềểẩớặòùồợãụủíỹắẫựỉỏừỷởóéửỵẳẹèẽổẵẻỡơôưăêâ]*)*$")){
                errMap.put("nameErr","Please input right format!");
            }
        }else {
            errMap.put("nameErr","Please input name");
        }

        if (!customer.getIdCard().isEmpty()){
            if (!customer.getIdCard().matches("^[0-9]{9}|[0-9]{12}$")){
                errMap.put("idErr","Please input right format!");
            }
        }else {
            errMap.put("idErr","please input idCard");
        }

        if (!customer.getPhone().isEmpty()){
            if (!customer.getPhone().matches("^((090)|(091)|(\\(84\\)+90)|(\\(84\\)+91))[0-9]{7}$")){
                errMap.put("phoneErr","Please input right format!");
            }
        }else {
            errMap.put("phoneErr","please input phone");
        }

        if (!customer.getEmail().isEmpty()){
            if (!customer.getEmail().matches("^[a-z0-9]+@[a-z0-9]+\\.[a-z]+$")){
                errMap.put("emailErr","Please input right format!");
            }
        }else {
            errMap.put("emailErr","please input email");
        }

        if ((!customer.getBirthDay().isEmpty())){
            try {
                LocalDate birthDay = LocalDate.parse(customer.getBirthDay(),DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            }catch (Exception e){
                errMap.put("birthdayErr","Please input right format!");
            }
        }else {
            errMap.put("birthdayErr","please input birthday");
        }

        return errMap;
    }

}
