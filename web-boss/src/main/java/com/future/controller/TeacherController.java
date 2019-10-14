package com.future.controller;

import com.future.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:57
 **/
@RestController
public class TeacherController {

    @Autowired
    private TeacherService teacherService;

    @RequestMapping("test")
    public String testT(){
        return teacherService.testT();
    }
}
