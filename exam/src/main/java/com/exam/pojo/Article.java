package com.exam.pojo;

import lombok.Data;

@Data
public class Article {
    private Integer aid;
    private Integer pid;
    private String title;
    private String content;
    private String type;
}
