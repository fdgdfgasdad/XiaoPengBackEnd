package com.exam.mapper;


import com.exam.pojo.Choice;

import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ChoiceMapper {

    @Insert("insert into exam.choice (cid, answer, content, qid) " +
            "values (#{choice.cid}, #{choice.answer}, #{choice.qid})")
    @Options(useGeneratedKeys = true, keyProperty = "cid")
    Integer saveChoice(@Param("choice") Choice choice);

    @Select("select * from exam.choice where qid = #{qid}")
    List<Choice> getChoiceByQid(@Param("qid") Integer qid);
}
