package com.future.controller;

import com.future.interfaces.StatisticalServiceApi;
import com.future.service.StatisticalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:45
 **/

@RestController
public class StatisticalController implements StatisticalServiceApi {

    @Autowired
    private StatisticalService statisticalService;

    @Override
    public String testT() {
        return "测试成功";
    }
}
