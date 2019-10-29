package com.future.mapper;


import com.future.model.FinanceTixian;
import com.future.model.Findingdan;

import java.util.HashMap;
import java.util.List;

public interface FinanceTixianMapper {
    int getCountTixian(FinanceTixian financeTixian);
    List<FinanceTixian> findTixian(HashMap<String, Object> map);
}