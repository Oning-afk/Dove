package com.future.controller;

import com.future.model.Statistical;
import com.future.model.StatisticsVisit;
import com.future.service.StatisticalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * @program: dove-parent
 * @description: 统计控制层
 * @author: 张晋浩
 * @create: 2019-10-14 20:18
 **/
@Controller
@RequestMapping("statistics")
public class StatisticalController {
    @Autowired
    private StatisticalService statisticalService;

    @RequestMapping("test")
    public String testT(){
        return statisticalService.testT();
    }

    @RequestMapping("visit")
    public String visit(){
        return "visit";
    }

    @RequestMapping("findVisit")
    @ResponseBody
    public Map<String,Object> findVisit(StatisticsVisit statisticsVisit, int iTime){
        return statisticalService.findVisit(statisticsVisit,iTime);
    }

    @RequestMapping("saveVisit")
    @ResponseBody
    public void saveVisit(){
        statisticalService.saveVisit();
    }
}
