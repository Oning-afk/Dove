package com.future.mapper;

import com.future.model.Receiving;

import java.util.HashMap;
import java.util.List;

public interface ReceivingMapper {
    int getCount(Receiving receiving);

    List<Receiving> receivingList(HashMap<String, Object> map);

    void addReceiving(Receiving receiving);

    void updateReceiving(Receiving receiving);

    void deleteReceiving(Long[] id);

    boolean updateReceivingToUp(Long[] id);

    boolean updateReceivingToDown(Long[] id);
}
