package com.future.interfaces;

import com.future.model.Result;
import com.future.model.User;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

public interface UserServiceApi {

    @RequestMapping("testT")
    String testT();

    @RequestMapping("login")
    Result login(User user);

    @RequestMapping("userLogin")
    Result userLogin(@RequestBody User user);
}
