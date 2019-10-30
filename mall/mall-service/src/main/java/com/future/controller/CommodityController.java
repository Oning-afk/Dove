package com.future.controller;

import com.future.interfaces.CommodityServiceApi;
import com.future.model.Commodity;
import com.future.model.PageBean;
import com.future.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CommodityController implements CommodityServiceApi {
    @Autowired
    private CommodityService commodityService;
    @Override
    public PageBean<Commodity> commodityList(Commodity commodity, Integer page, Integer rows) {
        return commodityService.commodityList(commodity,page,rows);
    }

    @Override
    public boolean delCommodity(Long[] ids) {
        return commodityService.delCommodity(ids);
    }

    @Override
    public boolean updateStateToUp(Long[] id) {
        return commodityService.updateStateToUp(id);
    }

    @Override
    public boolean updateStateToDown(Long[] id) {
        return commodityService.updateStateToDown(id);
    }

    @Override
    public PageBean<Commodity> commodityShow(Commodity commodity, Integer page, Integer rows) {
        return commodityService.commodityShow(commodity,page,rows);
    }

    @Override
    public void addCommodity(Commodity commodity) {
        commodityService.addCommofdity(commodity);
    }

    @Override
    public void deleteCommodity(Long[] id) {
        commodityService.deleteCommodity(id);
    }


}
