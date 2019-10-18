package com.future.controller;

import com.future.model.Order;
import com.future.model.PageBean;
import com.future.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * LJ
 *
 * 订单管理
 */

@Controller
@RequestMapping("order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @RequestMapping(value = "findOrder")
    public String orderList(Order order, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Order> orderPageBean = orderService.orderList(order, page, rows);
        model.addAttribute("orderPageBean",orderPageBean);
        return "order/orderList";
    }
}
