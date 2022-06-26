package com.exam.pojo;

import lombok.Data;

import java.util.List;

@Data
public class QuestionResult {
    Integer qid;
    String content;
    String type;
    List<Choice> choices;
    String answer;

    public void createQuestion(Question question) {
        this.qid = question.getQid();
        this.content = question.getContent();
        this.type = question.getType();
        this.answer = question.getAnswer();
        // 将问题选项放到service中赋值
    }
}
