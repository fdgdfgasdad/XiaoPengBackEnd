package com.exam.service;

import com.exam.mapper.*;
import com.exam.pojo.*;
import com.exam.result.Result;
import com.exam.result.ResultCode;
import com.exam.util.JwtUtil;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.*;
import java.nio.charset.Charset;
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
    public Result getQuestionList(Integer selNum, Integer subNum) {
        List<QuestionResult> questionList = new ArrayList<>();
        Random r = new Random();
        for (int i = 0; i < selNum; i++)
        {
            Integer qid = r.nextInt(5) + 1;
            Question question = questionMapper.getSelectiveQuestionsByID(qid);
            QuestionResult questionResult = new QuestionResult();
            questionResult.createQuestion(question);
            questionResult.setChoices(choiceMapper.getChoiceByQid(question.getQid()));
            questionList.add(questionResult);
        }
        for (int i = 0; i < subNum; i++)
        {
            Integer qid = r.nextInt(11) + 300;
            Question question = questionMapper.getSubjectiveQuestionsByID(qid);
            QuestionResult questionResult = new QuestionResult();
            questionResult.createQuestion(question);
            questionResult.setChoices(null);
            questionList.add(questionResult);
        }
        Result result = Result.success();
        result.setData(questionList);
        return result;
    }

    // 根据类型获取文章题目
    public Result getTitle(String type) {
        List<String> titleList = articleMapper.getArticleTitleByType(type);
        Result result = Result.success();
        result.setData(titleList);
        return result;
    }

    // 根据题目获取文章内容
    public Result getContent(String title) {
        String content = articleMapper.getArticleContentByTitle(title);
        Result result = Result.success();
        result.setData(content);
        return result;
    }

    public Result getGrade(Integer uid, Integer pid) {

        PaperGrade paperGradeByUidPid = paperGradeMapper.getPaperGradeByUidPid(uid, pid);
        Double grade = paperGradeByUidPid.getScore();
        Result result = Result.success();
        result.setData(grade);
        return result;
    }



    public Result getSingleGrade(String path, Integer qid, Integer uid, Integer pid) {

        String answerByQid = questionMapper.getAnswerByQid(qid);
        Result result = pyfileUpload(path, answerByQid, uid, pid);


        return result;
    }

    public Result pyfileUpload(String path, String answer, Integer uid, Integer pid)   {
        String ans = "";
        String intelligibility;
        String integrity;
        String logicality;
        String accuracy;
        String score;
        try {
            //这个方法是类似隐形开启了命令执行器，输入指令执行python脚本
            String command = "python D:\\file\\main.py" +" --aa="+ path + " --bb=" + answer;
            Process p = Runtime.getRuntime().exec(command);
            //这种方式获取返回值的方式是需要用python打印输出，然后java去获取命令行的输出，在java返回
            InputStream inStream = p.getInputStream();
            InputStreamReader inReader = new InputStreamReader(inStream,Charset.forName("GBK"));
            BufferedReader inBuffer = new BufferedReader(inReader);

            ans = inBuffer.readLine();
            intelligibility = inBuffer.readLine();
            integrity = inBuffer.readLine();
            logicality = inBuffer.readLine();
            accuracy = inBuffer.readLine();
            score = inBuffer.readLine();

            PaperGrade paperGrade = paperGradeMapper.getPaperGradeByUidPid(uid, pid);
            if (paperGrade == null)
            {
                paperGrade = new PaperGrade();
                paperGrade.setIntelligibility(Double.parseDouble(intelligibility) / 2);
                paperGrade.setIntegrity(Double.parseDouble(integrity) / 2);
                paperGrade.setLogicality(Double.parseDouble(logicality) / 2);
                paperGrade.setAccuracy(Double.parseDouble(accuracy) / 2);
                paperGrade.setScore(Double.parseDouble(score) / 2);
                paperGrade.setPid(pid);
                paperGrade.setUid(uid);
                paperGradeMapper.savePaperGrade(paperGrade);
            } else {
                paperGrade.setIntelligibility(paperGrade.getIntelligibility() + Double.parseDouble(intelligibility) / 2);
                paperGrade.setIntegrity(paperGrade.getIntegrity() + Double.parseDouble(integrity) / 2);
                paperGrade.setLogicality(paperGrade.getLogicality() + Double.parseDouble(logicality) / 2);
                paperGrade.setAccuracy(paperGrade.getAccuracy() + Double.parseDouble(accuracy) / 2);
                paperGrade.setScore(paperGrade.getScore() + Double.parseDouble(score) / 2);
                paperGradeMapper.updatePaperGrade(paperGrade);
            }
            log.info(ans);
            log.info(intelligibility);
            log.info(integrity);
            log.info(logicality);
            log.info(accuracy);
            log.info(score);

        } catch (IOException e) {
            System.out.println("调用python脚本并读取结果时出错：" + e.getMessage());
        }
        Result result = Result.success();
        result.setData(ans);
        return result;
    }
}
