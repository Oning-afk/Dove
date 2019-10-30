package com.future.service.impl;

import com.future.mapper.LogisticsMapper;
import com.future.model.Logistics;
import com.future.service.LogisticsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogisticsServiceImpl implements LogisticsService {
    @Autowired
    private LogisticsMapper logisticsMapper;

    @Override
    public void addLogistics(Logistics logistics) {
        logisticsMapper.addLogistics(logistics);
    }
}
