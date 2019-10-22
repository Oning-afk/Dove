package com.future.service;

import com.future.interfaces.OperationDirectMessagesApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "operating-service")
public interface OperationDirectMessagesService extends OperationDirectMessagesApi {
}
