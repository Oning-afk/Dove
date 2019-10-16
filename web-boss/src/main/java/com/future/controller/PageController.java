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
     * 跳转至主页面
     * @return
     */
    @RequestMapping("toMain")
    public String toMain(){
        return "index";
    }
}
