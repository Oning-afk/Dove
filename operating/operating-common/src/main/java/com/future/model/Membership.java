package com.future.model;

import java.io.Serializable;

public class Membership implements Serializable {

    /**
     * 会员等级id
     */
    private Long id;

    /**
     * 会员等级名称
     */
    private String name;

    /**
     * 会员的等级
     */
    private Integer grade;

    /**
     * 会员月费
     */
    private double monthly;

    /**
     * 会员年费
     */
    private double annualized;

    /**
     * 会员禁用状态
     * 1：启用
     * 0：禁用
     */
    private Integer forbidden;


    /**
     * pc封面
     */
    private String image;

    @Override
    public String toString() {
        return "Membership{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", grade=" + grade +
                ", monthly=" + monthly +
                ", annualized=" + annualized +
                ", forbidden=" + forbidden +
                ", image='" + image + '\'' +
                '}';
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

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

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public double getMonthly() {
        return monthly;
    }

    public void setMonthly(double monthly) {
        this.monthly = monthly;
    }

    public double getAnnualized() {
        return annualized;
    }

    public void setAnnualized(double annualized) {
        this.annualized = annualized;
    }

    public Integer getForbidden() {
        return forbidden;
    }

    public void setForbidden(Integer forbidden) {
        this.forbidden = forbidden;
    }
}
