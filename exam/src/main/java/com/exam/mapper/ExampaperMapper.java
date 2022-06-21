package com.exam.mapper;


import com.exam.pojo.Exampaper;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ExampaperMapper {

    @Insert("insert into exam.exampaper (pid, description, name) " +
            "values (#{exampaper.pid}, #{exampaper.description}, #{exampaper.name})")
    @Options(useGeneratedKeys = true, keyProperty = "pid")
    Integer saveExampaper(@Param("exampaper")Exampaper exampaper);

    @Select("select * from exam.exampaper")
    List<Exampaper> getAllExampaper();
}
