package com.future.controller;

import com.future.interfaces.UserServiceApi;
import com.future.model.Result;
import com.future.model.User;
import com.future.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:45
 **/

@RestController
public class UserController implements UserServiceApi {

    @Autowired
    private UserService userService;

    @Override
    public User userLogin(@RequestParam String name) {
        return userService.userLogin(name);
    }
}
