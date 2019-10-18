package com.future.service;

import com.future.interfaces.StatisticalServiceApi;
import com.future.model.Result;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@FeignClient(value = "statistical-service")
public interface StatisticalService extends StatisticalServiceApi {



}
