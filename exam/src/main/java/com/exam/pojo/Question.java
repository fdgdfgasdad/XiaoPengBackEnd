package com.exam.pojo;

public class Question {

    private Integer qid;
    private Integer pid;
    private String content;
    private String type;
    private String answer;



    public Integer getQid() {
        return qid;
    }

    public void setQid(Integer qid) {
        this.qid = qid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "Question{" +
                "qid=" + qid +
                ", pid=" + pid +
                ", content='" + content + '\'' +
                ", type='" + type + '\'' +
                ", answer='" + answer + '\'' +
                '}';
    }
}
