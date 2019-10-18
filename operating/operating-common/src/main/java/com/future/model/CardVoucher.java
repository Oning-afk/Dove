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
    private String institutionsId;
    /**
     * 机构名称
     */
    private String institutionsName;
    /**
     * 优惠券编码
     */
    private Integer cardVoucherNo;
    /**
     * 优惠券数量
     */
    private Integer cardVoucherNumber;
    /**
     * 优惠券已发送数量
     */
    private Integer receivedNumber;
    /**
     * 备注(包含满减条件;折扣力度;课程类型;课程名称;充值金额;会员时间)
     */
    private String memo;
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
    private Date toReceivedDate;
    /**
     * 是否禁用(0:正常;1禁用)
     */
    private Integer status;
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

    public String getInstitutionsId() {
        return institutionsId;
    }

    public void setInstitutionsId(String institutionsId) {
        this.institutionsId = institutionsId;
    }

    public String getInstitutionsName() {
        return institutionsName;
    }

    public void setInstitutionsName(String institutionsName) {
        this.institutionsName = institutionsName;
    }

    public Integer getCardVoucherNo() {
        return cardVoucherNo;
    }

    public void setCardVoucherNo(Integer cardVoucherNo) {
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

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
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

    public Date getToReceivedDate() {
        return toReceivedDate;
    }

    public void setToReceivedDate(Date toReceivedDate) {
        this.toReceivedDate = toReceivedDate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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
}