package com.future.service;

import com.future.interfaces.TeacherServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "teacher-service")
public interface TeacherService extends TeacherServiceApi {

}
