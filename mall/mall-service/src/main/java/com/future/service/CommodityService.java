package com.future.service;

import com.future.model.Commodity;
import com.future.model.PageBean;

public interface CommodityService {
    PageBean<Commodity> commodityList(Commodity commodity, Integer page, Integer rows);

}
