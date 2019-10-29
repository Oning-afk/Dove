package com.future.service.impl;

import com.future.mapper.*;
import com.future.model.*;
import com.future.service.FinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
@Service
public class FinanceServiceImpl implements FinanceService {

    @Autowired
    private FinanceMapper financeMapper;
    @Autowired
    private FgztuikuanMapper fgztuikuanMapper;
    @Autowired
    private FinanceTixianMapper financeTixianMapper;
    @Autowired
    private FinanceKahaoMapper financeKahaoMapper;
    @Autowired
    private FinanceZhifujiluMapper financeZhifujiluMapper;
    @Autowired
    private FinanceYueMapper financeYueMapper;
    @Autowired
    private FinanceShouruMapper financeShouruMapper;
    @Autowired
    private FinanceJifenMapper financeJifenMapper;
    @Autowired
    private ClassManageMapper classManageMapper;
    @Override
    public PageBean<Findingdan> findDingdan(Findingdan findingdan, Integer page, Integer rows) {
        int totalSize = financeMapper.getCount(findingdan);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",findingdan);
        PageBean<Findingdan> finDingdanPageBean = new PageBean<Findingdan>(page, rows, totalSize);
        List<Findingdan> cardVoucherList = financeMapper.findDingdan(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
    @Override
    public PageBean<Findingdan> findDingdanZb(Findingdan findingdan, Integer page, Integer rows) {
        int totalSize = financeMapper.getCountZb(findingdan);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",findingdan);
        PageBean<Findingdan> finDingdanPageBean = new PageBean<Findingdan>(page, rows, totalSize);
        List<Findingdan> cardVoucherList = financeMapper.findDingdanZb(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
    @Override
    public PageBean<Findingdan> findDingdanBj(Findingdan findingdan, Integer page, Integer rows) {
        int totalSize = financeMapper.getCountBj(findingdan);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",findingdan);
        PageBean<Findingdan> finDingdanPageBean = new PageBean<Findingdan>(page, rows, totalSize);
        List<Findingdan> cardVoucherList = financeMapper.findDingdanBj(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
    @Override
    public PageBean<Findingdan> findDingdanXx(Findingdan findingdan, Integer page, Integer rows) {
        int totalSize = financeMapper.getCountXx(findingdan);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",findingdan);
        PageBean<Findingdan> finDingdanPageBean = new PageBean<Findingdan>(page, rows, totalSize);
        List<Findingdan> cardVoucherList = financeMapper.findDingdanXx(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
    @Override
    public PageBean<Fgztuikuan> findTuikuan(Fgztuikuan fgztuikuan, Integer page, Integer rows) {
        int totalSize = fgztuikuanMapper.getCountTuikuan(fgztuikuan);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",fgztuikuan);
        PageBean<Fgztuikuan> finDingdanPageBean = new PageBean<Fgztuikuan>(page, rows, totalSize);
        List<Fgztuikuan> cardVoucherList = fgztuikuanMapper.findTuikuan(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
    @Override
    public PageBean<FinanceTixian> findTixian(FinanceTixian financeTixian, Integer page, Integer rows) {
        int totalSize = financeTixianMapper.getCountTixian(financeTixian);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",financeTixian);
        PageBean<FinanceTixian> finDingdanPageBean = new PageBean<FinanceTixian>(page, rows, totalSize);
        List<FinanceTixian> cardVoucherList = financeTixianMapper.findTixian(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
    @Override
    public PageBean<FinanceKahao> findKahao(FinanceKahao financeKahao, Integer page, Integer rows) {
        int totalSize = financeKahaoMapper.getCountKahao(financeKahao);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",financeKahao);
        PageBean<FinanceKahao> finDingdanPageBean = new PageBean<FinanceKahao>(page, rows, totalSize);
        List<FinanceKahao> cardVoucherList = financeKahaoMapper.findKahao(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
    @Override
    public PageBean<FinanceZhifujilu> findZhifu(FinanceZhifujilu financeZhifujilu, Integer page, Integer rows) {
        int totalSize = financeZhifujiluMapper.getCountZhifu(financeZhifujilu);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",financeZhifujilu);
        PageBean<FinanceZhifujilu> finDingdanPageBean = new PageBean<FinanceZhifujilu>(page, rows, totalSize);
        List<FinanceZhifujilu> cardVoucherList = financeZhifujiluMapper.findZhifu(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
    @Override
    public PageBean<FinanceYue> findYue(FinanceYue financeYue, Integer page, Integer rows) {
        int totalSize = financeYueMapper.getCountYue(financeYue);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",financeYue);
        PageBean<FinanceYue> finDingdanPageBean = new PageBean<FinanceYue>(page, rows, totalSize);
        List<FinanceYue> cardVoucherList = financeYueMapper.findYue(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
    @Override
    public PageBean<FinanceJifen> findJifen(FinanceJifen financeJifen, Integer page, Integer rows) {
        int totalSize = financeJifenMapper.getCountJifen(financeJifen);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",financeJifen);
        PageBean<FinanceJifen> finDingdanPageBean = new PageBean<FinanceJifen>(page, rows, totalSize);
        List<FinanceJifen> cardVoucherList = financeJifenMapper.findJifen(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }

    @Override
    public PageBean<FinanceShouru> findShouru(FinanceShouru financeShouru, Integer page, Integer rows) {
        int totalSize = financeShouruMapper.getCountShouru(financeShouru);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",financeShouru);
        PageBean<FinanceShouru> finDingdanPageBean = new PageBean<FinanceShouru>(page, rows, totalSize);
        List<FinanceShouru> cardVoucherList = financeShouruMapper.findShouru(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
    @Override
    public void updateUser(Findingdan findingdan) {
        financeMapper.updateUser(findingdan);
    }

    @Override
    public void addManage(ClassManage classManage) {
        classManageMapper.addManage(classManage);
    }

    @Override
    public PageBean<ClassManage> findManage(ClassManage classManage, Integer page, Integer rows) {
        int totalSize = classManageMapper.getCountManage(classManage);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",classManage);
        PageBean<ClassManage> finDingdanPageBean = new PageBean<ClassManage>(page, rows, totalSize);
        List<ClassManage> cardVoucherList = classManageMapper.findManage(map);
        finDingdanPageBean.setList(cardVoucherList);
        return finDingdanPageBean;
    }
}
