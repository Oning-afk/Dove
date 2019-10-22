package com.future.controller;

import com.future.interfaces.OperatSingleApi;
import com.future.model.OperationSingle;
import com.future.model.PageBean;
import com.future.service.OperatSingleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: dove-parent
 * @description: 运营-内容管理-单页管理-控制层
 * @author: 张晋浩
 * @create: 2019-10-21 17:14
 **/
@RestController
public class OperatSingleController implements OperatSingleApi {

    @Autowired
    private OperatSingleService operatSingleService;
    @Override
    public PageBean<OperationSingle> findSingleList(Integer page, Integer rows) {
        return operatSingleService.findSingleList(page,rows);
    }

    @Override
    public void addSingle(OperationSingle operationSingle) {
        operatSingleService.addSingle(operationSingle);
    }

    @Override
    public OperationSingle echoSingle(long id) {
        return operatSingleService.echoSingle(id);
    }

    @Override
    public void delSingle(long id) {
        operatSingleService.delSingle(id);
    }

    @Override
    public void delSingles(Long[] id) {
        operatSingleService.delSingles(id);
    }
}
