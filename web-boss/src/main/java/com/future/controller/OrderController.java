package com.future.controller;

import com.future.model.ExportExcel;
import com.future.model.Order;
import com.future.model.PageBean;
import com.future.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.management.remote.rmi._RMIConnection_Stub;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

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
        return "mall/order/orderList";
    }

    /**
     * 查看详细
     * @param model
     * @param id
     * @return
     */
    @RequestMapping("orderShow")
    public  String orderShow(Model model, Long id){
        Order order = orderService.orderShow(id);
        model.addAttribute("order",order);
        return "mall/order/orderShow";
    }

    /**
     * 导出
     * @param order
     * @param response
     */
    @RequestMapping(value = "exportOrder")
    public void exportOrder(Order order, HttpServletResponse response){
        List<Order> list=  orderService.exportOrder(order);
        if(list !=null || list.size() > 0){
            //标题
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String title="商城订单信息";
            String[] rowsName=new String[]{"编号","用户名","商品ID","商品名称","兑换价格","兑换数量","运费","地址","下单时间"};
            //定义数据集合
            List<Object[]> dataList = new ArrayList<Object[]>();
            for (int i = 0; i <list.size() ; i++) {
                Object[] obj=new Object[rowsName.length];
                obj[0] = list.get(i).getOrderId();
                obj[1] = list.get(i).getUserName();
                obj[2] = list.get(i).getCommodityId();
                obj[3] = list.get(i).getCommodityName();
                obj[4] = list.get(i).getInventory();
                obj[5] = list.get(i).getExchangeNumber();
                obj[6] = list.get(i).getCommodityFreight();
                obj[7] = list.get(i).getAddress();
                obj[8] = formatter.format(list.get(i).getGeneratetime());
                dataList.add(obj);
            }
            ExportExcel exportExcel = new ExportExcel(title, rowsName,dataList,response);
            try {
                exportExcel.export();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }


    @RequestMapping("delGoodsOrder")
    public String delGoodsOrder(Long[] id){
        orderService.delGoodsOrder(id);
        return "redirect:findOrder";
    }

}
