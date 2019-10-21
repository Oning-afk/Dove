package com.future.mapper;

import com.future.model.User;
import org.apache.ibatis.annotations.Select;

public interface UserMapper {

    @Select("select * from t_user where usercode = #{value}")
    User findUser(String name);
}
