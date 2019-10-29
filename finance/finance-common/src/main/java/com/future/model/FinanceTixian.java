package com.future.model;

public class FinanceTixian {
    private Integer id;

    private String name;

    private Integer tixianjine;

    private String tixianleixing;

    private String tixianren;

    private String tixianzhanghu;

    private String shenqingshijian;

    private Integer zhaungtai;

    private Integer userid;

    private String quxiaoyuanyin;

    private String shibaiyuanyin;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getTixianjine() {
        return tixianjine;
    }

    public void setTixianjine(Integer tixianjine) {
        this.tixianjine = tixianjine;
    }

    public String getTixianleixing() {
        return tixianleixing;
    }

    public void setTixianleixing(String tixianleixing) {
        this.tixianleixing = tixianleixing == null ? null : tixianleixing.trim();
    }

    public String getTixianren() {
        return tixianren;
    }

    public void setTixianren(String tixianren) {
        this.tixianren = tixianren == null ? null : tixianren.trim();
    }

    public String getTixianzhanghu() {
        return tixianzhanghu;
    }

    public void setTixianzhanghu(String tixianzhanghu) {
        this.tixianzhanghu = tixianzhanghu == null ? null : tixianzhanghu.trim();
    }

    public String getShenqingshijian() {
        return shenqingshijian;
    }

    public void setShenqingshijian(String shenqingshijian) {
        this.shenqingshijian = shenqingshijian == null ? null : shenqingshijian.trim();
    }

    public Integer getZhaungtai() {
        return zhaungtai;
    }

    public void setZhaungtai(Integer zhaungtai) {
        this.zhaungtai = zhaungtai;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getQuxiaoyuanyin() {
        return quxiaoyuanyin;
    }

    public void setQuxiaoyuanyin(String quxiaoyuanyin) {
        this.quxiaoyuanyin = quxiaoyuanyin == null ? null : quxiaoyuanyin.trim();
    }

    public String getShibaiyuanyin() {
        return shibaiyuanyin;
    }

    public void setShibaiyuanyin(String shibaiyuanyin) {
        this.shibaiyuanyin = shibaiyuanyin == null ? null : shibaiyuanyin.trim();
    }
}