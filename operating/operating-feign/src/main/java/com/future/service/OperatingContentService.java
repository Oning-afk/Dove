package com.future.service;

import com.future.interfaces.OperatingContentServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "operating-service")
public interface OperatingContentService extends OperatingContentServiceApi {
}
