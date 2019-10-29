package com.future.service;


import com.future.model.*;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
public interface FinanceService {
    PageBean<Findingdan> findDingdan(Findingdan findingdan, Integer page, Integer rows);
    PageBean<Findingdan> findDingdanZb(Findingdan findingdan, Integer page, Integer rows);
    PageBean<Findingdan> findDingdanBj(Findingdan findingdan, Integer page, Integer rows);
    PageBean<Findingdan> findDingdanXx(Findingdan findingdan, Integer page, Integer rows);
    PageBean<Fgztuikuan> findTuikuan(Fgztuikuan fgztuikuan, Integer page, Integer rows);
    PageBean<FinanceTixian> findTixian(FinanceTixian financeTixian, Integer page, Integer rows);
    PageBean<FinanceKahao> findKahao(FinanceKahao financeKahao, Integer page, Integer rows);
    PageBean<FinanceZhifujilu> findZhifu(FinanceZhifujilu financeZhifujilu, Integer page, Integer rows);
    PageBean<FinanceYue> findYue(FinanceYue financeYue, Integer page, Integer rows);
    PageBean<FinanceShouru> findShouru(FinanceShouru financeShouru, Integer page, Integer rows);
    PageBean<FinanceJifen> findJifen(FinanceJifen financeJifen, Integer page, Integer rows);
    PageBean<ClassManage> findManage(ClassManage classManage, Integer page, Integer rows);
    void updateUser(Findingdan findingdan);
    void addManage(ClassManage classManage);
}
