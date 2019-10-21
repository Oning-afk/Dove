package com.future.service.impl;

import com.future.mapper.OperationConsultMapper;
import com.future.model.CardVoucher;
import com.future.model.OperationConsult;
import com.future.model.PageBean;
import com.future.service.OperatingContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * @program: dove-parent
 * @description: 运营-内容管理-业务处理层
 * @author: 张晋浩
 * @create: 2019-10-18 20:17
 **/
@Service
public class OperatingContentServiceImpl implements OperatingContentService {

    @Autowired
    private OperationConsultMapper operationConsultMapper;


    @Override
    public PageBean<OperationConsult> findConsultingList(OperationConsult operationConsult, Integer page, Integer rows) {
        int totalSize = operationConsultMapper.getConsultingCounts(operationConsult);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("operationConsult",operationConsult);
        PageBean<OperationConsult> cardVoucherPageBean = new PageBean<OperationConsult>(page, rows, totalSize);
        List<OperationConsult> cardVoucherList = operationConsultMapper.findConsultingList(map);
        cardVoucherPageBean.setList(cardVoucherList);
        return cardVoucherPageBean;
    }

    @Override
    public void updateDownRecommended(Long id) {
        operationConsultMapper.updateDownRecommended(id);
    }

    @Override
    public void updateToRecommended(Long id) {
        operationConsultMapper.updateToRecommended(id);
    }

    @Override
    public void deleteConsult(Long[] ids) {
        operationConsultMapper.deleteConsult(ids);
    }

    @Override
    public void addOperationConsult(OperationConsult operationConsult) {
        if(operationConsult.getId() != null){
            operationConsultMapper.updateOperationConsult(operationConsult);
        }else {
            operationConsultMapper.addOperationConsult(operationConsult);
        }
    }

    @Override
    public OperationConsult echoConsult(Long id) {
        return operationConsultMapper.echoConsult(id);
    }
}
