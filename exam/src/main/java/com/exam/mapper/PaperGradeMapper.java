package com.exam.mapper;

import com.exam.pojo.PaperGrade;

import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface PaperGradeMapper {

    @Insert("insert into exam.papergrade (rid, intelligibility, integrity, logicality, accuracy, score, pid, uid) " +
            "values (#{paperGrade.rid}, #{paperGrade.intelligibility}, #{paperGrade.integrity}, #{paperGrade.logicality}, #{paperGrade.accuracy}, #{paperGrade.score}, #{paperGrade.pid}, #{paperGrade.uid})")
    @Options(useGeneratedKeys = true, keyProperty = "rid")
    Integer savePaperGrade(@Param("paperGrade")PaperGrade paperGrade);

    @Select("select * from exam.papergrade where uid = #{uid} and pid = #{pid}")
    PaperGrade getPaperGradeByUidPid(@Param("uid") Integer uid, @Param("pid") Integer pid);

    @Select("select * from exam.papergrade where uid = #{uid}")
    List<PaperGrade> getPaperGradeByUid(@Param("uid") Integer uid);

    @Update("update exam.papergrade set intelligibility = #{paperGrade.intelligibility}, integrity = #{paperGrade.integrity}, logicality = #{paperGrade.logicality}, accuracy = #{paperGrade.accuracy}, score = #{paperGrade.score} where rid = #{paperGrade.rid}")
    Integer updatePaperGrade(@Param("paperGrade") PaperGrade paperGrade);

    @Select("select count(*) from exam.papergrade where uid = #{uid}")
    Integer getPid(@Param("uid") Integer uid);

    @Select("select * from exam.papergrade where uid = #{uid} order by rid desc limit 5;")
    List<PaperGrade> getRecentGrade(@Param("uid") Integer uid);


}
