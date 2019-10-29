package com.future.mapper;


import com.future.model.ClassManage;

import java.util.HashMap;
import java.util.List;

public interface ClassManageMapper {
    int getCountManage(ClassManage classManage);
    List<ClassManage> findManage(HashMap<String, Object> map);
    void addManage(ClassManage classManage);
}