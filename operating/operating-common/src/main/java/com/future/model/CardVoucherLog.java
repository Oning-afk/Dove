package com.future.model;

import java.util.Date;

public class CardVoucherLog {
    private Long id;

    private Long userId;

    private Long cardVoucherNo;

    private Integer cardType;

    private Integer validiteDay;

    private Integer cardStatus;

    private Date receivedDate;

    private Integer isDel;

    private Date createdate;

    private Date updatedate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getCardVoucherNo() {
        return cardVoucherNo;
    }

    public void setCardVoucherNo(Long cardVoucherNo) {
        this.cardVoucherNo = cardVoucherNo;
    }

    public Integer getCardType() {
        return cardType;
    }

    public void setCardType(Integer cardType) {
        this.cardType = cardType;
    }

    public Integer getValiditeDay() {
        return validiteDay;
    }

    public void setValiditeDay(Integer validiteDay) {
        this.validiteDay = validiteDay;
    }

    public Integer getCardStatus() {
        return cardStatus;
    }

    public void setCardStatus(Integer cardStatus) {
        this.cardStatus = cardStatus;
    }

    public Date getReceivedDate() {
        return receivedDate;
    }

    public void setReceivedDate(Date receivedDate) {
        this.receivedDate = receivedDate;
    }

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public Date getUpdatedate() {
        return updatedate;
    }

    public void setUpdatedate(Date updatedate) {
        this.updatedate = updatedate;
    }
}