package com.future.service;

import com.future.interfaces.ReceivingServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "mall-service")
public interface ReceivingService extends ReceivingServiceApi {
}
