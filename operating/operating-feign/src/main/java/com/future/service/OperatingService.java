package com.future.service;

import com.future.interfaces.OperatingServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "operating-service")
public interface OperatingService extends OperatingServiceApi {

}
