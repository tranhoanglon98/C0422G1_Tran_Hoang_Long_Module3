package service.facility.impl;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;
import model.person.Customer;
import repository.facility.IFacilityRepository;
import repository.facility.impl.FacilityRepository;
import service.facility.IFacilityService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FacilityService implements IFacilityService {
    private IFacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public List<Facility> findAll() {
        return facilityRepository.findAll();
    }

    @Override
    public Map<String, String> addNewFacility(Facility facility) {
        Map<String,String> errMap = this.validate(facility);
        if (errMap.isEmpty()){
            facilityRepository.addNewFacility(facility);
        }
     return errMap;
    }

    @Override
    public Map<String, String> updateFacility(Facility facility) {
        Map<String,String> errMap = this.validate(facility);
        if (errMap.isEmpty()){
            facilityRepository.updateFacility(facility);
        }
        return errMap;
    }

    @Override
    public void deleteFacility(int id) {
        facilityRepository.deleteFacility(id);
    }

    @Override
    public Facility findById(int id) {
        return facilityRepository.findById(id);
    }

    @Override
    public List<FacilityType> showFacilityType() {
        return facilityRepository.showFacilityType();
    }

    @Override
    public List<RentType> showRentType() {
        return facilityRepository.showRentType();
    }

    @Override
    public List<Facility> findByNameAndId(String id, String name) {
        return facilityRepository.findByNameAndId(id,name);
    }

    public Map<String, String> validate(Facility facility){
        Map<String, String> errMap = new HashMap<>();

        if (facility.getCost()<0){
            errMap.put("costErr","Costs cannot be negative");
        }

        if (facility.getArea()<0){
            errMap.put("areaErr","Area cannot be negative");
        }

        if (facility.getPoolArea()<0){
            errMap.put("poolErr","Pool area cannot be negative");
        }

        if (facility.getFloors()<0||facility.getFloors()%1 != 0){
            errMap.put("floorErr","Number of floors must be an integer");
        }

        if (facility.getMaxPeople()<0 || facility.getMaxPeople()%1 != 0){
            errMap.put("maxPeople","Max people must be an integer");
        }

        if (!facility.getName().isEmpty()){
            if (!facility.getName().matches("(^[A-Z][a-z0-9]+)( [A-Z][a-z0-9]+)*$")){
                errMap.put("nameErr","Please input right format");
            }
        }else {
            errMap.put("nameErr","Please input service name");
        }

        return errMap;
    }
}
