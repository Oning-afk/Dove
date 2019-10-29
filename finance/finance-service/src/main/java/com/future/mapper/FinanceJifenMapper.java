package com.future.mapper;

import com.future.model.FinanceJifen;

import java.util.HashMap;
import java.util.List;

import com.future.model.Findingdan;
import org.apache.ibatis.annotations.Param;

public interface FinanceJifenMapper {
    int getCountJifen(FinanceJifen financeJifen);
    List<FinanceJifen> findJifen(HashMap<String, Object> map);
}