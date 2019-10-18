package com.future.model;

import java.io.Serializable;
import java.util.Date;

/**
 * @program: dove-parent
 * @description:卡券实体bean
 * @author: 张晋浩
 * @create: 2019-10-15 13:40
 */
public class CardVoucher implements Serializable {
    /**
     * 主键id
     */
    private Long id;
    /**
     * 机构id
     */
    private Long institutionsId;
    /**
     * 机构名称
     */
    private String institutionsName;
    /**
     * 优惠券编码
     */
    private Long cardVoucherNo;
    /**
     * 优惠券数量
     */
    private Integer cardVoucherNumber;
    /**
     * 优惠券已发送数量
     */
    private Integer receivedNumber;
    /**
     * 满减金额(满)
     */
    private Integer cardFull;
    /**
     * 满减金额(减)
     */
    private Integer cardDelete;
    /**
     * 折扣
     */
    private Integer cardDiscount;
    /**
     * 课程分类
     * 1.点播;
     * 2.直播;
     * 3.班级;
     */
    private Integer cardClassType;
    /**
     * 课程id
     */
    private Integer cardClassId;
    /**
     * 课程名称
     */
    private String cardClassName;
    /**
     * 充值金额
     */
    private Integer cardRecharge;
    /**
     * vip类型
     * 1.vip
     * 2.svip
     */
    private Integer cardVipType;
    /**
     * vip增送天数
     */
    private Integer cardVipDay;
    /**
     * 卡券类型(1:优惠券;2:打折卡;3课程卡;4:充值卡;5:会员卡)
     */
    private Integer cardVoucherType;
    /**
     * 卡券名称(1:优惠券;2:打折卡;3课程卡;4:充值卡;5:会员卡)
     */
    private String cardVoucherName;
    /**
     * 有效期
     */
    private Integer validiteDay;
    /**
     * 截止领取时间
     */
    private String toReceivedDate;
    /**
     * 是否禁用(0:正常;1禁用)
     */
    private Integer status;
    /**
     * 是否被删除(0:正常;1:已删除)
     */
    private Integer isDel;
    /**
     * 创建时间
     */
    private Date createDate;
    /**
     * 最后修改时间
     */
    private Date updateDate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getInstitutionsId() {
        return institutionsId;
    }

    public void setInstitutionsId(Long institutionsId) {
        this.institutionsId = institutionsId;
    }

    public String getInstitutionsName() {
        return institutionsName;
    }

    public void setInstitutionsName(String institutionsName) {
        this.institutionsName = institutionsName;
    }

    public Long getCardVoucherNo() {
        return cardVoucherNo;
    }

    public void setCardVoucherNo(Long cardVoucherNo) {
        this.cardVoucherNo = cardVoucherNo;
    }

    public Integer getCardVoucherNumber() {
        return cardVoucherNumber;
    }

    public void setCardVoucherNumber(Integer cardVoucherNumber) {
        this.cardVoucherNumber = cardVoucherNumber;
    }

    public Integer getReceivedNumber() {
        return receivedNumber;
    }

    public void setReceivedNumber(Integer receivedNumber) {
        this.receivedNumber = receivedNumber;
    }

    public Integer getCardFull() {
        return cardFull;
    }

    public void setCardFull(Integer cardFull) {
        this.cardFull = cardFull;
    }

    public Integer getCardDelete() {
        return cardDelete;
    }

    public void setCardDelete(Integer cardDelete) {
        this.cardDelete = cardDelete;
    }

    public Integer getCardDiscount() {
        return cardDiscount;
    }

    public void setCardDiscount(Integer cardDiscount) {
        this.cardDiscount = cardDiscount;
    }

    public Integer getCardClassType() {
        return cardClassType;
    }

    public void setCardClassType(Integer cardClassType) {
        this.cardClassType = cardClassType;
    }

    public Integer getCardClassId() {
        return cardClassId;
    }

    public void setCardClassId(Integer cardClassId) {
        this.cardClassId = cardClassId;
    }

    public String getCardClassName() {
        return cardClassName;
    }

    public void setCardClassName(String cardClassName) {
        this.cardClassName = cardClassName;
    }

    public Integer getCardRecharge() {
        return cardRecharge;
    }

    public void setCardRecharge(Integer cardRecharge) {
        this.cardRecharge = cardRecharge;
    }

    public Integer getCardVipType() {
        return cardVipType;
    }

    public void setCardVipType(Integer cardVipType) {
        this.cardVipType = cardVipType;
    }

    public Integer getCardVipDay() {
        return cardVipDay;
    }

    public void setCardVipDay(Integer cardVipDay) {
        this.cardVipDay = cardVipDay;
    }

    public Integer getCardVoucherType() {
        return cardVoucherType;
    }

    public void setCardVoucherType(Integer cardVoucherType) {
        this.cardVoucherType = cardVoucherType;
    }

    public String getCardVoucherName() {
        return cardVoucherName;
    }

    public void setCardVoucherName(String cardVoucherName) {
        this.cardVoucherName = cardVoucherName;
    }

    public Integer getValiditeDay() {
        return validiteDay;
    }

    public void setValiditeDay(Integer validiteDay) {
        this.validiteDay = validiteDay;
    }

    public String getToReceivedDate() {
        return toReceivedDate;
    }

    public void setToReceivedDate(String toReceivedDate) {
        this.toReceivedDate = toReceivedDate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "CardVoucher{" +
                "id=" + id +
                ", institutionsId=" + institutionsId +
                ", institutionsName='" + institutionsName + '\'' +
                ", cardVoucherNo=" + cardVoucherNo +
                ", cardVoucherNumber=" + cardVoucherNumber +
                ", receivedNumber=" + receivedNumber +
                ", cardFull=" + cardFull +
                ", cardDelete=" + cardDelete +
                ", cardDiscount=" + cardDiscount +
                ", cardClassType=" + cardClassType +
                ", cardClassId=" + cardClassId +
                ", cardClassName='" + cardClassName + '\'' +
                ", cardRecharge=" + cardRecharge +
                ", cardVipType=" + cardVipType +
                ", cardVipDay=" + cardVipDay +
                ", cardVoucherType=" + cardVoucherType +
                ", cardVoucherName='" + cardVoucherName + '\'' +
                ", validiteDay=" + validiteDay +
                ", toReceivedDate='" + toReceivedDate + '\'' +
                ", status=" + status +
                ", isDel=" + isDel +
                ", createDate=" + createDate +
                ", updateDate=" + updateDate +
                '}';
    }
}