package com.exam.pojo;

public class Exampaper {

    private Integer pid;
    private String description;
    private String name;


    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Exampaper{" +
                "pid=" + pid +
                ", description='" + description + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
