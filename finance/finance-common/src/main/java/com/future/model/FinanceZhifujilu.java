package com.future.model;

public class FinanceZhifujilu {
    private Integer id;

    private String name;

    private String yonghuzu;

    private Integer jine;

    private String leixing;

    private String yewubeizhu;

    private String chuangjianshijian;

    private String zhifuzhuangtai;

    private String dingdanhao;

    private Integer zhifufangshi;

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

    public String getYonghuzu() {
        return yonghuzu;
    }

    public void setYonghuzu(String yonghuzu) {
        this.yonghuzu = yonghuzu == null ? null : yonghuzu.trim();
    }

    public Integer getJine() {
        return jine;
    }

    public void setJine(Integer jine) {
        this.jine = jine;
    }

    public String getLeixing() {
        return leixing;
    }

    public void setLeixing(String leixing) {
        this.leixing = leixing == null ? null : leixing.trim();
    }

    public String getYewubeizhu() {
        return yewubeizhu;
    }

    public void setYewubeizhu(String yewubeizhu) {
        this.yewubeizhu = yewubeizhu == null ? null : yewubeizhu.trim();
    }

    public String getChuangjianshijian() {
        return chuangjianshijian;
    }

    public void setChuangjianshijian(String chuangjianshijian) {
        this.chuangjianshijian = chuangjianshijian == null ? null : chuangjianshijian.trim();
    }

    public String getZhifuzhuangtai() {
        return zhifuzhuangtai;
    }

    public void setZhifuzhuangtai(String zhifuzhuangtai) {
        this.zhifuzhuangtai = zhifuzhuangtai == null ? null : zhifuzhuangtai.trim();
    }

    public String getDingdanhao() {
        return dingdanhao;
    }

    public void setDingdanhao(String dingdanhao) {
        this.dingdanhao = dingdanhao == null ? null : dingdanhao.trim();
    }

    public Integer getZhifufangshi() {
        return zhifufangshi;
    }

    public void setZhifufangshi(Integer zhifufangshi) {
        this.zhifufangshi = zhifufangshi;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}