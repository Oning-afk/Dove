package com.future.interfaces;

import com.future.model.CardVoucher;
import com.future.model.CardVoucherLog;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface OperatCardServiceApi {

    @RequestMapping("findCardVoucher")
    PageBean<CardVoucher> cardVoucherList(@RequestBody(required = false) CardVoucher cardVoucher, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    @RequestMapping("delCardVoucher")
    boolean delCardVoucher(@RequestParam(value = "ids",required = false)Long[] ids);

    @RequestMapping("updateStatusToUp")
    boolean updateStatusToUp(@RequestParam(value = "ids",required = false)Long[] id);

    @RequestMapping("updateStatusToDown")
    boolean updateStatusToDown(@RequestParam(value = "ids",required = false)Long[] id);

    @RequestMapping("exportCardVoucher")
    List<CardVoucher> exportCardVoucher(@RequestBody(required = false)CardVoucher cardVoucher);

    @RequestMapping("addCardVoucher")
    void addCardVoucher(@RequestBody(required = false)CardVoucher cardVoucher);

    @RequestMapping("echoCard")
    CardVoucher echoCard(@RequestParam(value = "id",required = false)Long id);

    @RequestMapping("findCardLog")
    PageBean<CardVoucherLog> findCardLog(@RequestBody(required = false)CardVoucherLog cardVoucherLog, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    @RequestMapping("exportCardLog")
    List<CardVoucherLog> exportCardLog();

    @RequestMapping("delCardLogs")
    void delCardLogs(@RequestParam(value = "ids",required = false)Long[] ids);

    @RequestMapping("restoreCardLog")
    void restoreCardLog(@RequestParam(value = "ids",required = false)Long[] ids);

    @RequestMapping("issueCard")
    void issueCard(@RequestBody(required = false) CardVoucherLog cardVoucherLog);
}
