package com.future.mapper;

import com.future.model.Receiving;

import java.util.HashMap;
import java.util.List;

public interface ReceivingMapper {
    int getCount(Receiving receiving);

    List<Receiving> receivingList(HashMap<String, Object> map);
}
