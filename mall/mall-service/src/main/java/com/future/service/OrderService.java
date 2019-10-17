package com.future.service;

import com.future.model.Order;
import com.future.model.PageBean;

public interface OrderService {
    PageBean<Order> orderList(Order order, Integer page, Integer rows);

}
