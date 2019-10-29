package com.future.model;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    /**
     * 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
     */
	public static String app_id = "2016101200666789";

    /**
     * 商户私钥，您的PKCS8格式RSA2私钥
     */
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCK6B8AFwQTU1X+CTUuZ+zgua1uMQoXuCcGv8PvVFG9ITP8y/iZu6ngPIe8QzuYbXJmXACxbf7hyYgLLudEqKsz/bPzk+q1mxbF3bHp/IE0yKnmQ0wFbkO5DI0p9aVHyx3meowm0BZq9yHJNWi4/gZXJgZ+FOHlLeawVxzR21Cj9GC7teCEt6AefErV6wOhi/IMvC4y3DH56u1z437DNqmO9QR45Yf6kmdVT+UPrl9KE7GUVtyrFxVVX063I+loXGmhJvuRxnt11Thf2mf4IKAdhPZOMCM95PqSVxy79uNGyKyzhCgd+t0FrLsTv2XhlFpyICDEOBomAImzHkO8AMIzAgMBAAECggEAQCy5lcsMYPlRc0pBvazZ7YEbNRuG9CpqLV4PYdTs5poecJ6zviLLewO8GihdsjBueAftcgvFg/8d0TzcMAZVAnIl31TpTPnX7ZZdCiNUdlR22iEhUCj/NNEtrsMEl0SqDb90XMIqeUSv4UvBlCYYO88flMSFEOLB/5pfgDz45qXdeg8PitB0+Deny01L+VRWYoR7eNTHILCwyabUu8XYOu1/EoaHuY0+wtDMh/RMhJNx7Sc5zN17qD3dFuMcTj/KsN2dE3ZRnFVDshQ/LOS8cu9XXtRy605O42umxnUAYkNQz5X9dEINMSCXxFmZUZYQ2/JmZQlh7ZaTR3DJLdqMsQKBgQD6V1ANfEaBeHuCVsom/AkXzhU2nhmjhv2ft1E0qv8db5nfgDkBdfhj6qo0EKqLcE8zgezfNfECtN7RzhJs59kKgvtavtGQTbfvUlErOgQ9pZRVg9mV3f+AnGv/u1kvOSL/pb2Vx6Y09MZSixHuOQcphEf/C07i8gGF80lZ1J6QrwKBgQCOC/Q+U+k7qQZQCe7dgO6n7iub5qt1MJ/gmMa5VxVWpYn31qeI73bjgcimWnlUttChLAXbq7TSgbaBB7UdL5kgcacA+2BsTzyV4WJ4Ee8wmpLGcosGp6s4TS+qJiQhZj20VZo5kyBO0nhicDbYx3wtCihmhE5UPwi7BPnbUnFfvQKBgG890ULM0H/DzA5VBqtgH6JGX0LP6lCyMY2BZkJjIc4ww01/qtUtWNz9b/iG12Hy3B7lQx7E133+ZW0RhzqBo/55ybu/Q1w+TNe52nu84hmKtGlzl4JzDZBW8d7Hn4/OcfDr81zVRNQPWPlg9uzGxpn6QAvjOIC8TVT6kMOsKXHdAoGAFy0iI81DH8XbTtHgFGoGBoZYvS4syYkufNHQksr/o0yNL0/ps/EGX+Z8G5BlfYn6jmGFbysb7MDXS0Q7q9BpVp7UldduCx3+j6HflCGw+iguTIzB3EsdJ6mIXmWsvXpWFQdmi4BS5Cl5FO6kNEiQHTUsFFYABcTnIsSUE9Hmx60CgYAcp+rcr+hxbRcubqpP2MoDwCzkn132y3D1/oy56Yqk4Mbt08amWQENkRanZ1/I1bhpZnVWRcz8a/WR2ZNbMoFc6uXiJf7xlKmj8q/haJZ8H/iZi/D5chtXaSvB0RHS7HdlY8MbNtQ0ZyLqXq4j0KxeCslSTLQ5y573n3+Krs1c/w==";

    /**
     * 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
     */
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvTmAJWTttKM3CSvsl9ibiHlR0WAoO9RzxRDjWBlbZ+Q6zuj2/xgbdaV9KAfyC9l+Ra79rmq7iR2Kfm4qm1xDUzFqNsAW3G4bYLVZ6zcihf7qMCd6Tai1bfQPKFEojF0rxq3Ur6X/E0yAsnjvrs/XMeKY8WxEtyZgzK837tAUh6krGsCclGlTzZGKzUH30pNHg1gEwDSprc8TCB5Cnl6nwqoS44+VfLGzkvP4StGtlbr9OiRhIev3ozQHxyMQpGUoylBZ2N8/7/zMOdybrcIvr1psAajj9MPOji3Z/SLPIDrReM1AC+0LjGNXcbzkbDAGnoIkvxuurFhtqzKUt3m/FQIDAQAB";

    /**
     * 服务器异步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
     */
    public static String notify_url = "http://localhost:5880/alipay/alipayNotifyNotice";

    /**
     * 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
     */
    public static String return_url = "http://localhost:5880/alipay/alipayReturnNotice";

    /**
     * 签名方式
     */
    public static String sign_type = "RSA2";

    /**
     * 字符编码格式
     */
    public static String charset = "utf-8";

    /**
     * 支付宝网关
     */
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
}

