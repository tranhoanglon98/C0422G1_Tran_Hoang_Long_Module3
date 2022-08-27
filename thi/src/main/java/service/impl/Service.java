package service.impl;

import model.Lesson;
import model.Level;
import model.Module;
import repository.IRepository;
import repository.impl.Repository;
import service.IService;
import java.util.List;

public class Service implements IService {
    private IRepository repository = new Repository();

    @Override
    public List<Lesson> findAll() {
        return repository.findAll();
    }

    @Override
    public List<Level> findAllLevel() {
        return repository.findAllLevel();
    }

    @Override
    public List<Module> findAllModule() {
        return repository.findAllModule();
    }

    @Override
    public boolean delete(int id) {
        return repository.delete(id);
    }
}
