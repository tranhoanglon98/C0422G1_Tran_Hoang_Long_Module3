package model.person;

public class Employee extends Person{
    private int employeeCode;
    private double salary;
    private int positionCode;
    private int educationDegreeCode;
    private int division;
    private String userName;

    public Employee() {
    }

    public Employee(String name, String birthDay, String idCard, String phone, String email, String address, int employeeCode, double salary, int positionCode, int educationDegreeCode, int division, String userName) {
        super(name, birthDay, idCard, phone, email, address);
        this.employeeCode = employeeCode;
        this.salary = salary;
        this.positionCode = positionCode;
        this.educationDegreeCode = educationDegreeCode;
        this.division = division;
        this.userName = userName;
    }

    public int getEmployeeCode() {
        return employeeCode;
    }

    public void setEmployeeCode(int employeeCode) {
        this.employeeCode = employeeCode;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public int getPositionCode() {
        return positionCode;
    }

    public void setPositionCode(int positionCode) {
        this.positionCode = positionCode;
    }

    public int getEducationDegreeCode() {
        return educationDegreeCode;
    }

    public void setEducationDegreeCode(int educationDegreeCode) {
        this.educationDegreeCode = educationDegreeCode;
    }

    public int getDivision() {
        return division;
    }

    public void setDivision(int division) {
        this.division = division;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
