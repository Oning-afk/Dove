package com.future.interfaces;

import com.future.model.PageBean;
import com.future.model.Swiper;
import com.future.model.Teacher;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

public interface TeacherServiceApi {

    @RequestMapping("findSwiper")
    List<Swiper> findSwiper();

    @RequestMapping("applyFor")
    Map applyFor(@RequestBody Teacher teacher);

    @RequestMapping("findTeacherList")
    PageBean<Teacher> findTeacherList(@RequestBody(required = false) Teacher teacher, @RequestParam(value = "page", defaultValue = "1", required = false) Integer page, @RequestParam(value = "rows", defaultValue = "10", required = false) Integer rows);

    @RequestMapping("updateToAllowed")
    void updateToAllowed(@RequestParam(required = false,value = "id") Long[] id);

    @RequestMapping("updateToRefused")
    void updateToRefused(@RequestParam(required = false,value = "id") Long[] id);

    @RequestMapping("findTeacherById")
    Teacher findTeacherById(@RequestParam(required = false,value = "id")Long id);
}
