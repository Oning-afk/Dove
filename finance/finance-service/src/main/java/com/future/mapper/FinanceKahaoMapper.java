package com.future.mapper;


import com.future.model.FinanceKahao;
import com.future.model.Findingdan;

import java.util.HashMap;
import java.util.List;

public interface FinanceKahaoMapper {
    int getCountKahao(FinanceKahao financeKahao);
    List<FinanceKahao> findKahao(HashMap<String, Object> map);
}