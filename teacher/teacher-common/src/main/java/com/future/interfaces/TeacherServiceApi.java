package com.future.interfaces;

import org.springframework.web.bind.annotation.RequestMapping;

public interface TeacherServiceApi {

    @RequestMapping("testT")
    String testT();
}
