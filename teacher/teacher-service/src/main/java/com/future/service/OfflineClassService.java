package com.future.service;

import com.future.model.OfflineClass;
import com.future.model.PageBean;

public interface OfflineClassService {
    PageBean<OfflineClass> findOfflineClassList(OfflineClass offlineClass, Integer page, Integer rows);

    void addOffline(OfflineClass offlineClass);

    OfflineClass echoOffline(Long id);
}
