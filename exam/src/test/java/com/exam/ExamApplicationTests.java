package com.exam;

import com.exam.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

@Slf4j
@SpringBootTest
class ExamApplicationTests {

    @Autowired
    UserService userService;

    @Test
    public void test()   {

    }
}
