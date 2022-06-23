package com.exam.mapper;

import com.exam.pojo.PaperGrade;

import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PaperGradeMapper {

    @Insert("insert into exam.papergrade (rid, all_count, grade, wrong_count, pid, uid) " +
            "values (#{paperGrade.rid}, #{paperGrade.allCount}, #{paperGrade.grade}, #{paperGrade.wrongCount}, #{paperGrade.pid}, #{paperGrade.uid})")
    @Options(useGeneratedKeys = true, keyProperty = "rid")
    Integer savePaperGrade(@Param("paperGrade")PaperGrade paperGrade);

    @Select("select * from exam.papergrade where uid = #{uid}")
    List<PaperGrade> getPaperGradeByUid(@Param("uid") Integer uid);
}