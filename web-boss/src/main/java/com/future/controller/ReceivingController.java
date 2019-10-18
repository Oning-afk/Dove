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
        return "receiving/receivingList";
    }
}
