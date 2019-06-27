package com.tiantiantao.service;

import com.tiantiantao.mapper.UserMapper;
import com.tiantiantao.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    //添加用户或注册
    public void add(User user) {
        //自动生成Id
        String uuid = UUID.randomUUID().toString().replaceAll("-", "");
        user.setUserId(uuid);

        //注册用户状态为非冻结状态
        user.setIsFreezing(0);
        userMapper.addUser(user);
    }

    @Override
    //根据用户名删除用户
    public void delete(String username) {
        userMapper.deleteUser(username);
    }

    @Override
    //更新用户
    public void update(User user) {
        userMapper.updateUser(user);
    }

    @Override
    //冻结解冻
    public void setIsFreezing(String userId) {
        //查找出user
        User user = userMapper.findById(userId);

        //如果冻结状态，则解冻；如果正常状态，则冻结
        if (user.getIsFreezing()==0){
            user.setIsFreezing(1);
        }else {
            user.setIsFreezing(0);
        }

        //保存
        userMapper.updateUser(user);

    }

    @Override
    //查找所有用户
    public List<User> findAll() {
        List<User> userList = userMapper.findAll();
        return userList;
    }

    @Override
    //通过用户名查找用户
    public User findByUsername(String username) {
        User user = userMapper.findByUsername(username);
        return user;
    }

    @Override
    //根据用户名排序
    public void sortByUsername() {

    }

    @Override
    public boolean login(User user) {       //用户登陆
        String username = user.getUsername();
        String password = user.getPassword();
        User temp = userMapper.findByUsername(username);
        if(temp!=null){
            if (temp.getPassword().equals(password)){
                return true;
            }
        }
        return false;
    }


}
