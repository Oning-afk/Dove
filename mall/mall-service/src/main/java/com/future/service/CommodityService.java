package com.future.service;

import com.future.model.Commodity;
import com.future.model.PageBean;

import java.util.List;

public interface CommodityService {
    PageBean<Commodity> commodityList(Commodity commodity, Integer page, Integer rows);

    boolean delCommodity(Long[] ids);

    boolean updateStateToUp(Long[] id);

    boolean updateStateToDown(Long[] id);

    PageBean<Commodity> commodityShow(Commodity commodity, Integer page, Integer rows);

    void addCommofdity(Commodity commodity);

    void deleteCommodity(Long[] id);
}
