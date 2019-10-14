package com.future.controller;

import com.future.service.StatisticalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: dove-parent
 * @description: 统计控制层
 * @author: 张晋浩
 * @create: 2019-10-14 20:18
 **/
@Controller
@RequestMapping("statistical")
public class StatisticalController {
    @Autowired
    private StatisticalService statisticalService;

    @RequestMapping("test")
    public String testT(){
        return statisticalService.testT();
    }
}
