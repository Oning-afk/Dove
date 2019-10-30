package com.future.interfaces;

import com.future.model.Commodity;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface CommodityServiceApi {

    @RequestMapping("findCommodity")
    PageBean<Commodity> commodityList(@RequestBody(required = false) Commodity commodity, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("delCommodity")
    boolean delCommodity(@RequestParam(value = "ids",required = false)Long[] ids);

    @RequestMapping("updateStateToUp")
    boolean updateStateToUp(@RequestParam(value = "ids",required = false)Long[] id);

    @RequestMapping("updateStateToDown")
    boolean updateStateToDown(@RequestParam(value = "ids",required = false)Long[] id);

    @RequestMapping("commodityShow")
    PageBean<Commodity> commodityShow(@RequestBody(required = false) Commodity commodity, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    @RequestMapping("addCommodity")
    void addCommodity(@RequestBody Commodity commodity);

    @RequestMapping("deleteCommodity")
    void deleteCommodity(@RequestParam(value = "ids",required = false)Long[] id);
}
