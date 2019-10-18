package com.future.service.impl;

import com.future.mapper.CommodityMapper;
import com.future.model.Commodity;
import com.future.model.PageBean;
import com.future.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class CommodityServiceImpl implements CommodityService {
    @Autowired
    private CommodityMapper commodityMapper;

    @Override
    public PageBean<Commodity> commodityList(Commodity commodity, Integer page, Integer rows) {
        int totalSize = commodityMapper.getCount(commodity);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("commodity",commodity);
        PageBean<Commodity> commodityPageBean = new PageBean<Commodity>(page, rows, totalSize);
        List<Commodity> commodityList = commodityMapper.commodityList(map);
        commodityPageBean.setList(commodityList);
        return commodityPageBean;
    }
}
