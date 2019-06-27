package com.tiantiantao.service;

import com.tiantiantao.pojo.User;

import java.util.List;

public interface UserService {

    void add(User user);                  //添加用户

    void delete(String username);         //根据用户名删除用户

    void update(User user);               //更新用户

    void setIsFreezing(String userId);        //冻结解冻

    List<User> findAll();                   //查找所有用户

    User findByUsername(String username);   //通过用户名查找用户

    void sortByUsername();                    //根据用户名排序

    boolean login(User user);                        //登陆
}
