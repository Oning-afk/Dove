package com.future.interfaces;

import com.future.model.Logistics;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

public interface LogisticsServiceApi {
    @RequestMapping("addLogistics")
    void  addLogistics(@RequestBody(required = false)Logistics logistics);
}
