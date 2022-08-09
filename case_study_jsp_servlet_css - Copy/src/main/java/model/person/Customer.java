package model.person;

public class Customer extends Person{
    private int customerCode;
    private int customerTypeCode;
    private boolean gender;

    public Customer() {
    }

    public Customer(String name, String birthDay, String idCard, String phone, String email, String address, int customerCode, int customerTypeCode, boolean gender) {
        super(name, birthDay, idCard, phone, email, address);
        this.customerCode = customerCode;
        this.customerTypeCode = customerTypeCode;
        this.gender = gender;
    }

    public Customer(String name, String birthDay, String idCard, String phone, String email, String address, int customerTypeCode, boolean gender) {
        super(name, birthDay, idCard, phone, email, address);
        this.customerTypeCode = customerTypeCode;
        this.gender = gender;
    }

    public int getCustomerCode() {
        return customerCode;
    }

    public void setCustomerCode(int customerCode) {
        this.customerCode = customerCode;
    }

    public int getCustomerTypeCode() {
        return customerTypeCode;
    }

    public void setCustomerTypeCode(int customerTypeCode) {
        this.customerTypeCode = customerTypeCode;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }
}
