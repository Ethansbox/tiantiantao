package com.tiantiantao.controller.background;

import com.tiantiantao.pojo.User;
import com.tiantiantao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserBackController {

    @Autowired
    private UserService userService;

    @Autowired
    HttpServletRequest request;

    /**
     * 查找所有会员
     */
    @RequestMapping("/user/findAllUsers.action")
    public String findAllUsers(){
        //获取会员数据
        List<User> userList = userService.findAll();

        //将会员数据放入session中
        request.getSession().setAttribute("userList",userList);

        return "background/user";
    }

    /**
     * 会员的冻结与解冻
     */
    @RequestMapping("/user/setIsFreezing.action")
    public String setIsFreezing(String userId){
        //冻结/解冻
        userService.setIsFreezing(userId);

        //获取会员数据
        List<User> userList = userService.findAll();

        //将会员数据放入session中
        request.getSession().setAttribute("userList",userList);

        return "background/user";
    }

}
