package com.future.interfaces;

import com.future.model.*;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface FinanceServiceApi {
    @RequestMapping("findDingdan")
    public PageBean<Findingdan> findDingdan(@RequestBody(required = false) Findingdan findingdan, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("findTuikuan")
    public PageBean<Fgztuikuan> findTuikuan(@RequestBody(required = false) Fgztuikuan fgztuikuan, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("findTixian")
    public PageBean<FinanceTixian> findTixian(@RequestBody(required = false) FinanceTixian financeTixian, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("findKahao")
    public PageBean<FinanceKahao> findKahao(@RequestBody(required = false) FinanceKahao financeKahao, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("findZhifu")
    public PageBean<FinanceZhifujilu> findZhifu(@RequestBody(required = false) FinanceZhifujilu financeZhifujilu, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("findYue")
    public PageBean<FinanceYue> findYue(@RequestBody(required = false) FinanceYue financeYue, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("findShouru")
    public PageBean<FinanceShouru> findShouru(@RequestBody(required = false) FinanceShouru financeShouru, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("findJifen")
    public PageBean<FinanceJifen> findJifen(@RequestBody(required = false) FinanceJifen financeJifen, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("findDingdanZb")
    public PageBean<Findingdan> findDingdanZb(@RequestBody(required = false) Findingdan findingdan, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("findDingdanBj")
    public PageBean<Findingdan> findDingdanBj(@RequestBody(required = false) Findingdan findingdan, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
    @RequestMapping("findDingdanXx")
    public PageBean<Findingdan> findDingdanXx(@RequestBody(required = false) Findingdan findingdan, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);


    @RequestMapping("/delDingdan")
    public void delDingdan(@RequestBody Findingdan findingdan);
    @RequestMapping("findManage")
    public PageBean<ClassManage> findManage(@RequestBody(required = false) ClassManage classManage, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    @RequestMapping("addManage")
    void addManage(@RequestBody(required = false)ClassManage classManage);
}
