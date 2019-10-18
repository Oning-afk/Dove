package com.future.mapper;

import com.future.model.Commodity;

import java.util.HashMap;
import java.util.List;

public interface CommodityMapper {
    int getCount(Commodity commodity);

    List<Commodity> commodityList(HashMap<String, Object> map);

}
