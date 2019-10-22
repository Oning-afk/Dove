package com.future.service;

import com.future.model.OperationSingle;
import com.future.model.PageBean;

public interface OperatSingleService {
    PageBean<OperationSingle> findSingleList(Integer page, Integer rows);

    void addSingle(OperationSingle operationSingle);

    OperationSingle echoSingle(long id);

    void delSingle(long id);

    void delSingles(Long[] id);
}
