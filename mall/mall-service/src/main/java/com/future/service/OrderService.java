package com.future.service;

import com.future.model.Order;
import com.future.model.PageBean;

import java.util.List;

public interface OrderService {
    PageBean<Order> orderList(Order order, Integer page, Integer rows);
    Order orderShow(Long id);

    List<Order> exportOrder(Order order);


    void delGoodsOrder(Long[] id);
}
