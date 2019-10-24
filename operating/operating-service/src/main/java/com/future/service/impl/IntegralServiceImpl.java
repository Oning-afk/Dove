package com.future.service.impl;


import com.future.mapper.IntegralMapper;
import com.future.model.IntegralBean;
import com.future.model.LectureshipBean;
import com.future.model.PageBean;
import com.future.service.IntegralService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class IntegralServiceImpl implements IntegralService {

    @Autowired
    private IntegralMapper integralMapper;


    @Override
    public PageBean<IntegralBean> integralList(IntegralBean integralBean, Integer page, Integer rows) {
        int totalSize = integralMapper.getIntegralCount(integralBean);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("integralBean",integralBean);
        PageBean<IntegralBean> integralBeanPageBean = new PageBean<IntegralBean>(page, rows, totalSize);
        List<IntegralBean> lectureshipList = integralMapper.integralList(map);
        integralBeanPageBean.setList(lectureshipList);
        return integralBeanPageBean;
    }

    @Override
    public boolean updateIntegralToUp(Long[] id) {
        return integralMapper.updateIntegralToUp(id);
    }

    @Override
    public boolean updateIntegralToDown(Long[] id) {
        return integralMapper.updateIntegralToDown(id);
    }

    @Override
    public void addIntegral(IntegralBean integralBean) {
        if(integralBean.getId()!=null){

            integralMapper.updateIntegral(integralBean);
        }else{

            integralMapper.addIntegral(integralBean);
        }


    }

    @Override
    public IntegralBean echoIntegral(Long id) {
        return integralMapper.echoIntegral(id);
    }


}
