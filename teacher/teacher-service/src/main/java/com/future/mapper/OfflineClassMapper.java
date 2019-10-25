package com.future.mapper;

import com.future.model.OfflineClass;

import java.util.HashMap;
import java.util.List;

public interface OfflineClassMapper {

    Integer getOfflineClassCount(OfflineClass offlineClass);

    List<OfflineClass> findOfflineClassList(HashMap<String, Object> map);

    void addOffline(OfflineClass offlineClass);

    OfflineClass echoOffline(Long id);

    void updateOffline(OfflineClass offlineClass);
}