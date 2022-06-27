package com.exam.pojo;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class PaperGrade {

    private Integer rid;
    private Double intelligibility;
    private Double integrity;
    private Double logicality;
    private Double accuracy;
    private Double score;
    private Integer pid;
    private Integer uid;

;

}
