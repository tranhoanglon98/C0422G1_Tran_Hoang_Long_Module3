package service;

import model.Lesson;
import model.Level;
import model.Module;

import java.util.List;

public interface IService {

    List<Lesson> findAll();

    List<Level> findAllLevel();

    List<Module> findAllModule();

    boolean delete(int id);
}
