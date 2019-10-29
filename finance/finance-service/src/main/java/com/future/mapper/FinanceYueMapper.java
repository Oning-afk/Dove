package com.future.mapper;

import com.future.model.FinanceYue;

import java.util.HashMap;
import java.util.List;

import com.future.model.Findingdan;
import org.apache.ibatis.annotations.Param;

public interface FinanceYueMapper {
    int getCountYue(FinanceYue financeYue);
    List<FinanceYue> findYue(HashMap<String, Object> map);
}