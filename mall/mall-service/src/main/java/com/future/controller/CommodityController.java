package com.future.controller;

import com.future.interfaces.CommodityServiceApi;
import com.future.model.Commodity;
import com.future.model.PageBean;
import com.future.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CommodityController implements CommodityServiceApi {
    @Autowired
    private CommodityService commodityService;
    @Override
    public PageBean<Commodity> commodityList(Commodity commodity, Integer page, Integer rows) {
        return commodityService.commodityList(commodity,page,rows);
    }

}
