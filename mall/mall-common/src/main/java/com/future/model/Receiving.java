package com.future.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

@Data
@ToString
public class Receiving implements Serializable {
    private  Integer   id;             //id
    private  Integer   userId;         //用户UID
    private  Integer   regionId;       //地区ID
    private  String    address;        //地址
    private  String    name;           //姓名
    private  String    phone;          //电话
    private  Integer   enable;         //是否启用
    private  Integer   defaultAddress; //是否默认
    private  String    regionName;     //地区
}
