package com.future.mapper;

import com.future.model.Commodity;

import java.util.HashMap;
import java.util.List;

public interface CommodityMapper {
    int getCount(Commodity commodity);

    List<Commodity> commodityList(HashMap<String, Object> map);

    boolean delCommodity(Long[] ids);

    boolean updateStateToUp(Long[] id);

    boolean updateStateToDown(Long[] id);


    int getCount1(Commodity commodity);

    List<Commodity> commodityShow(HashMap<String, Object> map);

    void addCommodity(Commodity commodity);

    void updateCommodity(Commodity commodity);

    void deleteCommodity(Long[] id);
}
