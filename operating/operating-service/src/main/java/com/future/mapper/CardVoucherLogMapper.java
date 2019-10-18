package com.future.mapper;

import com.future.model.CardVoucherLog;

import java.util.HashMap;
import java.util.List;

public interface CardVoucherLogMapper {
    int getcardLogsCount(CardVoucherLog cardVoucherLog);

    List<CardVoucherLog> cardLogList(HashMap<String, Object> map);

    List<CardVoucherLog> exportCardLog();

    void delCardLogs(Long[] ids);

    void restoreCardLog(Long[] ids);

    void updateCardToOverDue(Long[] ids);
}
