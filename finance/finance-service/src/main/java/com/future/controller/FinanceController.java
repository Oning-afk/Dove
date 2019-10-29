package com.future.controller;

import com.future.interfaces.FinanceServiceApi;
import com.future.model.*;
import com.future.service.FinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:45
 **/

@RestController
public class FinanceController implements FinanceServiceApi {

    @Autowired
    private FinanceService financeService;
    //订单
    @Override
    public PageBean<Findingdan>findDingdan(Findingdan findingdan, Integer page, Integer rows) {
        return financeService.findDingdan(findingdan,page,rows);
    }
    @Override
    public void delDingdan(Findingdan findingdan) {
        financeService.updateUser(findingdan);
    }
    @Override
    public PageBean<Findingdan>findDingdanZb(Findingdan findingdan, Integer page, Integer rows) {
        return financeService.findDingdanZb(findingdan,page,rows);
    }
    @Override
    public PageBean<Findingdan>findDingdanBj(Findingdan findingdan, Integer page, Integer rows) {
        return financeService.findDingdanBj(findingdan,page,rows);
    }
    @Override
    public PageBean<Findingdan>findDingdanXx(Findingdan findingdan, Integer page, Integer rows) {
        return financeService.findDingdanXx(findingdan,page,rows);
    }
    //退款
    @Override
    public PageBean<Fgztuikuan>findTuikuan(Fgztuikuan fgztuikuan, Integer page, Integer rows) {
        return financeService.findTuikuan(fgztuikuan,page,rows);
    }
    //提现
    @Override
    public PageBean<FinanceTixian>findTixian(FinanceTixian financeTixian, Integer page, Integer rows) {
        return financeService.findTixian(financeTixian,page,rows);
    }
    //卡号
    @Override
    public PageBean<FinanceKahao>findKahao(FinanceKahao financeKahao, Integer page, Integer rows) {
        return financeService.findKahao(financeKahao,page,rows);
    }
    //支付记录
    @Override
    public PageBean<FinanceZhifujilu>findZhifu(FinanceZhifujilu financeZhifujilu, Integer page, Integer rows) {
        return financeService.findZhifu(financeZhifujilu,page,rows);
    }
    //余额
    @Override
    public PageBean<FinanceYue>findYue(FinanceYue financeYue, Integer page, Integer rows) {
        return financeService.findYue(financeYue,page,rows);
    }
    //收入
    @Override
    public PageBean<FinanceShouru>findShouru(FinanceShouru financeShouru, Integer page, Integer rows) {
        return financeService.findShouru(financeShouru,page,rows);
    }
    //积分
    @Override
    public PageBean<FinanceJifen>findJifen(FinanceJifen financeJifen, Integer page, Integer rows) {
        return financeService.findJifen(financeJifen,page,rows);
    }
    @Override
    public PageBean<ClassManage>findManage(ClassManage classManage, Integer page, Integer rows) {
        return financeService.findManage(classManage,page,rows);
    }

    @Override
    public void addManage(ClassManage classManage) {
        financeService.addManage(classManage);
    }
}
