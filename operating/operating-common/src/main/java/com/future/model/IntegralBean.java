package com.future.model;

import java.io.Serializable;

public class IntegralBean implements Serializable {

    /**
     * 积分id
     */
    private Long id;

    /**
     * 积分名称
     */
    private String name;

    /**
     * 积分别名
     */
    private String alias;

    /**
     * 积分类型
     */
    private String type;

    /**
     * 积分
     */
    private Integer integral;

    /**
     * 执行次数
     */
    private Integer execute;

    @Override
    public String toString() {
        return "IntegralBean{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", alias='" + alias + '\'' +
                ", type='" + type + '\'' +
                ", integral=" + integral +
                ", execute=" + execute +
                ", status=" + status +
                '}';
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 1:开启
     * 0：关闭
     */
    private Integer status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }

    public Integer getExecute() {
        return execute;
    }

    public void setExecute(Integer execute) {
        this.execute = execute;
    }
}
