package com.future.model;

public class FinanceKahao {
    private Integer id;

    private String chikazhe;

    private String name;

    private String kaihuhang;

    private String zhanghao;

    private String shengshi;

    private String kaihuhangdizhi;

    private String lianxirenshouji;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChikazhe() {
        return chikazhe;
    }

    public void setChikazhe(String chikazhe) {
        this.chikazhe = chikazhe == null ? null : chikazhe.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getKaihuhang() {
        return kaihuhang;
    }

    public void setKaihuhang(String kaihuhang) {
        this.kaihuhang = kaihuhang == null ? null : kaihuhang.trim();
    }

    public String getZhanghao() {
        return zhanghao;
    }

    public void setZhanghao(String zhanghao) {
        this.zhanghao = zhanghao == null ? null : zhanghao.trim();
    }

    public String getShengshi() {
        return shengshi;
    }

    public void setShengshi(String shengshi) {
        this.shengshi = shengshi == null ? null : shengshi.trim();
    }

    public String getKaihuhangdizhi() {
        return kaihuhangdizhi;
    }

    public void setKaihuhangdizhi(String kaihuhangdizhi) {
        this.kaihuhangdizhi = kaihuhangdizhi == null ? null : kaihuhangdizhi.trim();
    }

    public String getLianxirenshouji() {
        return lianxirenshouji;
    }

    public void setLianxirenshouji(String lianxirenshouji) {
        this.lianxirenshouji = lianxirenshouji == null ? null : lianxirenshouji.trim();
    }
}