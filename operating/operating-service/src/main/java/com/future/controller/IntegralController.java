package com.future.controller;

import com.future.interfaces.IntegralApi;
import com.future.model.IntegralBean;
import com.future.model.LectureshipBean;
import com.future.model.PageBean;
import com.future.service.IntegralService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class IntegralController implements IntegralApi {

    @Autowired
    private IntegralService integralService;


    @Override
    public PageBean<IntegralBean> integralList(IntegralBean integralBean, Integer page, Integer rows) {
        return integralService.integralList(integralBean, page, rows);
    }

    @Override
    public boolean updateIntegralToUp(Long[] id) {
        return integralService.updateIntegralToUp(id);
    }

    @Override
    public boolean updateIntegralToDown(Long[] id) {
        return integralService.updateIntegralToDown(id);
    }

    @Override
    public void addIntegral(IntegralBean integralBean) {
        integralService.addIntegral(integralBean);
    }

    @Override
    public IntegralBean echoIntegral(Long id) {
        return integralService.echoIntegral(id);
    }


}
