package com.future.mapper;

import com.future.model.Swiper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface TeacherMapper {

    @Select("select * from t_swiper")
    List<Swiper> findSwiper();
}
