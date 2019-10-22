package com.future.service;

import com.future.model.CardVoucher;
import com.future.model.CardVoucherLog;
import com.future.model.PageBean;

import java.util.List;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
public interface OperatCardService {
    PageBean<CardVoucher> cardVoucherList(CardVoucher cardVoucher, Integer page, Integer rows);

    boolean delCardVoucher(Long[] ids);

    boolean updateStatusToUp(Long[] id);

    boolean updateStatusToDown(Long[] id);

    List<CardVoucher> exportCardVoucher(CardVoucher cardVoucher);

    void addCardVoucher(CardVoucher cardVoucher);

    CardVoucher echoCard(Long id);

    PageBean<CardVoucherLog> findCardLog(CardVoucherLog cardVoucherLog, Integer page, Integer rows);

    List<CardVoucherLog> exportCardLog();

    void delCardLogs(Long[] ids);

    void restoreCardLog(Long[] ids);

    void validationCard();

    void issueCard(CardVoucherLog cardVoucherLog);
}
