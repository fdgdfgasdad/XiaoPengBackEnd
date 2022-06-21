//package com.exam.cofig;
//
//import com.exam.interceptor.LoginHandleInterceptor;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//
//@Configuration
//@Slf4j
//public class AdminWebConfig implements WebMvcConfigurer {
//
//    @Override
//    public void addInterceptors(InterceptorRegistry registry) {
//
//        registry.addInterceptor(new LoginHandleInterceptor())
//                .addPathPatterns("/**")
//                .excludePathPatterns("/", "/login", "/register");
//
//    }
//}