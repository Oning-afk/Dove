package com.future.service;

import com.future.model.PageBean;
import com.future.model.Swiper;
import com.future.model.Teacher;

import java.util.List;
import java.util.Map;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
public interface TeacherService {
    List<Swiper> findSwiper();

    Map applyFor(Teacher teacher);

    PageBean<Teacher> findTeacherList(Teacher teacher, Integer page, Integer rows);

    void updateToAllowed(Long[] id);

    void updateToRefused(Long[] id);

    Teacher findTeacherById(Long id);
}
