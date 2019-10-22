package com.future.service;

import com.future.model.OperationDirectMessages;
import com.future.model.PageBean;
import com.future.model.UserBean;

import java.util.List;

public interface OperationDirectMessagesService {
    PageBean<OperationDirectMessages> findMessagesList(OperationDirectMessages operationDirectMessages, Integer page, Integer rows);

    void updateToRecycle(Long id);

    void uodateToRecycles(Long[] id);

    void updateToBack(Long id);

    void deleteMessages(Long[] id);

    List<UserBean> findUserList();
}
