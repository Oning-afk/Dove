package com.future.model;

import java.util.Date;

public class OperationDirectMessages {
    private Long id;

    private Long userId;

    private String userName;

    private Long dialogueUserId;

    private String dialogueUserName;

    private String dialogueUser;

    private String dialogueUserNames;

    private String dialogueContent;

    private Date createTime;

    private Date updateTime;

    private Integer isDel;

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

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Long getDialogueUserId() {
        return dialogueUserId;
    }

    public void setDialogueUserId(Long dialogueUserId) {
        this.dialogueUserId = dialogueUserId;
    }

    public String getDialogueUserName() {
        return dialogueUserName;
    }

    public void setDialogueUserName(String dialogueUserName) {
        this.dialogueUserName = dialogueUserName;
    }

    public String getDialogueUser() {
        return dialogueUser;
    }

    public void setDialogueUser(String dialogueUser) {
        this.dialogueUser = dialogueUser;
    }

    public String getDialogueUserNames() {
        return dialogueUserNames;
    }

    public void setDialogueUserNames(String dialogueUserNames) {
        this.dialogueUserNames = dialogueUserNames;
    }

    public String getDialogueContent() {
        return dialogueContent;
    }

    public void setDialogueContent(String dialogueContent) {
        this.dialogueContent = dialogueContent;
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

    public Integer getIsDel() {
        return isDel;
    }

    public void setIsDel(Integer isDel) {
        this.isDel = isDel;
    }
}