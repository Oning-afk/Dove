package com.future.interfaces;

import com.future.model.Commodity;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface CommodityServiceApi {

    @RequestMapping("findCommodity")
    public PageBean<Commodity> commodityList(@RequestBody(required = false) Commodity commodity, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);


}
