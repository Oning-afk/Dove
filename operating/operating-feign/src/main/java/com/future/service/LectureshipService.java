package com.future.service;

import com.future.interfaces.LecturershipApi;
import org.springframework.cloud.openfeign.FeignClient;


@FeignClient(value = "operating-service")
public interface LectureshipService extends LecturershipApi {
}
