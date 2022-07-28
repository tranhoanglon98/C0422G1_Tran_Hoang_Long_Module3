package model;

public class Customer {
   private String name;
   private String dayOfBirth;
   private String address;
   private String avatar;

    public Customer() {
    }

    public Customer(String name, String dayOfBirth, String address, String avatar) {
        this.name = name;
        this.dayOfBirth = dayOfBirth;
        this.address = address;
        this.avatar = avatar;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDayOfBirth() {
        return dayOfBirth;
    }

    public void setDayOfBirth(String dayOfBirth) {
        this.dayOfBirth = dayOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
