package com.future.service;


import com.future.interfaces.MembershipApi;
import org.springframework.cloud.openfeign.FeignClient;

@FeignClient(value = "operating-service")
public interface MembershipService extends MembershipApi {
}
