package com.future.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: dove-parent
 * @description: 页面跳转控制层
 * @author: 张晋浩
 * @create: 2019-10-16 11:27
 **/
@Controller
public class PageController {
    
    /** 
    * @Description: 跳转主页面 
    * @Param:  
    * @return:  
    * @Author: 邓希凡 
    * @Date: 2019/10/17 
    */ 
    @RequestMapping("toMain")
    public String toMain(){
        return "index";
    }

    @RequestMapping("login")
    public String login(){
        return "user/login";
    }

    @RequestMapping("main")
    public String main(){
        return "main";
    }

    @RequestMapping("teacher")
    public String teacher(){
        return "teacher/teacher";
    }

}
