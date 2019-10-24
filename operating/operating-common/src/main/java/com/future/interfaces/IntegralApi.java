package com.future.interfaces;

import com.future.model.IntegralBean;
import com.future.model.LectureshipBean;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface IntegralApi {

    @RequestMapping("findIntegral")
    public PageBean<IntegralBean> integralList(@RequestBody(required = false) IntegralBean integralBean, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    @RequestMapping("updateIntegralToUp")
    boolean updateIntegralToUp(@RequestParam(value = "ids",required = false)Long[] id);

    @RequestMapping("updateIntegralToDown")
    boolean updateIntegralToDown(@RequestParam(value = "ids",required = false)Long[] id);

    @RequestMapping("addIntegral")
    void addIntegral(@RequestBody(required = false)IntegralBean integralBean);

    @RequestMapping("echoIntegral")
    IntegralBean echoIntegral(@RequestParam(value = "id",required = false)Long id);

}
