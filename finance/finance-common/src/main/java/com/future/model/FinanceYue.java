package com.future.model;

public class FinanceYue {
    private Integer id;

    private String name;

    private String xinming;

    private String shenfenzhenghao;

    private String yonghuquanxian;

    private Integer keyongyue;

    private Integer dongjieyue;

    private String vipleixing;

    private Integer userid;

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

    public String getXinming() {
        return xinming;
    }

    public void setXinming(String xinming) {
        this.xinming = xinming == null ? null : xinming.trim();
    }

    public String getShenfenzhenghao() {
        return shenfenzhenghao;
    }

    public void setShenfenzhenghao(String shenfenzhenghao) {
        this.shenfenzhenghao = shenfenzhenghao == null ? null : shenfenzhenghao.trim();
    }

    public String getYonghuquanxian() {
        return yonghuquanxian;
    }

    public void setYonghuquanxian(String yonghuquanxian) {
        this.yonghuquanxian = yonghuquanxian == null ? null : yonghuquanxian.trim();
    }

    public Integer getKeyongyue() {
        return keyongyue;
    }

    public void setKeyongyue(Integer keyongyue) {
        this.keyongyue = keyongyue;
    }

    public Integer getDongjieyue() {
        return dongjieyue;
    }

    public void setDongjieyue(Integer dongjieyue) {
        this.dongjieyue = dongjieyue;
    }

    public String getVipleixing() {
        return vipleixing;
    }

    public void setVipleixing(String vipleixing) {
        this.vipleixing = vipleixing == null ? null : vipleixing.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}