package com.future.interfaces;

import com.future.model.Result;
import com.future.model.StatisticsVisit;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

public interface StatisticalServiceApi {

    @RequestMapping("testT")
    String testT();

    @RequestMapping(value = "saveVisit",method = RequestMethod.POST)
    void saveVisit();

    @RequestMapping(value = "findVisit",method = RequestMethod.POST)
    Map<String, Object> findVisit( StatisticsVisit statisticsVisit, @RequestParam(value = "0") int iTime);


}
