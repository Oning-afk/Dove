package com.future.controller;

import com.future.interfaces.OrderServiceApi;
import com.future.model.Order;
import com.future.model.PageBean;
import com.future.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class OrderController implements OrderServiceApi {
    @Autowired
    private OrderService orderService;

    @Override
    public PageBean<Order> orderList(Order order, Integer page, Integer rows) {
        return orderService.orderList(order,page,rows);
    }

    /**
     * 查看详细
     * @param id
     * @return
     */
    @Override
    public Order orderShow(Long id) {
        return orderService.orderShow(id);
    }

    @Override
    public List<Order> exportOrder(Order order) {
        return orderService.exportOrder(order);
    }

    @Override
    public void delGoodsOrder(Long[] id) {
        orderService.delGoodsOrder(id);
    }


}
