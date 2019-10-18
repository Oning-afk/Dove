package com.future.service.impl;

import com.future.mapper.TeacherMapper;
import com.future.model.Swiper;
import com.future.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
@Service
public class TeacherServiceImpl implements TeacherService  {

    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private RedisTemplate redisTemplate;

    @Override
    @Cacheable(value = "swiper-key")
    public List<Swiper> findSwiper() {

        return teacherMapper.findSwiper();
    }
}
