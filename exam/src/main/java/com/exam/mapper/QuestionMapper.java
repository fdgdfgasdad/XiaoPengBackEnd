package com.exam.mapper;

import com.exam.pojo.Question;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface QuestionMapper {

    @Insert("insert into exam.question (qid, pid, content, type, answer) " +
            "values (#{question.qid}, #{question.pid}, #{question.content}, #{question.type}, #{question.answer})")
    @Options(useGeneratedKeys = true, keyProperty = "qid")
    Integer saveQuestion(@Param("question") Question question);

    @Select("select * from exam.question where pid = #{pid} and type = '单选'")
    List<Question> getSingleChoiceQuestionsByPid(@Param("pid") Integer pid);

    @Select("select * from exam.question where pid = #{pid} and type != '单选'")
    List<Question> getAnswerQuestionByPid(@Param("pid") Integer pid);

    @Select("select answer from exam.question where qid = #{qid}")
    String getAnswerByQid(@Param("qid") Integer qid);

    //新增
    @Select("select * from exam.question where type = '问答'")
    List<Question> getSubjectiveQuestions();

    @Select("select * from exam.question where type = '问答' and qid = #{qid}")
    Question getSubjectiveQuestionsByID(@Param("qid") Integer qid);

    @Select("select * from exam.question where type = '单选'")
    List<Question> getSelectiveQuestions();

    @Select("select * from exam.question where type = '单选' and qid = #{qid}")
    Question getSelectiveQuestionsByID(@Param("qid") Integer qid);

}
