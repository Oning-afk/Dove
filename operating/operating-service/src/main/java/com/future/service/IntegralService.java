package com.future.service;

import com.future.model.IntegralBean;
import com.future.model.LectureshipBean;
import com.future.model.PageBean;

public interface IntegralService {

    /**
     * 余额积分查询
     * @param integralBean
     * @param page
     * @param rows
     * @return
     */
    PageBean<IntegralBean> integralList(IntegralBean integralBean, Integer page, Integer rows);



    boolean updateIntegralToUp(Long[] id);

    boolean updateIntegralToDown(Long[] id);


    void addIntegral(IntegralBean integralBean);

    IntegralBean echoIntegral(Long id);

}
