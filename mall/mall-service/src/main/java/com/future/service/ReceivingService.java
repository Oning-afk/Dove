package com.future.service;

import com.future.model.PageBean;
import com.future.model.Receiving;

public interface ReceivingService {
    PageBean<Receiving> receivingList(Receiving receiving, Integer page, Integer rows);
    void  addReceiving(Receiving receiving);

    void deleteReceiving(Long[] id);

    boolean updateReceivingToUp(Long[] id);

    boolean updateReceivingToDown(Long[] id);
}
