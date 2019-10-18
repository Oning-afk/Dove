package com.future.controller;

import com.future.interfaces.OrderServiceApi;
import com.future.model.Order;
import com.future.model.PageBean;
import com.future.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrderController implements OrderServiceApi {
    @Autowired
    private OrderService orderService;

    @Override
    public PageBean<Order> orderList(Order order, Integer page, Integer rows) {
        return orderService.orderList(order,page,rows);
    }
}
