package com.future.controller;

import com.future.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: dove-parent
 * @description: 用户控制层
 * @author: 邓希凡
 * @create: 2019-10-17 18:58
 **/
@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;


}
