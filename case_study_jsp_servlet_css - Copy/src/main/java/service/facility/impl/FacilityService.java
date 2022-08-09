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
        Map<String, String> errMap = this.validate(facility);
        if (errMap.isEmpty()) {
            facilityRepository.addNewFacility(facility);
        }
        return errMap;
    }

    @Override
    public Map<String, String> updateFacility(Facility facility) {
        Map<String, String> errMap = this.validate(facility);
        if (errMap.isEmpty()) {
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
        return facilityRepository.findByNameAndId(id, name);
    }

    public Map<String, String> validate(Facility facility) {
        Map<String, String> errMap = new HashMap<>();

        if (!facility.getCost().isEmpty()) {
            try {
                if (Double.parseDouble(facility.getCost()) < 0) {
                    errMap.put("costErr", "Costs cannot be negative");
                }
            } catch (Exception e) {
                errMap.put("costErr", "Please input right format");
            }
        } else {
            errMap.put("costErr", "Please input cost");
        }

        if (!facility.getArea().isEmpty()) {
            try {
                if (Integer.parseInt(facility.getArea()) < 0) {
                    errMap.put("areaErr", "Area cannot be negative");
                }
            } catch (Exception e) {
                errMap.put("areaErr", "Please input right format");
            }
        } else {
            errMap.put("areaErr", "Please input area");
        }

        if (facility.getFacilityTypeId().equals("1")) {
            if (!facility.getPoolArea().isEmpty()) {
                try {
                    if (Double.parseDouble(facility.getPoolArea()) < 0) {
                        errMap.put("poolErr", "Pool area cannot be negative");
                    }
                } catch (Exception e) {
                    errMap.put("poolErr", "Please input right format");
                }
            } else {
                errMap.put("poolErr", "Please input pool area");
            }
        }else {
            facility.setPoolArea("0");
        }

        if (!facility.getFacilityTypeId().equals("3")) {
            if (!facility.getFloors().isEmpty()) {
                try {
                    if (Integer.parseInt(facility.getFloors()) < 0 || !facility.getFloors().matches("^[0-9]*$")) {
                        errMap.put("floorErr", "Number of floor must be an positive ");
                    }
                } catch (Exception e) {
                    errMap.put("floorErr", "Please input right format");
                }
            } else {
                errMap.put("floorErr", "Please input number of floors");
            }
        }else {
            facility.setFloors("0");
        }

        if (!facility.getMaxPeople().isEmpty()) {
            try {
                if (Integer.parseInt(facility.getMaxPeople()) < 0 || !facility.getMaxPeople().matches("^[0-9]*$")) {
                    errMap.put("maxPeopleErr", "Max people must be an positive ");
                }
            } catch (Exception e) {
                errMap.put("maxPeopleErr", "Please input right format");
            }
        } else {
            errMap.put("maxPeopleErr", "Please input number of max people");
        }

        if (!facility.getName().isEmpty()) {
            if (!facility.getName().matches("(^[A-Z0-9][a-z0-9]+)( [A-Z0-9][a-z0-9]+)*$")) {
                errMap.put("nameErr", "Please input right format");
            }
        } else {
            errMap.put("nameErr", "Please input service name");
        }

        return errMap;
    }
}
