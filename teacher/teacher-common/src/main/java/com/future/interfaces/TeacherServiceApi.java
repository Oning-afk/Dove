package com.future.interfaces;

import com.future.model.Swiper;
import com.future.model.Teacher;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

public interface TeacherServiceApi {

    @RequestMapping("findSwiper")
    List<Swiper> findSwiper();

    @RequestMapping("applyFor")
    Map applyFor(@RequestBody Teacher teacher);
}
