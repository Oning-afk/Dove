package com.future.service;

import com.future.interfaces.LogisticsServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "mall-service")
public interface LogisticsService extends LogisticsServiceApi {
}
