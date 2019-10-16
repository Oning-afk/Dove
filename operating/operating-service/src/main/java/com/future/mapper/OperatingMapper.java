package com.future.mapper;

import com.future.model.CardVoucher;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;

public interface OperatingMapper {
    int getCount(CardVoucher cardVoucher);

    List<CardVoucher> cardVoucherList(HashMap<String, Object> map);
}
