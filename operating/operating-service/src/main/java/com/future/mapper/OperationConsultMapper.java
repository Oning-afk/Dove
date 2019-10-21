package com.future.mapper;

import com.future.model.OperationConsult;

import java.util.HashMap;
import java.util.List;

public interface OperationConsultMapper {
    int getConsultingCounts(OperationConsult operationConsult);

    List<OperationConsult> findConsultingList(HashMap<String, Object> map);

    void updateDownRecommended(Long id);

    void updateToRecommended(Long id);

    void deleteConsult(Long[] ids);

    void addOperationConsult(OperationConsult operationConsult);

    OperationConsult echoConsult(Long id);

    void updateOperationConsult(OperationConsult operationConsult);

}
