package com.future.service;

import com.future.interfaces.FinanceServiceApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "finance-service")
public interface FinanceService extends FinanceServiceApi {

}
