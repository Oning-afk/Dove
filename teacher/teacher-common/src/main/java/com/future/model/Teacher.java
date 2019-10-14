package com.future.model;

import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:03
 **/
@Data
@ToString
public class Teacher {

    private Long id;

    private String name;

    //讲师等级Id
    private Integer teacherRankId;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createDate;

    private String dept;

    private String phone;

    //直播课程Id
    private Integer courseId;

    //线下课程Id
    private Integer programsId;


}
