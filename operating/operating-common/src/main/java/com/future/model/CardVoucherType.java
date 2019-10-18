package com.future.model;

import java.util.Date;

public class CardVoucherType {
    private Long id;

    private String cardVoucherName;

    private Date createDate;

    private Date updateDate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCardVoucherName() {
        return cardVoucherName;
    }

    public void setCardVoucherName(String cardVoucherName) {
        this.cardVoucherName = cardVoucherName == null ? null : cardVoucherName.trim();
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