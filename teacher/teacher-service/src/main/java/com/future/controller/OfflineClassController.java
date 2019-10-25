package com.future.controller;

import com.future.interfaces.OfflineClassApi;
import com.future.model.OfflineClass;
import com.future.model.PageBean;
import com.future.service.OfflineClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * @program: Dove
 * @description: 课堂-线下课管理-控制层
 * @author: 张晋浩
 * @create: 2019-10-25 15:12
 **/
@RestController
public class OfflineClassController implements OfflineClassApi {

    @Autowired
    private OfflineClassService offlineClassService;


    @Override
    public PageBean<OfflineClass> findOfflineClassList(OfflineClass offlineClass, Integer page, Integer rows) {
        return offlineClassService.findOfflineClassList(offlineClass,page,rows);
    }

    @Override
    public void addOffline(OfflineClass offlineClass) {
        offlineClassService.addOffline(offlineClass);
    }

    @Override
    public OfflineClass echoOffline(Long id) {
        return offlineClassService.echoOffline(id);
    }
}
