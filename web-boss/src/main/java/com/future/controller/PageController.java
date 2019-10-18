package com.future.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: dove-parent
 * @description: 跳转页面
 * @author: 邓希凡
 * @create: 2019-10-17 10:59
 **/
@RequestMapping("page")
@Controller
public class PageController {
    
    /** 
    * @Description: 跳转主页面 
    * @Param:  
    * @return:  
    * @Author: 邓希凡 
    * @Date: 2019/10/17 
    */ 
    @RequestMapping("index")
    public String index(){
        return "index";
    }

    @RequestMapping("login")
    public String login(){
        return "login";
    }

    @RequestMapping("rear")
    public String rear(){
        return "rear";
    }
    
}
