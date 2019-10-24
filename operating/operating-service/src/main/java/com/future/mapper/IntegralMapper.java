package com.future.mapper;

import com.future.model.IntegralBean;
import com.future.model.LectureshipBean;

import java.util.HashMap;
import java.util.List;

public interface IntegralMapper {

    /**
     * 积分总条数
     * @param integralBean
     * @return
     */
    int getIntegralCount(IntegralBean integralBean);

    /**
     * 积分头衔查询
     * @param map
     * @return
     */
    List<IntegralBean> integralList(HashMap<String, Object> map);


    boolean updateIntegralToUp(Long[] id);

    boolean updateIntegralToDown(Long[] id);

    void addIntegral(IntegralBean integralBean);


    void updateIntegral(IntegralBean integralBean);


    IntegralBean echoIntegral(Long id);
}
