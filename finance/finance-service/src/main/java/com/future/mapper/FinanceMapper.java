package com.future.mapper;

import com.future.model.Fgztuikuan;
import com.future.model.Findingdan;

import java.util.HashMap;
import java.util.List;

public interface FinanceMapper {
    int getCount(Findingdan findingdan);
    List<Findingdan> findDingdan(HashMap<String, Object> map);
    int getCountZb(Findingdan findingdan);
    List<Findingdan> findDingdanZb(HashMap<String, Object> map);
    int getCountBj(Findingdan findingdan);
    List<Findingdan> findDingdanBj(HashMap<String, Object> map);
    int getCountXx(Findingdan findingdan);
    List<Findingdan> findDingdanXx(HashMap<String, Object> map);

    void updateUser(Findingdan findingdan);
}
