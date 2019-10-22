package com.future.controller;

import com.future.model.OperationDirectMessages;
import com.future.model.PageBean;
import com.future.model.UserBean;
import com.future.service.OperationDirectMessagesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @program: dove-parent
 * @description: 运营-内容管理-私信管理-控制层
 * @author: 张晋浩
 * @create: 2019-10-22 18:32
 **/
@RequestMapping("operating/message")
@Controller
public class OperationDirectMessagesController {

    @Autowired
    private OperationDirectMessagesService operationDirectMessagesService;

    /**
     * 运营-内容管理-私信管理-条件分页查询
     * @param operationDirectMessages
     * @param model
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("findMessagesList")
    public String findMessagesList(OperationDirectMessages operationDirectMessages , Model model, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows){
        PageBean<OperationDirectMessages> messagesList = operationDirectMessagesService.findMessagesList(operationDirectMessages, page, rows);
        List<UserBean> list = operationDirectMessagesService.findUserList();
        model.addAttribute("list",messagesList);
        model.addAttribute("bean",operationDirectMessages);
        model.addAttribute("userList",list);
        if(operationDirectMessages!=null && operationDirectMessages.getIsDel() !=null){
            if (operationDirectMessages.getIsDel() == 1) {
                return "operating/message/recycleList";
            }else{
                return "operating/message/messageList";
            }
        }else{
            return "operating/message/messageList";
        }
    }

    /**
     * 运营-内容管理-私信管理-放入回收站
     * @param id
     * @return
     */
    @RequestMapping("updateToRecycle")
    public void updateToRecycle(Long id){
        operationDirectMessagesService.updateToRecycle(id);
    }

    /**
     * 运营-内容管理-私信管理-批量回收站
     * @param id
     * @return
     */
    @RequestMapping("updateToRecycles")
    public void updateToRecycles(Long[] id){
        operationDirectMessagesService.uodateToRecycles(id);
    }

    /**
     * 运营-内容管理-私信管理-恢复
     * @param id
     * @return
     */
    @RequestMapping("updateToBack")
    public void updateToBack(Long id){
        operationDirectMessagesService.updateToBack(id);
    }

    /**
     * 运营-内容管理-私信管理-彻底删除
     * @param id
     * @return
     */
    @RequestMapping("deleteMessages")
    public void deleteMessages(Long[] id){
        operationDirectMessagesService.deleteMessages(id);
    }
}
