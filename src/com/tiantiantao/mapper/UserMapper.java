package com.tiantiantao.mapper;

import com.tiantiantao.pojo.User;

import java.util.List;

public interface UserMapper {

    void addUser(User user);                  //添加一个用户

    void deleteUser(String username);       //删除一个用户

    void updateUser(User user);               //修改一个用户

    List<User> findAll();              //查找所有用户

    User findByUsername(String username);   //通过用户名查找用户

    User findById(String userId);       //通过id查找用户

}
