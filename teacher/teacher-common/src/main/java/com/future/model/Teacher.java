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

    //认证状态
    private Integer type;

    //讲师等级
    private Integer rankId;

    //创建时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createDate;

    //认证理由
    private String reason;

    //真实姓名
    private String realname;

    //直播课程Id
    private Integer courseId;

    //线下课程Id
    private Integer programsId;

    //证书文件
    private String attach;
}
