package com.future.controller;

import com.future.interfaces.StatisticalServiceApi;
import com.future.model.Result;
import com.future.model.StatisticsVisit;
import com.future.service.StatisticalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

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

    @Override
    public void saveVisit() {
        statisticalService.visit();
    }


    @Override
    public Map<String, Object> findVisit(StatisticsVisit statisticsVisit, int iTime) {
        try {
            return statisticalService.findVisit(statisticsVisit,iTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }


}
