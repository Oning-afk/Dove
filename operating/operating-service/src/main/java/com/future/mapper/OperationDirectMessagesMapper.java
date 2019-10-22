package com.future.mapper;

import com.future.model.OperationDirectMessages;
import com.future.model.UserBean;

import java.util.HashMap;
import java.util.List;

public interface OperationDirectMessagesMapper {
    int getMessagesCount(OperationDirectMessages operationDirectMessages);

    List<OperationDirectMessages> findMessagesList(HashMap<String, Object> map);

    UserBean findUserNameById(Long id);

    void updateToRecycle(Long id);

    void uodateToRecycles(Long[] id);

    void updateToBack(Long id);

    void deleteMessages(Long[] id);

    List<UserBean> findUserList();

}
