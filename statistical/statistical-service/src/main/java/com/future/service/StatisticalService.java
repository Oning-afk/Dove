package com.future.service;

import com.future.model.Result;
import com.future.model.StatisticsVisit;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
public interface StatisticalService {

    void visit();

    Map<String,Object> findVisit(StatisticsVisit statisticsVisit, int iTime) throws ParseException;
}
