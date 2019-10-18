package com.future.interfaces;

import com.future.model.Swiper;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

public interface TeacherServiceApi {

    @RequestMapping("findSwiper")
    List<Swiper> findSwiper();
}
