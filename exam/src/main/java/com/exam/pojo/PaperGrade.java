package com.exam.pojo;

public class PaperGrade {

    private Integer rid;
    private Integer allCount;
    private Integer grade;
    private Integer wrongCount;
    private Integer pid;
    private Integer uid;



    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getAllCount() {
        return allCount;
    }

    public void setAllCount(Integer allCount) {
        this.allCount = allCount;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getWrongCount() {
        return wrongCount;
    }

    public void setWrongCount(Integer wrongCount) {
        this.wrongCount = wrongCount;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        return "PaperGrade{" +
                "rid=" + rid +
                ", allCount=" + allCount +
                ", grade=" + grade +
                ", wrongCount=" + wrongCount +
                ", pid=" + pid +
                ", uid=" + uid +
                '}';
    }
}
