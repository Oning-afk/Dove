package com.future.service.impl;

import com.future.mapper.OperatingMapper;
import com.future.model.CardVoucher;
import com.future.model.PageBean;
import com.future.service.OperatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
@Service
public class OperatingServiceImpl implements OperatingService {

    @Autowired
    private OperatingMapper operatingMapper;

    @Override
    public PageBean<CardVoucher> cardVoucherList(CardVoucher cardVoucher, Integer page, Integer rows) {
        int totalSize = operatingMapper.getCount(cardVoucher);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",cardVoucher);
        PageBean<CardVoucher> cardVoucherPageBean = new PageBean<CardVoucher>(page, rows, totalSize);
        List<CardVoucher> cardVoucherList = operatingMapper.cardVoucherList(map);
        cardVoucherPageBean.setList(cardVoucherList);
        return cardVoucherPageBean;
    }
}
