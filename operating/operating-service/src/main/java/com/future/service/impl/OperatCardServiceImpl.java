package com.future.service.impl;

import com.future.mapper.CardVoucherLogMapper;
import com.future.mapper.OperatCardMapper;
import com.future.model.CardVoucher;
import com.future.model.CardVoucherLog;
import com.future.model.PageBean;
import com.future.model.SnowFlake;
import com.future.service.OperatCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
@Service
public class OperatCardServiceImpl implements OperatCardService {

    @Autowired
    private OperatCardMapper operatingMapper;

    @Autowired
    private CardVoucherLogMapper cardVoucherLogMapper;

    @Override
    public PageBean<CardVoucher> cardVoucherList(CardVoucher cardVoucher, Integer page, Integer rows) {
        int totalSize = operatingMapper.getCount(cardVoucher);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucher",cardVoucher);
        PageBean<CardVoucher> cardVoucherPageBean = new PageBean<CardVoucher>(page, rows, totalSize);
        List<CardVoucher> cardVoucherList = operatingMapper.cardVoucherList(map);
        cardVoucherPageBean.setList(cardVoucherList);
        return cardVoucherPageBean;
    }

    @Override
    public boolean delCardVoucher(Long[] ids) {
        return operatingMapper.delCardVoucher(ids);
    }

    @Override
    public boolean updateStatusToUp(Long[] id) {
        return operatingMapper.updateStatusToUp(id);
    }

    @Override
    public boolean updateStatusToDown(Long[] id) {
        return operatingMapper.updateStatusToDown(id);
    }

    @Override
    public List<CardVoucher> exportCardVoucher(CardVoucher cardVoucher) {
        return operatingMapper.exportCardVoucher(cardVoucher);
    }

    @Override
    public void addCardVoucher(CardVoucher cardVoucher) {
        if(cardVoucher.getId()!=null){
            cardVoucher.setCardVoucherNumber(cardVoucher.getCardVoucherNumber()-cardVoucher.getReceivedNumber());
            operatingMapper.updateCardVoucher(cardVoucher);
        }else{
            SnowFlake snowFlake = new SnowFlake(2, 3);
            cardVoucher.setCardVoucherNo(snowFlake.nextId());
            operatingMapper.addCardVoucher(cardVoucher);
        }
    }

    @Override
    public CardVoucher echoCard(Long id) {
        return operatingMapper.echoCard(id);
    }

    @Override
    public PageBean<CardVoucherLog> findCardLog(CardVoucherLog cardVoucherLog, Integer page, Integer rows) {
        int totalSize = cardVoucherLogMapper.getcardLogsCount(cardVoucherLog);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("cardVoucherLog",cardVoucherLog);
        PageBean<CardVoucherLog> cardLogPageBean = new PageBean<CardVoucherLog>(page, rows, totalSize);
        List<CardVoucherLog> cardVoucherList = cardVoucherLogMapper.cardLogList(map);
        cardLogPageBean.setList(cardVoucherList);
        return cardLogPageBean;
    }

    @Override
    public List<CardVoucherLog> exportCardLog() {
        return cardVoucherLogMapper.exportCardLog();
    }

    @Override
    public void delCardLogs(Long[] ids) {
        cardVoucherLogMapper.delCardLogs(ids);
    }

    @Override
    public void restoreCardLog(Long[] ids) {
        cardVoucherLogMapper.restoreCardLog(ids);
    }

    @Override
    public void validationCard() {
        List<CardVoucherLog> cardVoucherLogs = cardVoucherLogMapper.exportCardLog();
        long time = new Date().getTime();
        long endTime = 0;
        Long[] ids = new Long[cardVoucherLogs.size()];
        int i = 0;
        for (CardVoucherLog cardVoucherLog : cardVoucherLogs) {
            endTime = (cardVoucherLog.getValiditeDay()*24*60*60*1000) + cardVoucherLog.getReceivedDate().getTime();
            if(endTime <time){
                ids[i] =cardVoucherLog.getId();
                i++;
            }
        }
        if(i >0 ){
            cardVoucherLogMapper.updateCardToOverDue(ids);
        }
    }

    @Override
    public void issueCard(CardVoucherLog cardVoucherLog) {
        cardVoucherLogMapper.issueCard(cardVoucherLog);
        operatingMapper.updateCardCount(cardVoucherLog.getCardVoucherNo());
    }
}
