package com.future.model;

import lombok.Data;
import lombok.ToString;

import javax.swing.*;
import java.io.Serializable;
import java.util.Date;

/**
 * 商品管理
 */
@Data
@ToString
public class Commodity implements Serializable {
    private  Integer id;              //ID
    private  String commodityName;    //商品名称
    private  Double price;            //兑换价格（积分）
    private  Integer inventory;       //库存
    private  Double freight;          //运费（积分）
    private  Integer state;           //商品状态
    private  Date creationTime;     //创建时间
    private  Integer essence;         //是否精华
    private  String introduction;     //商品简介
    private  String coverimg;         //商品封面
    private  Integer classificationId;//商品分类
    private  String details;          //商品详情
    private  String name;
}
