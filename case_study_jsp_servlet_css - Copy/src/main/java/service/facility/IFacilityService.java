package service.facility;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;

import java.util.List;
import java.util.Map;

public interface IFacilityService {
    List<Facility> findAll();

    Map<String, String> addNewFacility(Facility facility);

    Map<String, String> updateFacility(Facility facility);

    void deleteFacility(int id);

    Facility findById(int id);

    List<FacilityType> showFacilityType();

    List<RentType> showRentType();

    List<Facility> findByNameAndId(String id,String name);
}
