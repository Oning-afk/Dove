package com.future.interfaces;

import com.future.model.PageBean;
import com.future.model.Receiving;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface ReceivingServiceApi {

    @RequestMapping("findReceiving")
    public PageBean<Receiving> receivingList(@RequestBody(required = false) Receiving receiving, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

}
