package com.future.model;

public class FinanceShouru {
    private Integer id;

    private String name;

    private String xingming;

    private String shenfenzhenghao;

    private String yonghuzu;

    private Integer keyongshouru;

    private Integer dongjieshouru;

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

    public String getXingming() {
        return xingming;
    }

    public void setXingming(String xingming) {
        this.xingming = xingming == null ? null : xingming.trim();
    }

    public String getShenfenzhenghao() {
        return shenfenzhenghao;
    }

    public void setShenfenzhenghao(String shenfenzhenghao) {
        this.shenfenzhenghao = shenfenzhenghao == null ? null : shenfenzhenghao.trim();
    }

    public String getYonghuzu() {
        return yonghuzu;
    }

    public void setYonghuzu(String yonghuzu) {
        this.yonghuzu = yonghuzu == null ? null : yonghuzu.trim();
    }

    public Integer getKeyongshouru() {
        return keyongshouru;
    }

    public void setKeyongshouru(Integer keyongshouru) {
        this.keyongshouru = keyongshouru;
    }

    public Integer getDongjieshouru() {
        return dongjieshouru;
    }

    public void setDongjieshouru(Integer dongjieshouru) {
        this.dongjieshouru = dongjieshouru;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}