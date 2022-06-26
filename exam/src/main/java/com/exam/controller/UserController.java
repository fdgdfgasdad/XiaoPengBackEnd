package com.exam.controller;

import com.exam.pojo.User;
import com.exam.result.Result;
import com.exam.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

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
    public Result getGrade(@RequestBody Object object)
    {
        return userService.getGrade(object);
    }

}
