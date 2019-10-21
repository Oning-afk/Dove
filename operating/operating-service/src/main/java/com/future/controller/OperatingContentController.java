package com.future.controller;

import com.future.interfaces.OperatingContentServiceApi;
import com.future.model.OperationConsult;
import com.future.model.PageBean;
import com.future.service.OperatingContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: dove-parent
 * @description: 运营-内容管理-控制层
 * @author: 张晋浩
 * @create: 2019-10-18 20:18
 **/
@RestController
public class OperatingContentController implements OperatingContentServiceApi {

    @Autowired
    private OperatingContentService operatingContentService;


    @Override
    public PageBean<OperationConsult> findConsultingList(OperationConsult operationConsult, Integer page, Integer rows) {
        return operatingContentService.findConsultingList(operationConsult,page,rows);
    }

    @Override
    public void updateDownRecommended(Long id) {
        operatingContentService.updateDownRecommended(id);
    }

    @Override
    public void updateToRecommended(Long id) {
        operatingContentService.updateToRecommended(id);
    }

    @Override
    public void deleteConsult(Long[] ids) {
        operatingContentService.deleteConsult(ids);
    }

    @Override
    public void addOperationConsult(OperationConsult operationConsult) {
        operatingContentService.addOperationConsult(operationConsult);
    }

    @Override
    public OperationConsult echoConsult(Long id) {
        return operatingContentService.echoConsult(id);
    }
}
