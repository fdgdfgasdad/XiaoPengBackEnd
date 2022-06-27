package com.exam.cofig;


import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @create 2022/5/30-15:02
 */
@Configuration
@Slf4j
public class fileAccessConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String accessPath = "/file/**";
        String location =  "file:D:/file/";
        System.out.println("accessPath = " + accessPath);
        System.out.println("location = " + location);
        registry.addResourceHandler(accessPath).addResourceLocations(location);

    }


}
