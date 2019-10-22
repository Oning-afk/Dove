package com.future.service;

import com.future.interfaces.OperatSingleApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "operating-service")
public interface OperatSingleService extends OperatSingleApi {
}
