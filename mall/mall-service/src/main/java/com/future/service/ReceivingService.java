package com.future.service;

import com.future.model.PageBean;
import com.future.model.Receiving;

public interface ReceivingService {
    PageBean<Receiving> receivingList(Receiving receiving, Integer page, Integer rows);

}
