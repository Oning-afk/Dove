package com.future.mapper;

import com.future.model.Swiper;
import com.future.model.Teacher;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.HashMap;
import java.util.List;

public interface TeacherMapper {

    @Select("select * from t_swiper")
    List<Swiper> findSwiper();

    @Insert("insert into teacher_user(name,realname,createDate,reason,attach,rankId) values(#{name},#{realname}," +
            "now(),#{reason},#{attach},#{rankId})")
    void applyFor(Teacher teacher);

    Integer getTeacherCount(Teacher teacher);

    List<Teacher> findTeacherList(HashMap<String, Object> map);

    void updateToAllowed(Long[] id);

    void updateToRefused(Long[] id);
}
