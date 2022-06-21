package com.exam.mapper;

import com.exam.pojo.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface  UserMapper {


    List<User> getAllUser();

    User getUserByUid(Integer uid);

    User getUserByUsername(String username);

    Integer saveUser(@Param("user") User user);

    String getUsernameByUid(Integer uid);

    String getPasswordByUid(Integer uid);

    String getPasswordByUsername(String username);

    Integer getUidByUsername(String username);

    void setPassword(@Param("user") User user);

    Integer getUserCount();
}
