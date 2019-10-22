package com.future.interfaces;

import com.future.model.CardVoucher;
import com.future.model.OperationSingle;
import com.future.model.PageBean;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public interface OperatSingleApi {

    @RequestMapping("findSingleList")
    PageBean<OperationSingle> findSingleList(@RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    @RequestMapping("addSingle")
    void addSingle(@RequestBody( required = false) OperationSingle operationSingle);

    @RequestMapping("echoSingle")
    OperationSingle echoSingle(@RequestParam(value = "id",required = false) long id);

    @RequestMapping("delSingle")
    void delSingle(@RequestParam(value = "id",required = false)long id);

    @RequestMapping("delSingles")
    void delSingles(@RequestParam(value = "id",required = false)Long[] id);
}
