package com.future.controller;

import com.future.interfaces.TeacherServiceApi;
import com.future.model.PageBean;
import com.future.model.Swiper;
import com.future.model.Teacher;
import com.future.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:45
 **/

@RestController
public class TeacherController implements TeacherServiceApi {

    @Autowired
    private TeacherService teacherService;

    @Override
    public List<Swiper> findSwiper() {
        return teacherService.findSwiper();
    }

    @Override
    public Map applyFor(Teacher teacher) {
        return teacherService.applyFor(teacher);
    }

    @Override
    public PageBean<Teacher> findTeacherList(Teacher teacher, Integer page, Integer rows) {
        return teacherService.findTeacherList(teacher,page,rows);
    }

    @Override
    public void updateToAllowed(Long[] id) {
        teacherService.updateToAllowed(id);
    }

    @Override
    public void updateToRefused(Long[] id) {
        teacherService.updateToRefused(id);
    }

    @Override
    public Teacher findTeacherById(Long id) {
        return teacherService.findTeacherById(id);
    }
}
