package com.future.service.impl;

import com.future.mapper.OfflineClassMapper;
import com.future.model.OfflineClass;
import com.future.model.PageBean;
import com.future.service.OfflineClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @program: Dove
 * @description: 课堂-线下课管理-业务处理层
 * @author: 张晋浩
 * @create: 2019-10-25 15:13
 **/
@Service
public class OfflineClassServiceImpl implements OfflineClassService {

    @Autowired
    private OfflineClassMapper offlineClassMapper;

    @Override
    public PageBean<OfflineClass> findOfflineClassList(OfflineClass offlineClass, Integer page, Integer rows) {
        Integer totalSize = offlineClassMapper.getOfflineClassCount(offlineClass);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("offlineClass",offlineClass);
        PageBean<OfflineClass> offlineClassPageBean = new PageBean<OfflineClass>(page, rows, totalSize);
        List<OfflineClass> offlineClassList = offlineClassMapper.findOfflineClassList(map);
        offlineClassPageBean.setList(offlineClassList);
        return offlineClassPageBean;
    }

    @Override
    public void addOffline(OfflineClass offlineClass) {
        if(offlineClass != null && offlineClass.getId() != null ){
            offlineClassMapper.updateOffline(offlineClass);
        }else{
            offlineClassMapper.addOffline(offlineClass);
        }
    }

    @Override
    public OfflineClass echoOffline(Long id) {
        return offlineClassMapper.echoOffline(id);
    }
}
