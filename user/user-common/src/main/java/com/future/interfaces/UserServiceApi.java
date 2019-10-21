package com.future.interfaces;

import com.future.model.Result;
import com.future.model.User;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface UserServiceApi {


    @RequestMapping("userLogin")
    User userLogin(@RequestParam String name);
}
