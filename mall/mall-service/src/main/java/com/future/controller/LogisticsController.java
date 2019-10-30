package com.future.controller;

import com.future.interfaces.LogisticsServiceApi;
import com.future.model.Logistics;
import com.future.service.LogisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LogisticsController implements LogisticsServiceApi {
    @Autowired
    private LogisticsService logisticsService;

    @Override
    public void addLogistics(Logistics logistics) {
        logisticsService.addLogistics(logistics);
    }
}
