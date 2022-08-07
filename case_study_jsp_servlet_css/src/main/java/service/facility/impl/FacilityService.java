package service.facility.impl;

import model.facility.Facility;
import model.facility.FacilityType;
import model.facility.RentType;
import model.person.Customer;
import repository.facility.IFacilityRepository;
import repository.facility.impl.FacilityRepository;
import service.facility.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    private IFacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public List<Facility> findAll() {
        return facilityRepository.findAll();
    }

    @Override
    public void addNewFacility(Facility facility) {
        facilityRepository.addNewFacility(facility);
    }

    @Override
    public void updateFacility(Facility facility) {
        facilityRepository.updateFacility(facility);
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

}
