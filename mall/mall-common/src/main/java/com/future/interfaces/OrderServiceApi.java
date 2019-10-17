package com.future.interfaces;

import com.future.model.Order;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface OrderServiceApi {
    @RequestMapping("findOrder")
    public PageBean<Order> orderList(@RequestBody(required = false) Order order, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);


}
