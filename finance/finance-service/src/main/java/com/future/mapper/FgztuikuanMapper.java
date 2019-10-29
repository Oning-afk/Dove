package com.future.mapper;

import com.future.model.Fgztuikuan;

import java.util.HashMap;

import java.util.List;

public interface FgztuikuanMapper {
    int getCountTuikuan(Fgztuikuan fgztuikuan);
    List<Fgztuikuan> findTuikuan(HashMap<String, Object> map);
}
