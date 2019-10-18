package com.future.controller;

import com.future.service.OperatCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @program: dove-parent
 * @description: 定时任务
 * @author: 张晋浩
 * @create: 2019-10-17 14:43
 **/

@Component
public class ScheduledTask {

    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-DD HH:mm:ss");

    @Autowired
    private OperatCardService operatingService;
    @Scheduled(fixedRate = 5000)
    public void testFixRate() {
        operatingService.validationCard();
        System.out.println("我每隔5秒冒泡一次：" + dateFormat.format(new Date()));
    }


}
