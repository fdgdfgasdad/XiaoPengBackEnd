package com.exam.service;

import com.exam.mapper.*;
import com.exam.pojo.Choice;
import com.exam.pojo.Exampaper;
import com.exam.pojo.Question;
import com.exam.pojo.User;
import com.exam.result.Result;
import com.exam.result.ResultCode;
import com.exam.util.JwtUtil;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


@Slf4j
@Service
public class UserService {

    @Autowired
    UserMapper userMapper;

    @Autowired
    ExampaperMapper exampaperMapper;

    @Autowired
    QuestionMapper questionMapper;

    @Autowired
    ChoiceMapper choiceMapper;

    @Autowired
    PaperGradeMapper paperGradeMapper;

    @Autowired
    ArticleMapper articleMapper;


    /**
     *
     * @param user 要注册的封装的User对象
     * @return Result
     */
    public Result register(User user) {
        if ("".equals(user.getUsername())) {
            return Result.failure(ResultCode.NULL_USERNAME);
        }
        if ("".equals(user.getPassword())) {
            return Result.failure(ResultCode.NULL_PASSWORD);
        }

        Integer uid = userMapper.getUidByUsername(user.getUsername());
        if (uid != null) {
            return Result.failure(ResultCode.EXIST_USERNAME);
        }
        userMapper.saveUser(user);

        return Result.success();
    }

    /**
     *
     * @param user 要登录的封装的User对象
     * @return Result
     */
    public Result login(User user) {
        Integer uid = userMapper.getUidByUsername(user.getUsername());
        if (uid != null) {
            String existUserPwd = userMapper.getPasswordByUid(uid);
            if (existUserPwd.equals(user.getPassword())) {
                String token = JwtUtil.sign(user.getUsername());

                HashMap<String, String> map = new HashMap<>();
                map.put("uid",uid.toString());
                map.put("token",token);

                Result result = Result.success();
                result.setData(map);
                return result;
            } else {
                return Result.failure(ResultCode.WRONG_PASSWORD);
            }
        } else {
            return Result.failure(ResultCode.NONEXISTENT_USERNAME);
        }
    }

    public Result setPassWord(Integer uid, String password){
        User userByUid = userMapper.getUserByUid(uid);
        if (userByUid == null)
            return Result.failure(ResultCode.NULL_UID);
        if ("".equals(password))
        {
            return Result.failure(ResultCode.NULL_PASSWORD);
        }
        userByUid.setPassword(password);
        userMapper.setPassword(userByUid);
        return Result.success();
    }


    public Result getAllPapers(Integer page, Integer uid) {
        User userByUid = userMapper.getUserByUid(uid);
        if (userByUid == null)
            return Result.failure(ResultCode.NULL_UID);

        PageHelper.startPage(page,10);
        List<Exampaper> exampapers = exampaperMapper.getAllExampaper();
        PageInfo<Exampaper> pageInfo = new PageInfo<>(exampapers, 3);
        Result result = Result.success();
        result.setData(pageInfo);
        return result;

    }

    public Result getSingleQuestion(Integer page, Integer pid) {
        List<Question> singleChoiceQuestionsByPid = questionMapper.getSingleChoiceQuestionsByPid(pid);
        HashMap<Integer, List<Choice>> map = new HashMap<>();
        for (Question question: singleChoiceQuestionsByPid)
        {
            List<Choice> choiceByQid = choiceMapper.getChoiceByQid(question.getQid());
            map.put(question.getQid(), choiceByQid);
        }
        Result result = Result.success();
        result.setData(map);
        return  result;

    }

    public Result getAnswerQuestion(Integer page, Integer pid) {
        PageHelper.startPage(page,10);
        List<Question> answerQuestionByPid = questionMapper.getAnswerQuestionByPid(pid);
        PageInfo<Question> pageInfo = new PageInfo<>(answerQuestionByPid, 3);
        Result result = Result.success();
        result.setData(pageInfo);
        return result;
    }

    //新增
    public Result getSubjectiveQuestionList(Integer number) {
        List<Question> questionList = new ArrayList<>();
        for (int i = 0; i < number; i++)
        {
            Random r = new Random();
            Integer qid = r.nextInt(11) + 300;
            Question question = questionMapper.getSubjectiveQuestionsByID(qid);
            questionList.add(question);
        }
        Result result = Result.success();
        result.setData(questionList);
        return result;
    }

    public Result getTitle(String type) {
        List<String> titleList = articleMapper.getArticleTitleByType(type);
        Result result = Result.success();
        result.setData(titleList);
        return result;
    }

    public Result getContent(String title) {
        String content = articleMapper.getArticleContentByTitle(title);
        Result result = Result.success();
        result.setData(content);
        return result;
    }

    public Result getGrade(Object object) {


        Result result = Result.success();

        return result;
    }
}
