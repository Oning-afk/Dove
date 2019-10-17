package com.future.service.impl;

import com.future.mapper.ReceivingMapper;
import com.future.model.Order;
import com.future.model.PageBean;
import com.future.model.Receiving;
import com.future.service.ReceivingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class ReceivingServiceImpl implements ReceivingService {
    @Autowired
    private ReceivingMapper receivingMapper;
    @Override
    public PageBean<Receiving> receivingList(Receiving receiving, Integer page, Integer rows) {
        int totalSize = receivingMapper.getCount(receiving);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("receiving",receiving);
        PageBean<Receiving> receivingPageBean = new PageBean<Receiving>(page, rows, totalSize);
        List<Receiving> receivingList = receivingMapper.receivingList(map);
        receivingPageBean.setList(receivingList);
        return receivingPageBean;
    }
}
