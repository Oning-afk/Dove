package com.future.interfaces;

import com.future.model.Order;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface OrderServiceApi {
    @RequestMapping("findOrder")
    public PageBean<Order> orderList(@RequestBody(required = false) Order order, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    /**
     * 查看详细
     * @param id
     * @return
     */
    @RequestMapping("orderShow")
    public  Order orderShow(@RequestParam(value = "id") Long id);

    @RequestMapping("exportOrder")
    List<Order> exportOrder(@RequestBody(required = false)Order order);

    @RequestMapping("delGoodsOrder")
    void delGoodsOrder(@RequestParam(value = "ids",required = false)Long[] id);
}
