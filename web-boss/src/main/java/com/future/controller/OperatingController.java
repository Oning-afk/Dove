package com.future.controller;

import com.future.service.OperatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: dove-parent
 * @description: 运营控制层
 * @author: 张晋浩
 * @create: 2019-10-14 20:19
 **/
@Controller
@RequestMapping("operating")
public class OperatingController {
    @Autowired
    private OperatingService operatingService;

    @RequestMapping("test")
    public String testT(){
        return operatingService.testT();
    }
}
