package com.dmpnv.eureka.ep;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class EurekaEpApplication {

	public static void main(String[] args) {
		SpringApplication.run(EurekaEpApplication.class, args);
	}

}
