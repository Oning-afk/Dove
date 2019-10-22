package com.future.service.impl;

import com.future.mapper.OperatSingleMapper;
import com.future.model.OperationConsult;
import com.future.model.OperationSingle;
import com.future.model.PageBean;
import com.future.service.OperatSingleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @program: dove-parent
 * @description: 运营-内容管理-单页管理-业务处理层
 * @author: 张晋浩
 * @create: 2019-10-21 17:12
 **/
@Service
public class OperatSingleServiceImpl implements OperatSingleService {

    @Autowired
    private OperatSingleMapper operatSingleMapper;

    @Override
    public PageBean<OperationSingle> findSingleList(Integer page, Integer rows) {
        int totalSize = operatSingleMapper.getSingleCounts();
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        PageBean<OperationSingle> operationSinglePageBean = new PageBean<OperationSingle>(page, rows, totalSize);
        List<OperationSingle> operationSingleList = operatSingleMapper.findSingleList(map);
        operationSinglePageBean.setList(operationSingleList);
        return operationSinglePageBean;
    }

    @Override
    public void addSingle(OperationSingle operationSingle) {
        if(operationSingle.getId()!=null){
            operatSingleMapper.updateSingle(operationSingle);
        }else{
            operatSingleMapper.addSingle(operationSingle);
        }
    }

    @Override
    public OperationSingle echoSingle(long id) {
        return operatSingleMapper.echoSingle(id);
    }

    @Override
    public void delSingle(long id) {
        operatSingleMapper.delSingle(id);
    }

    @Override
    public void delSingles(Long[] id) {
        operatSingleMapper.delSingles(id);
    }
}
