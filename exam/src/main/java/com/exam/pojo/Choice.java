package com.exam.pojo;

public class Choice {

    private Integer cid;
    private Integer qid;
    private String content;
    private Boolean answer;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getQid() {
        return qid;
    }

    public void setQid(Integer qid) {
        this.qid = qid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Boolean getAnswer() {
        return answer;
    }

    public void setAnswer(Boolean answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "Choice{" +
                "cid=" + cid +
                ", qid=" + qid +
                ", content='" + content + '\'' +
                ", answer=" + answer +
                '}';
    }
}
