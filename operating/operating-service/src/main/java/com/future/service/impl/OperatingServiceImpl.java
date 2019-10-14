package com.future.service.impl;

import com.future.mapper.OperatingMapper;
import com.future.service.OperatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
