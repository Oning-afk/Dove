package com.future.service.impl;

import com.future.mapper.OperationDirectMessagesMapper;
import com.future.model.OperationConsult;
import com.future.model.OperationDirectMessages;
import com.future.model.PageBean;
import com.future.model.UserBean;
import com.future.service.OperationDirectMessagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;

/**
 * @program: dove-parent
 * @description: 运营-内容管理-私信管理-业务处理
 * @author: 张晋浩
 * @create: 2019-10-22 14:43
 **/
@Service
public class OperationDirectMessagesServiceImpl implements OperationDirectMessagesService {

    @Autowired
    private OperationDirectMessagesMapper operationDirectMessagesMapper;

    @Override
    public PageBean<OperationDirectMessages> findMessagesList(OperationDirectMessages operationDirectMessages, Integer page, Integer rows) {
        int totalSize = operationDirectMessagesMapper.getMessagesCount(operationDirectMessages);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("operationDirectMessages",operationDirectMessages);
        PageBean<OperationDirectMessages> operationDirectMessagesPageBean = new PageBean<OperationDirectMessages>(page, rows, totalSize);
        List<OperationDirectMessages> operationDirectMessagesList = operationDirectMessagesMapper.findMessagesList(map);
        for (OperationDirectMessages directMessages : operationDirectMessagesList) {
            String[] split = directMessages.getDialogueUser().split(",");
            UserBean userNameById = operationDirectMessagesMapper.findUserNameById(directMessages.getUserId());
            directMessages.setUserName(userNameById.getUserName());
            UserBean userNameByIds = operationDirectMessagesMapper.findUserNameById(directMessages.getDialogueUserId());
            directMessages.setDialogueUserName(userNameByIds.getUserName());
            String userName = "";
            for (String s : split) {
                long l = Long.parseLong(s);
                UserBean userBean = operationDirectMessagesMapper.findUserNameById(l);
                userName += ","+userBean.getUserName();
            }
            directMessages.setDialogueUserNames(userName.substring(1));
        }
        operationDirectMessagesPageBean.setList(operationDirectMessagesList);
        return operationDirectMessagesPageBean;
    }

    @Override
    public void updateToRecycle(Long id) {
        operationDirectMessagesMapper.updateToRecycle(id);
    }

    @Override
    public void uodateToRecycles(Long[] id) {
        operationDirectMessagesMapper.uodateToRecycles(id);
    }

    @Override
    public void updateToBack(Long id) {
        operationDirectMessagesMapper.updateToBack(id);
    }

    @Override
    public void deleteMessages(Long[] id) {
        operationDirectMessagesMapper.deleteMessages(id);
    }

    @Override
    public List<UserBean> findUserList() {
        return operationDirectMessagesMapper.findUserList();
    }
}
