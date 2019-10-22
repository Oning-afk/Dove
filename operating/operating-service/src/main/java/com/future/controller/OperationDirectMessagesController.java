package com.future.controller;

import com.future.interfaces.OperationDirectMessagesApi;
import com.future.model.CardVoucherLog;
import com.future.model.OperationDirectMessages;
import com.future.model.PageBean;
import com.future.model.UserBean;
import com.future.service.OperationDirectMessagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @program: dove-parent
 * @description: 运营-内容管理-私信管理-控制层
 * @author: 张晋浩
 * @create: 2019-10-22 14:44
 **/
@RestController
public class OperationDirectMessagesController implements OperationDirectMessagesApi {

    @Autowired
    private OperationDirectMessagesService operationDirectMessagesService;

    @Override
    public PageBean<OperationDirectMessages> findMessagesList(OperationDirectMessages operationDirectMessages, Integer page, Integer rows) {
        return operationDirectMessagesService.findMessagesList(operationDirectMessages,page,rows);
    }

    @Override
    public void updateToRecycle(Long id) {
        operationDirectMessagesService.updateToRecycle(id);
    }

    @Override
    public void uodateToRecycles(Long[] id) {
        operationDirectMessagesService.uodateToRecycles(id);
    }

    @Override
    public void updateToBack(Long id) {
        operationDirectMessagesService.updateToBack(id);
    }

    @Override
    public void deleteMessages(Long[] id) {
        operationDirectMessagesService.deleteMessages(id);
    }

    @Override
    public List<UserBean> findUserList() {
        return operationDirectMessagesService.findUserList();
    }

}
