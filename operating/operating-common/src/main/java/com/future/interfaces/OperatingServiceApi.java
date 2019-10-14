package com.future.interfaces;

import org.springframework.web.bind.annotation.RequestMapping;

public interface OperatingServiceApi {

    @RequestMapping("testT")
    String testT();
}
