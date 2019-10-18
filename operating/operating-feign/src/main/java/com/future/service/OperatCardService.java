package com.future.service;

import com.future.interfaces.OperatCardServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "operating-service")
public interface OperatCardService extends OperatCardServiceApi {

}
