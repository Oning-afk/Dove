package com.future.controller;

import com.future.model.PageBean;
import com.future.model.Receiving;
import com.future.service.ReceivingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 收货地址管理
 *
 * LJ
 */
@Controller
@RequestMapping("receiving")
public class ReceivingController {
    @Autowired
    private ReceivingService receivingService;

    @RequestMapping(value = "findReceiving")
    public String orderList(Receiving receiving, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<Receiving> receivingPageBean = receivingService.receivingList(receiving, page, rows);
        model.addAttribute("receivingPageBean",receivingPageBean);
        return "mall/receiving/receivingList";
    }
    @RequestMapping("addReceiving")
    private String addReceiving(){
        return "mall/receiving/addReceiving";
    }

    @RequestMapping("addRecervring")
    private String addRecervring(Receiving receiving){
        receivingService.addReceiving(receiving);
        return "redirect:findReceiving";
    }

    /**
     * 收货地址—启用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateReceivingToUp")
    public String updateReceivingToUp(Long[] id, Model model){
        boolean flag = receivingService.updateReceivingToUp(id);
        if(flag){
            model.addAttribute("defaultAddress",0);
            model.addAttribute("data","启用成功!");
        }
        return "redirect:findReceiving";
    }

    /**
     * 收货地址—禁用
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "updateReceivingToDown")
    public String updateReceivingToDown(Long[] id, Model model){
        boolean flag = receivingService.updateReceivingToDown(id);
        if(flag){
            model.addAttribute("defaultAddress",1);
            model.addAttribute("data","禁用成功!");
        }
        return "redirect:findReceiving";
    }
    /**
     * 收货地址—删除
     * @param id
     * @param
     * @return
     */
    @RequestMapping("deleteReceiving")
    public String deleteReceiving(Long[] id){
        receivingService.deleteReceiving(id);
        return "redirect:findReceiving";
    }


}
