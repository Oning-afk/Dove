package com.future.model;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * @program: dove-parent
 * @description: 轮播图
 * @author: 邓希凡
 * @create: 2019-10-17 13:52
 **/
@Data
@ToString
public class Swiper implements Serializable {

    private Long id;

    private String url;

    private String imgs;
}
