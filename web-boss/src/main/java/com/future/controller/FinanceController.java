package com.future.controller;

import com.future.model.*;

import com.future.service.FinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @program: dove-parent
 * @description: 财务控制层
 * @author: 付光泽
 * @create: 2019-10-14 20:19
 **/
@Controller
@RequestMapping("finance")
public class FinanceController {
    @Autowired
    private FinanceService financeService;
    //订单Db
    @RequestMapping(value = "findDingdan")
    public String findDingdan(Findingdan findingdan, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Findingdan> cardVoucherPageBean = financeService.findDingdan(findingdan, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findDingdanDb";
    }
    // 删除
    @RequestMapping("/delDingdan")
    public String delDingdan(Findingdan findingdan){
        financeService.delDingdan(findingdan);
        return "redirect:/userList";
    }
    //订单Xx
    @RequestMapping(value = "findDingdanXx")
    public String findDingdanXx(Findingdan findingdan, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Findingdan> cardVoucherPageBean = financeService.findDingdanXx(findingdan, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findDingdanXx";
    }
    //订单Bj
    @RequestMapping(value = "findDingdanBj")
    public String findDingdanBJ(Findingdan findingdan, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Findingdan> cardVoucherPageBean = financeService.findDingdanBj(findingdan, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findDingdanBj";
    }
    //订单Zb
    @RequestMapping(value = "findDingdanZb")
    public String findDingdanZb(Findingdan findingdan, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Findingdan> cardVoucherPageBean = financeService.findDingdanZb(findingdan, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findDingdanZb";
    }
    //退款
    @RequestMapping(value = "findTuikuan")
    public String findTuikuan(Fgztuikuan fgztuikuan, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Fgztuikuan> cardVoucherPageBean = financeService.findTuikuan(fgztuikuan, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findTuikuanDb";
    }
    //提现
    @RequestMapping(value = "findTixian")
    public String findTixian(FinanceTixian financeTixian, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<FinanceTixian> cardVoucherPageBean = financeService.findTixian(financeTixian, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findTixianDengdai";
    }
    //卡号
    @RequestMapping(value = "findKahao")
    public String findKahao(FinanceKahao financeKahao, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<FinanceKahao> cardVoucherPageBean = financeService.findKahao(financeKahao, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findKahao";
    }
    //支付记录
        @RequestMapping(value = "findZhifu")
        public String findZhifu(FinanceZhifujilu financeZhifujilu, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
            PageBean<FinanceZhifujilu> cardVoucherPageBean = financeService.findZhifu(financeZhifujilu, page, rows);
            model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
            return "finance/findZhifu";
    }
    //余额
    @RequestMapping(value = "findYue")
    public String findYue(FinanceYue financeYue, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<FinanceYue> cardVoucherPageBean = financeService.findYue(financeYue, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findYue";
    }
    //收入
    @RequestMapping(value = "findShouru")
    public String findShouru(FinanceShouru financeShouru, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<FinanceShouru> cardVoucherPageBean = financeService.findShouru(financeShouru, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findShouru";
    }
    //积分
    @RequestMapping(value = "findJifen")
    public String findJifen(FinanceJifen financeJifen, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<FinanceJifen> cardVoucherPageBean = financeService.findJifen(financeJifen, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findJifen";
    }
    //班级课管理
    @RequestMapping(value = "findManage")
    public String findManage(ClassManage classManage, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<ClassManage> cardVoucherPageBean = financeService.findManage(classManage, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "finance/findManage";
    }
    //添加课程
    @RequestMapping(value = "addManage")
    public String addManage(ClassManage classManage,Model model){
        financeService.addManage(classManage);
        return "finance/findManage";
    }
    //添加课程
    @RequestMapping(value = "addManagejs")
    public String addManagejs(){
        return "finance/addManage";
    }
}
