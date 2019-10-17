package com.future.mapper;

import com.future.model.Order;

import java.util.HashMap;
import java.util.List;

public interface OrderMapper {
    int getCount(Order order);

    List<Order> orderList(HashMap<String, Object> map);
}
