package com.future.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @program: dove-parent
 * @description: 用户访问统计bean
 * @author: 邓希凡
 * @create: 2019-10-15 18:39
 **/
@Data
@ToString
public class StatisticsVisit implements Serializable {

    private String id;

    private Long type;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date endDate;

    private Long count;

}
