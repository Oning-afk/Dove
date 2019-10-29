package com.future.model;

public class FinanceJifen {
    private Integer id;

    private String yonghuid;

    private String yonghuming;

    private Integer jifen;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getYonghuid() {
        return yonghuid;
    }

    public void setYonghuid(String yonghuid) {
        this.yonghuid = yonghuid == null ? null : yonghuid.trim();
    }

    public String getYonghuming() {
        return yonghuming;
    }

    public void setYonghuming(String yonghuming) {
        this.yonghuming = yonghuming == null ? null : yonghuming.trim();
    }

    public Integer getJifen() {
        return jifen;
    }

    public void setJifen(Integer jifen) {
        this.jifen = jifen;
    }
}