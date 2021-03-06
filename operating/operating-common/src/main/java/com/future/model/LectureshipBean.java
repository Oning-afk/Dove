package com.future.model;

import java.io.Serializable;

public class LectureshipBean implements Serializable {

    private Long id;

    private String lecturership;

    private Integer ordering;

    private Integer status;

    private String image;

    @Override
    public String toString() {
        return "LectureshipBean{" +
                "id=" + id +
                ", lecturership='" + lecturership + '\'' +
                ", ordering=" + ordering +
                ", status=" + status +
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

    public String getLecturership() {
        return lecturership;
    }

    public void setLecturership(String lecturership) {
        this.lecturership = lecturership;
    }

    public Integer getOrdering() {
        return ordering;
    }

    public void setOrdering(Integer ordering) {
        this.ordering = ordering;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
