package com.future.controller;

import com.future.interfaces.OperatCardServiceApi;
import com.future.model.CardVoucher;
import com.future.model.CardVoucherLog;
import com.future.model.PageBean;
import com.future.service.OperatCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:45
 **/

@RestController
public class OperatCardController implements OperatCardServiceApi {

    @Autowired
    private OperatCardService operatingService;

    @Override
    public PageBean<CardVoucher> cardVoucherList(CardVoucher cardVoucher, Integer page, Integer rows) {
        return operatingService.cardVoucherList(cardVoucher,page,rows);
    }

    @Override
    public boolean delCardVoucher(Long[] ids) {

        return operatingService.delCardVoucher(ids);
    }

    @Override
    public boolean updateStatusToUp(Long[] id) {
        return operatingService.updateStatusToUp(id);
    }

    @Override
    public boolean updateStatusToDown(Long[] id) {
        return operatingService.updateStatusToDown(id);
    }

    @Override
    public List<CardVoucher> exportCardVoucher(CardVoucher cardVoucher) {
        return operatingService.exportCardVoucher(cardVoucher);
    }

    @Override
    public void addCardVoucher(CardVoucher cardVoucher) {
        operatingService.addCardVoucher(cardVoucher);
    }

    @Override
    public CardVoucher echoCard(Long id) {
        return operatingService.echoCard(id);
    }

    @Override
    public PageBean<CardVoucherLog> findCardLog(CardVoucherLog cardVoucherLog, Integer page, Integer rows) {
        return operatingService.findCardLog(cardVoucherLog,page,rows);
    }

    @Override
    public List<CardVoucherLog> exportCardLog() {
        return operatingService.exportCardLog();
    }

    @Override
    public void delCardLogs(Long[] ids) {
        operatingService.delCardLogs(ids);
    }

    @Override
    public void restoreCardLog(Long[] ids) {
        operatingService.restoreCardLog(ids);
    }
}
