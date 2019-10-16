package com.future.controller;

import com.future.interfaces.OperatingServiceApi;
import com.future.model.CardVoucher;
import com.future.model.PageBean;
import com.future.service.OperatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:45
 **/

@RestController
public class OperatingController implements OperatingServiceApi {

    @Autowired
    private OperatingService operatingService;

    @Override
    public PageBean<CardVoucher> cardVoucherList(CardVoucher cardVoucher, Integer page, Integer rows) {
        return operatingService.cardVoucherList(cardVoucher,page,rows);
    }
}
