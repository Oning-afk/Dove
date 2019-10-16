package com.future.service;

import com.future.model.CardVoucher;
import com.future.model.PageBean;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
public interface OperatingService {
    PageBean<CardVoucher> cardVoucherList(CardVoucher cardVoucher, Integer page, Integer rows);
}
