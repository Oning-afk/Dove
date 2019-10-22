package com.future.mapper;

import com.future.model.OperationSingle;
import com.future.model.PageBean;

import java.util.List;
import java.util.Map;

public interface OperatSingleMapper {
    int getSingleCounts();

    List<OperationSingle> findSingleList(Map map);

    void updateSingle(OperationSingle operationSingle);

    void addSingle(OperationSingle operationSingle);

    OperationSingle echoSingle(long id);

    void delSingle(long id);

    void delSingles(Long[] id);
}
