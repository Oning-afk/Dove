package com.future.service.impl;

import com.future.mapper.OrderMapper;
import com.future.model.Order;
import com.future.model.PageBean;
import com.future.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderMapper orderMapper;

    @Override
    public PageBean<Order> orderList(Order order, Integer page, Integer rows) {
        int totalSize = orderMapper.getCount(order);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("order",order);
        PageBean<Order> orderPageBean = new PageBean<Order>(page, rows, totalSize);
        List<Order> orderList = orderMapper.orderList(map);
        orderPageBean.setList(orderList);
        return orderPageBean;
    }

    @Override
    public Order orderShow(Long id) {
        return orderMapper.orderShow(id);
    }

    @Override
    public List<Order> exportOrder(Order order) {
        return orderMapper.exportOrder(order);
    }

    @Override
    public void delGoodsOrder(Long[] id) {
        orderMapper.delGoodsOrder(id);
    }


}
