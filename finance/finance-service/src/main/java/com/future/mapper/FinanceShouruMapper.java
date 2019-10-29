package com.future.mapper;

import com.future.model.FinanceShouru;

import java.util.HashMap;
import java.util.List;

import com.future.model.Findingdan;
import org.apache.ibatis.annotations.Param;

public interface FinanceShouruMapper {
    int getCountShouru(FinanceShouru financeShouru);
    List<FinanceShouru> findShouru(HashMap<String, Object> map);
}