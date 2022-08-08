package service.facility;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;

import java.util.List;

public interface IFacilityService {
    List<Facility> findAll();

    void addNewFacility(Facility facility);

    void updateFacility(Facility facility);

    void deleteFacility(int id);

    Facility findById(int id);

    List<FacilityType> showFacilityType();

    List<RentType> showRentType();

    List<Facility> findByNameAndId(String id,String name);
}
