package com.future.service.impl;

import com.future.mapper.TeacherMapper;
import com.future.model.*;
import com.future.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @Override
    public Map applyFor(Teacher teacher) {
        HashMap<String, Object> msg = new HashMap<>();
        try {
            teacherMapper.applyFor(teacher);
            msg.put("status","1");
            return msg;
        } catch (Exception e) {
            e.printStackTrace();
            msg.put("status","0");
            msg.put("info",e);
        }

        return msg;
    }

    @Override
    public PageBean<Teacher> findTeacherList(Teacher teacher, Integer page, Integer rows) {
        Integer totalSize = teacherMapper.getTeacherCount(teacher);
        HashMap<String, Object> map = new HashMap<>();
        int pageNumber = (page -1) *rows ;
        map.put("page",pageNumber);
        map.put("rows",rows);
        map.put("teacher",teacher);
        PageBean<Teacher> teacherPageBean = new PageBean<Teacher>(page, rows, totalSize);
        List<Teacher> teacherList = teacherMapper.findTeacherList(map);
        teacherPageBean.setList(teacherList);
        return teacherPageBean;
    }

    @Override
    public void updateToAllowed(Long[] id) {
        teacherMapper.updateToAllowed(id);
    }

    @Override
    public void updateToRefused(Long[] id) {
        teacherMapper.updateToRefused(id);
    }
}
