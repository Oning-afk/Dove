package com.future.controller;

import com.future.interfaces.ReceivingServiceApi;
import com.future.model.PageBean;
import com.future.model.Receiving;
import com.future.service.ReceivingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ReceivingController implements ReceivingServiceApi {
    @Autowired
    private ReceivingService receivingService;
    @Override
    public PageBean<Receiving> receivingList(Receiving receiving, Integer page, Integer rows) {
        return receivingService.receivingList(receiving,page,rows);
    }
}
