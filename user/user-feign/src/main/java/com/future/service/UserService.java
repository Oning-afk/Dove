package com.future.service;

import com.future.interfaces.UserServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "user-service")
public interface UserService extends UserServiceApi {

}
