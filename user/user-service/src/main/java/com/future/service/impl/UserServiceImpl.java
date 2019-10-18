package com.future.service.impl;


import com.future.mapper.UserMapper;
import com.future.model.Result;
import com.future.model.User;
import com.future.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

import java.util.concurrent.TimeUnit;

/**
 * @program: dove-parent
 * @description:
 * @author: 邓希凡
 * @create: 2019-10-12 16:47
 **/
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private RedisTemplate redisTemplate;


    @Override
    public Result login(User user) {
        if(user!=null){
           User u = userMapper.findUser(user.getUsercode());
           if(u==null){
               return new Result(false,"账号密码不存在");
           }
           if(!user.getPassword().equals(u.getPassword())){
               return new Result(false,"密码或账号错误");
           }
           return new Result(true,"登录成功");
        }
        return new Result(false,"账号密码不存在");
    }

    @Override
    public Result userLogin(User user) {
        if(user!=null){
            User u;
            if(redisTemplate.hasKey(user.getUsercode())) {
                 u = (User) redisTemplate.opsForValue().get(user.getUsercode());
            }else{
                 u = userMapper.findUser(user.getUsercode());
            }
            if(u!=null){
                if(u.getPassword().equals(user.getPassword())){
                    Boolean hasKey = redisTemplate.hasKey(u.getUsercode());
                    if(!hasKey){
                        ValueOperations<String,User> ops = redisTemplate.opsForValue();
                        ops.set(u.getUsercode(),u,1, TimeUnit.DAYS);
                    }
                    return new Result(true,"登录成功");
                }else{
                    return new Result(false,"密码或账号不正确");
                }
            }
        }
        return new Result(false,"账号不存在");
    }
}
