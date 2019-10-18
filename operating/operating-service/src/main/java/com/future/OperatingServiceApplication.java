/**
 * Copyright 2015-现在 广州市领课网络科技有限公司
 */
package com.future;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * 运营服务
 */

@SpringBootApplication
@EnableDiscoveryClient
@EnableEurekaClient
@RefreshScope
@EnableScheduling
@MapperScan("com.future.mapper")
public class OperatingServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(OperatingServiceApplication.class, args);
	}

}
