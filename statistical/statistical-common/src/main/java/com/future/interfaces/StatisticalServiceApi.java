package com.future.interfaces;

import org.springframework.web.bind.annotation.RequestMapping;

public interface StatisticalServiceApi {

    @RequestMapping("testT")
    String testT();
}
