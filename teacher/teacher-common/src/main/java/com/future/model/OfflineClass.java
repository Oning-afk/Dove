package com.future.model;

import java.util.Date;

public class OfflineClass {
    private Long id;

    private String offlineClassName;

    private Long offlineClassType;

    private Long offlineClassInstitution;

    private Long offlineClassPrice;

    private Integer offlineClassBuyNum;

    private Integer offlineClassTotalPeople;

    private String offlineClassImage;

    private Long offlineClassCreater;

    private Long offlineClassTeacher;

    private String offlineClassDescribe;

    private String offlineClassStart;

    private String offlineClassEnd;

    private String offlineClassPlace;

    private Integer offlineClassIsFree;

    private Integer offlineClassIsAudit;

    private String isDel;

    private Date createTime;

    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOfflineClassName() {
        return offlineClassName;
    }

    public void setOfflineClassName(String offlineClassName) {
        this.offlineClassName = offlineClassName;
    }

    public Long getOfflineClassType() {
        return offlineClassType;
    }

    public void setOfflineClassType(Long offlineClassType) {
        this.offlineClassType = offlineClassType;
    }

    public Long getOfflineClassInstitution() {
        return offlineClassInstitution;
    }

    public void setOfflineClassInstitution(Long offlineClassInstitution) {
        this.offlineClassInstitution = offlineClassInstitution;
    }

    public Long getOfflineClassPrice() {
        return offlineClassPrice;
    }

    public void setOfflineClassPrice(Long offlineClassPrice) {
        this.offlineClassPrice = offlineClassPrice;
    }

    public Integer getOfflineClassBuyNum() {
        return offlineClassBuyNum;
    }

    public void setOfflineClassBuyNum(Integer offlineClassBuyNum) {
        this.offlineClassBuyNum = offlineClassBuyNum;
    }

    public Integer getOfflineClassTotalPeople() {
        return offlineClassTotalPeople;
    }

    public void setOfflineClassTotalPeople(Integer offlineClassTotalPeople) {
        this.offlineClassTotalPeople = offlineClassTotalPeople;
    }

    public String getOfflineClassImage() {
        return offlineClassImage;
    }

    public void setOfflineClassImage(String offlineClassImage) {
        this.offlineClassImage = offlineClassImage;
    }

    public Long getOfflineClassCreater() {
        return offlineClassCreater;
    }

    public void setOfflineClassCreater(Long offlineClassCreater) {
        this.offlineClassCreater = offlineClassCreater;
    }

    public Long getOfflineClassTeacher() {
        return offlineClassTeacher;
    }

    public void setOfflineClassTeacher(Long offlineClassTeacher) {
        this.offlineClassTeacher = offlineClassTeacher;
    }

    public String getOfflineClassDescribe() {
        return offlineClassDescribe;
    }

    public void setOfflineClassDescribe(String offlineClassDescribe) {
        this.offlineClassDescribe = offlineClassDescribe;
    }

    public String getOfflineClassStart() {
        return offlineClassStart;
    }

    public void setOfflineClassStart(String offlineClassStart) {
        this.offlineClassStart = offlineClassStart;
    }

    public String getOfflineClassEnd() {
        return offlineClassEnd;
    }

    public void setOfflineClassEnd(String offlineClassEnd) {
        this.offlineClassEnd = offlineClassEnd;
    }

    public String getOfflineClassPlace() {
        return offlineClassPlace;
    }

    public void setOfflineClassPlace(String offlineClassPlace) {
        this.offlineClassPlace = offlineClassPlace;
    }

    public Integer getOfflineClassIsFree() {
        return offlineClassIsFree;
    }

    public void setOfflineClassIsFree(Integer offlineClassIsFree) {
        this.offlineClassIsFree = offlineClassIsFree;
    }

    public Integer getOfflineClassIsAudit() {
        return offlineClassIsAudit;
    }

    public void setOfflineClassIsAudit(Integer offlineClassIsAudit) {
        this.offlineClassIsAudit = offlineClassIsAudit;
    }

    public String getIsDel() {
        return isDel;
    }

    public void setIsDel(String isDel) {
        this.isDel = isDel;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "OfflineClass{" +
                "id=" + id +
                ", offlineClassName='" + offlineClassName + '\'' +
                ", offlineClassType=" + offlineClassType +
                ", offlineClassInstitution=" + offlineClassInstitution +
                ", offlineClassPrice=" + offlineClassPrice +
                ", offlineClassBuyNum=" + offlineClassBuyNum +
                ", offlineClassTotalPeople=" + offlineClassTotalPeople +
                ", offlineClassImage='" + offlineClassImage + '\'' +
                ", offlineClassCreater=" + offlineClassCreater +
                ", offlineClassTeacher=" + offlineClassTeacher +
                ", offlineClassDescribe='" + offlineClassDescribe + '\'' +
                ", offlineClassStart='" + offlineClassStart + '\'' +
                ", offlineClassEnd='" + offlineClassEnd + '\'' +
                ", offlineClassPlace='" + offlineClassPlace + '\'' +
                ", offlineClassIsFree=" + offlineClassIsFree +
                ", offlineClassIsAudit=" + offlineClassIsAudit +
                ", isDel='" + isDel + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}