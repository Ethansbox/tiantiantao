package com.tiantiantao.controller.foreground;

import com.tiantiantao.pojo.User;
import com.tiantiantao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserForeController {

    @Autowired
    private UserService userService;

    @Autowired
    HttpServletRequest request;

    @RequestMapping("/login.action")
    public ModelAndView login(@ModelAttribute User user){      //用户登陆
        ModelAndView modelAndView = new ModelAndView();

        //判断用户用户名密码是否正确
        boolean isLogin = userService.login(user);

        if(isLogin){
            //如果登陆成功，则将user放入session中
            User temp = userService.findByUsername(user.getUsername());
            request.getSession().setAttribute("user",temp);

            //跳转到show.jsp
            modelAndView.setViewName("redirect:/findAllCommodity.action");
        }else {
            //如果登陆失败，将登陆失败的信息放入modelAndView中
            modelAndView.addObject("isLogin",isLogin);

            //跳转回登陆页面
            modelAndView.setViewName("foreground/login");
        }

        return modelAndView;
    }


    @RequestMapping("/toLogin.action")
    public String toLogin(){        //跳转至登陆页面
        //如果用户已经登陆，则跳转回show.jsp
        if (request.getSession().getAttribute("user")!=null){
            return "foreground/show";
        }

        return "foreground/login";
    }


    @RequestMapping("/register.action")
    public ModelAndView register(@ModelAttribute User user){       //用户登陆
        ModelAndView modelAndView = new ModelAndView();

        //用于返回用户名是否已被注册的信息
        boolean isRegister;

        //首先判断该用户名是否已经被注册
        if (user.getUsername()!=null){
            User temp = userService.findByUsername(user.getUsername());

            //如果返回的值不为空，说明已经被注册
            if (temp!=null){
                isRegister = false;
                modelAndView.addObject("isRegister",isRegister);
                modelAndView.setViewName("foreground/register");
            }

            //如果返回的值为空，说明未被注册，则添加进数据库
            else {
                userService.add(user);
                isRegister = true;
                modelAndView.addObject("isRegister",isRegister);
                //注册完成跳转至登陆页面
                modelAndView.setViewName("foreground/login");
            }
        }

        return modelAndView;
    }

    @RequestMapping("/toRegister.action")
    public String toRegister(){         //跳转至注册页面
        return "foreground/register";
    }

    @RequestMapping("/toPersonal.action")
    public String toPersonal(){         //跳转至个人信息页面
        //如果没有登陆，则跳转至登陆页面
        if (request.getSession().getAttribute("user")==null){
            return "redirect:/toLogin.action";
        }

        return "foreground/personal";
    }


    @RequestMapping("/updateUser.action")
    public ModelAndView updateUser(User user){  //更新用户信息
        ModelAndView modelAndView = new ModelAndView();

        System.out.println(user.getUsername());

        //更新用户
        userService.update(user);

        //设置更新成功提醒
        boolean isUpdate = true;
        modelAndView.addObject("isUpdate",isUpdate);

        //将更新后的user放回session
        request.getSession().setAttribute("user",user);

        modelAndView.setViewName("foreground/personal");

        return modelAndView;
    }

    @RequestMapping("/logout")
    public String logout(){         //退出登陆
        request.getSession().removeAttribute("user");
        return "foreground/login";
    }
}
