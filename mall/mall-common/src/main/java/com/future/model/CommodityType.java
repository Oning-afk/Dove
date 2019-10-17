package com.future.model;

import lombok.Data;
import lombok.ToString;

import javax.swing.*;

@Data
@ToString
public class CommodityType {
    private  Integer id;
    private  String name;
    private  Integer pId;
    private  Integer sorting;
}
