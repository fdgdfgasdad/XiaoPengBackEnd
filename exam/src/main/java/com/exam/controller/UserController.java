package com.exam.controller;

import com.exam.mapper.PaperGradeMapper;
import com.exam.pojo.User;
import com.exam.result.Result;
import com.exam.result.ResultCode;
import com.exam.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Slf4j
@Controller
@ResponseBody
public class UserController {

    @Autowired
    UserService userService;

    /**
     * 注册
     * @param user 需要上传参数 (username用户名,password密码,phone电话)
     */
    @PostMapping("/register")
    public Result register(@Validated User user) {
        return userService.register(user);
    }

    /**
     * 登录
     * @param user 需要上传参数 (username用户名,password密码)
     */
    @PostMapping("/login")
    public Result login(@Validated User user) {
        return userService.login(user);


    }

    /**
     * 修改用户密码
     * @param uid 当前用户id 需要传入当前用户ID uid
     * @param password 更改的密码 需要传入当前用户密码 password
     */
    @PostMapping("/modify_password")
    public Result setPassWord(@RequestParam("uid") Integer uid, @RequestParam("password") String password){

        return userService.setPassWord(uid,password);
    }

    @GetMapping("/get_all_papers")
    public Result getAllPapers(@RequestParam("page") Integer page, @RequestParam("uid") Integer uid)
    {
        return userService.getAllPapers(page, uid);

    }

    @GetMapping("get_single_question")
    public Result getSingleQuestion(Integer page, @RequestParam("pid") Integer pid )
    {
        return userService.getSingleQuestion(page, pid);
    }

    @GetMapping("get_answer_question")
    public Result getAnswerQuestion(Integer page, @RequestParam("pid") Integer pid )
    {
        return userService.getAnswerQuestion(page, pid);
    }

    @GetMapping("getQuestionList")
    public Result getQuestionList(@RequestParam("selNum") Integer selNum, @RequestParam("subNum") Integer subNum)
    {
        return userService.getQuestionList(selNum, subNum);
    }

    @GetMapping("getArticleList")
    public Result getArticleList(@RequestParam("label") String type)
    {
        return userService.getTitle(type);
    }

    @GetMapping("getArticle")
    public Result getArticle(@RequestParam("label") String title)
    {
        return userService.getContent(title);
    }

    @PostMapping("get_grade")
    public Result getGrade(@RequestParam("uid") Integer uid, @RequestParam("pid") Integer pid)
    {
        return userService.getGrade(uid, pid);
    }

    @PostMapping(value = "/fileUpload")
    public Result fileUpload(@RequestParam(value = "file") MultipartFile file, @RequestParam("qid") Integer qid, @RequestParam("uid") Integer uid, @RequestParam("pid") Integer pid) {

        if (file.isEmpty()) {
            return Result.failure(ResultCode.NULL_FILE);
        }

        String fileName = file.getOriginalFilename();

        String suffixName = fileName.substring(fileName.lastIndexOf("."));

        String filePath = "D://file//";

        fileName = UUID.randomUUID() + suffixName;

        File dest = new File(filePath + fileName);

        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }

        try {

            file.transferTo(dest);

        } catch (IOException e) {

            e.printStackTrace();

        }

        Integer grade = userService.getSingleGrade(qid);

        userService.saveGrade(uid, pid, grade);

        Result result = Result.success();

        return result;

    }

}



