package model;

public class Module {
    private String code;
    private String name;

    public Module(String code, String name) {
        this.code = code;
        this.name = name;
    }

    public Module() {
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
