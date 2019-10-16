package com.future.interfaces;

import com.future.model.CardVoucher;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface OperatingServiceApi {

    @RequestMapping("findCardVoucher")
    public PageBean<CardVoucher> cardVoucherList(@RequestBody(required = false) CardVoucher cardVoucher, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);
}
