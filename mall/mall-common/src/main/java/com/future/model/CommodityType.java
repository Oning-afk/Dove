package com.future.model;

import lombok.Data;
import lombok.ToString;

import javax.swing.*;
import java.util.List;
import java.util.Map;

@Data
@ToString
public class CommodityType {
    private  Integer id;
    private  String name;
    private  Integer pid;
    private  Integer sorting;
    private List<CommodityType> children;
}
