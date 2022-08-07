package model.facility;

public class RentType {
    private int rentId;
    private String  rentTypeName;

    public RentType() {
    }

    public RentType(int rentId, String rentTypeName) {
        this.rentId = rentId;
        this.rentTypeName = rentTypeName;
    }

    public int getRentId() {
        return rentId;
    }

    public void setRentId(int rentId) {
        this.rentId = rentId;
    }

    public String getRentTypeName() {
        return rentTypeName;
    }

    public void setRentTypeName(String rentTypeName) {
        this.rentTypeName = rentTypeName;
    }
}
