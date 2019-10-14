package com.future.service;

import com.future.interfaces.StatisticalServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "statistical-service")
public interface StatisticalService extends StatisticalServiceApi {

}
