package model;

public class Lesson {
    private String id;
    private String title;
    private String type;
    private String level;
    private String module;
    private String link;

    public Lesson() {
    }

    public Lesson(String id, String title, String type, String level, String module, String link) {
        this.id = id;
        this.title = title;
        this.type = type;
        this.level = level;
        this.module = module;
        this.link = link;
    }

    public Lesson(String title, String type, String level, String module, String link) {
        this.title = title;
        this.type = type;
        this.level = level;
        this.module = module;
        this.link = link;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
