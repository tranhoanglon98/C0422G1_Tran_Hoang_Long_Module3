package model;

public class CustomerType {
    private int customerTypeCode;
    private String customerType;

    public CustomerType() {
    }

    public CustomerType(int customerTypeCode, String customerType) {
        this.customerTypeCode = customerTypeCode;
        this.customerType = customerType;
    }

    public int getCustomerTypeCode() {
        return customerTypeCode;
    }

    public void setCustomerTypeCode(int customerTypeCode) {
        this.customerTypeCode = customerTypeCode;
    }

    public String getCustomerType() {
        return customerType;
    }

    public void setCustomerType(String customerType) {
        this.customerType = customerType;
    }
}
