package com.future.controller;


import com.future.model.Commodity;
import com.future.model.PageBean;
import com.future.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * LJ
 * 商品管理
 */
@Controller
@RequestMapping("mall")
public class CommodityController {
    @Autowired
    private CommodityService commodityService;
    @RequestMapping(value = "findCommodity")
    public String commodityList(Commodity commodity, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Commodity> commodityPageBean = commodityService.commodityList(commodity, page, rows);
        model.addAttribute("commodityPageBean",commodityPageBean);
        return "commodity/commodityList";
    }
}
