package com.future.controller;

import com.future.model.CardVoucher;
import com.future.model.PageBean;
import com.future.service.OperatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 * @program: dove-parent
 * @description: 运营控制层
 * @author: 张晋浩
 * @create: 2019-10-14 20:19
 **/
@Controller
@RequestMapping("operating")
public class OperatingController {
    @Autowired
    private OperatingService operatingService;

    @RequestMapping(value = "findCardVoucher")
    public String cardVoucherList(CardVoucher cardVoucher, Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<CardVoucher> cardVoucherPageBean = operatingService.cardVoucherList(cardVoucher, page, rows);
        model.addAttribute("cardVoucherPageBean",cardVoucherPageBean);
        return "operating/cardVoucherList";
    }


}
