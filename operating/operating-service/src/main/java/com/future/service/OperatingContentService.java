package com.future.service;

import com.future.model.OperationConsult;
import com.future.model.PageBean;

public interface OperatingContentService {
    PageBean<OperationConsult> findConsultingList(OperationConsult operationConsult, Integer page, Integer rows);

    void updateDownRecommended(Long id);

    void updateToRecommended(Long id);

    void deleteConsult(Long[] ids);

    void addOperationConsult(OperationConsult operationConsult);

    OperationConsult echoConsult(Long id);
}
