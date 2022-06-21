package com.exam.result;

public enum ResultCode {
    SUCCESS(200, "success"),
    EXIST_USERNAME(200, "已存在该用户名"),
    NULL_USERNAME(200, "用户名为空"),
    NULL_PASSWORD(200, "密码为空"),
    NULL_UID(200, "用户ID为空"),
    WRONG_PASSWORD(200,"密码错误"),
    NONEXISTENT_USERNAME(200,"用户名为空");

    private Integer code;
    private String msg;

    ResultCode(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }
    
    public Integer getCode() {
        return this.code;
    }

    public String getMessage() {
        return this.msg;
    }

}