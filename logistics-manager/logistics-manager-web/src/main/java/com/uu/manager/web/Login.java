package com.uu.manager.web;

import com.uu.manager.pojo.po.TbAdmin;
import com.uu.manager.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * Created by aqiang on 2018/6/15.
 */
@Controller
public class Login {

    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/login/login/login",method = RequestMethod.GET)
    public String login(String name,String password ,HttpSession session){
        //System.out.print(name+"=="+password);
        TbAdmin admin = loginService.login(name,password);
        //System.out.print(i);

        if(admin!=null) {
            //登陆成功
            session.setAttribute("user",name);
            return "index";
        }
        return "login";
    }

    @RequestMapping(value = "/logout/logout/logout",method = RequestMethod.GET)
    public String logout(HttpSession session) {
       // System.out.print(name + "==" + password);
        session.invalidate();

    return "login";
    }

}
