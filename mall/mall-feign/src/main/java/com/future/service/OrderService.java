package com.future.service;

import com.future.interfaces.OrderServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "mall-service")
public interface OrderService extends OrderServiceApi {
}
