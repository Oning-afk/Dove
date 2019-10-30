package com.future.model;

import lombok.Data;
import lombok.ToString;

import java.util.Date;

@Data
@ToString
public class Order {
    private Integer  orderId;          //id
    private Integer  userId;           //用户id
    private Integer  commodityId;      //商品id
    private Integer  inventory;        //兑换价格
    private Integer  exchangeNumber;   //兑换数量
    private String   methodPayment;    //支付方式
    private Double   payAmount;        //支付金额
    private String   address;          //地址
    private Date     generatetime;     //生成时间

    private String   userName;         //用户名称
    private String   commodityName;    //商品名称
    private Double  commodityFreight;  //运费
    private String   userCode;         //用户账号

}
