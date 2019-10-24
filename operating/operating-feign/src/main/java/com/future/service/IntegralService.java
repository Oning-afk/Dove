package com.future.service;

import com.future.interfaces.IntegralApi;
import com.future.model.IntegralBean;
import com.future.model.PageBean;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "operating-service")
public interface IntegralService extends IntegralApi {

}
