package com.future.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * @program: dove-parent
 * @description: 用户
 * @author: 邓希凡
 * @create: 2019-10-17 18:55
 **/
@Data
@ToString
public class User implements Serializable {

    private Long id;

    private String name;

    private String usercode;

    private String password;

    private String phone;

    private String email;

    private String solr;

    private Integer type;
}
