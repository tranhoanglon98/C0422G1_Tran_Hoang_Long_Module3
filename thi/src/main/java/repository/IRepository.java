package repository;

import model.Lesson;
import model.Level;
import model.Module;

import java.util.List;

public interface IRepository {

    List<Lesson> findAll();

    boolean delete(int id);

    List<Level> findAllLevel();

    List<Module> findAllModule();
}
