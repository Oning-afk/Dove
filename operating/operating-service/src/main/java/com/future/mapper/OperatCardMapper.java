package com.future.mapper;

import com.future.model.CardVoucher;
import com.future.model.CardVoucherLog;

import java.util.HashMap;
import java.util.List;

public interface OperatCardMapper {
    int getCount(CardVoucher cardVoucher);

    List<CardVoucher> cardVoucherList(HashMap<String, Object> map);

    boolean delCardVoucher(Long[] ids);

    boolean updateStatusToUp(Long[] id);

    boolean updateStatusToDown(Long[] id);

    List<CardVoucher> exportCardVoucher(CardVoucher cardVoucher);

    void addCardVoucher(CardVoucher cardVoucher);

    void updateCardVoucher(CardVoucher cardVoucher);

    CardVoucher echoCard(Long id);
}
