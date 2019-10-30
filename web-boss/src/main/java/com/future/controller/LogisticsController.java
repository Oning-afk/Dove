package com.future.controller;

import com.future.model.Logistics;
import com.future.service.LogisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("logistics")
public class LogisticsController {
    @Autowired
    private LogisticsService logisticsService;

    @RequestMapping(value = "addLogistics")
    public String addLogistics(Logistics logistics, Model model){
        logisticsService.addLogistics(logistics);
        return "mall/logistics/addLogistics";
    }



}
