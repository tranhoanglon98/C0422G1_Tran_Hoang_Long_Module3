package repository.impl;

import model.Lesson;
import model.Level;
import model.Module;
import repository.BaseRepository;
import repository.IRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class Repository implements IRepository {
    private String FIND_ALL_LESSON = "select * from lesson;";
    private String FIND_ALL_LEVEL = "select * from `level`;";
    private String FIND_ALL_MODULE = "select * from module;";
    private String DELETE = "delete from lesson where lesson_id = ?; ";


    @Override
    public List<Lesson> findAll() {
        List<Lesson> lessonList = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_LESSON);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String id = resultSet.getString("lesson_id");
                String title = resultSet.getString("title");
                String type = resultSet.getString("type_lesson");
                String levelId = resultSet.getString("level_id");
                String link = resultSet.getString("link");
                String module = resultSet.getString("module_id");
                lessonList.add(new Lesson(id,title,type,levelId,link,module));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lessonList;
    }

    @Override
    public boolean delete(int id) {
        boolean result = false;
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,id);
             result = preparedStatement.executeUpdate() >0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Level> findAllLevel() {
        List<Level> levelList = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_LEVEL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String id = resultSet.getString("id");
                String name = resultSet.getString("level_name");

                levelList.add(new Level(id,name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return levelList;
    }

    @Override
    public List<Module> findAllModule() {
        List<Module> moduleList = new LinkedList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_MODULE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String id = resultSet.getString("id");
                String code = resultSet.getString("module_code");

                moduleList.add(new Module(id,code));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return moduleList;
    }


}
