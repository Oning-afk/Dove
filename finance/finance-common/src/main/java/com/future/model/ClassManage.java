package com.future.model;

import java.math.BigDecimal;
import java.util.Date;

public class ClassManage {
    private Long id;

    private Integer classType;

    private String className;

    private String classDescribe;

    private BigDecimal classPrice;

    private Integer classBuyNumber;

    private Integer classTotalePeople;

    private Long classCreater;

    private Integer classContent;

    private String classImage;

    private Integer isDel;

    private String createTime;

    private String updateTime;

    private Integer classJigou;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getClassType() {
        return classType;
    }

    public void setClassType(Integer classType) {
        this.classType = classType;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public String getClassDescribe() {
        return classDescribe;
    }

    public void setClassDescribe(String classDescribe) {
        this.classDescribe = classDescribe == null ? null : classDescribe.trim();
    }

    public BigDecimal getClassPrice() {
        return classPrice;
    }

    public void setClassPrice(BigDecimal classPrice) {
        this.classPrice = classPrice;
    }

    public Integer getClassBuyNumber() {
        return classBuyNumber;
    }

    public void setClassBuyNumber(Integer classBuyNumber) {
        this.classBuyNumber = classBuyNumber;
    }

    public Integer getClassTotalePeople() {
        return classTotalePeople;
    }

    public void setClassTotalePeople(Integer classTotalePeople) {
        this.classTotalePeople = classTotalePeople;
    }

    public Long getClassCreater() {
        return classCreater;
    }

    public void setClassCreater(Long classCreater) {
        this.classCreater = classCreater;
    }

    public Integer getClassContent() {
        return classContent;
    }

    public void setClassContent(Integer classContent) {
        this.classContent = classContent;
    }

    public String getClassImage() {
        return classImage;
    }

    public void setClassImage(String classImage) {
        this.classImage = classImage == null ? null : classImage.trim();
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getClassJigou() {
        return classJigou;
    }
    public void setClassJigou(Integer classJigou) {
        this.classJigou = classJigou;
    }
}