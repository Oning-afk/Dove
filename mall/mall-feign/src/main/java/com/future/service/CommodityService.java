package com.future.service;

import com.future.interfaces.CommodityServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "mall-service")
public interface CommodityService extends CommodityServiceApi {
}
