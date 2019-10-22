package com.future.model;

import java.io.Serializable;

/**
 * @program: dove-parent
 * @description: 用户实体bean
 * @author: 张晋浩
 * @create: 2019-10-22 14:58
 **/
public class UserBean implements Serializable {

    private Long id;

    private String userName;

    private Integer type;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}
