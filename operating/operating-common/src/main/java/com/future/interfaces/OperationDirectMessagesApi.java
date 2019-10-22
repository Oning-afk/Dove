package com.future.interfaces;

import com.future.model.*;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface OperationDirectMessagesApi {

    @RequestMapping("findMessagesList")
    PageBean<OperationDirectMessages> findMessagesList(@RequestBody(required = false) OperationDirectMessages operationDirectMessages, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    @RequestMapping("updateToRecycle")
    void updateToRecycle(@RequestParam(value = "id",required = false) Long id);

    @RequestMapping("uodateToRecycles")
    void uodateToRecycles(@RequestParam(value = "id",required = false) Long[] id);

    @RequestMapping("updateToBack")
    void updateToBack(@RequestParam(value = "id",required = false) Long id);

    @RequestMapping("deleteMessages")
    void deleteMessages(@RequestParam(value = "id",required = false) Long[] id);

    @RequestMapping("findUserList")
    List<UserBean> findUserList();
}
