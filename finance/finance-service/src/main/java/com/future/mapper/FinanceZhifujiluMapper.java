package com.future.mapper;


import com.future.model.FinanceZhifujilu;
import com.future.model.Findingdan;

import java.util.HashMap;
import java.util.List;

public interface FinanceZhifujiluMapper {
    int getCountZhifu(FinanceZhifujilu financeZhifujilu);
    List<FinanceZhifujilu> findZhifu(HashMap<String, Object> map);
}