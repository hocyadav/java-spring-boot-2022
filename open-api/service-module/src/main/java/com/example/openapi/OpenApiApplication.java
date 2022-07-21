package com.example.openapi;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@RequiredArgsConstructor
public class OpenApiApplication implements CommandLineRunner {
	private final MyPostShippingApi myPostShippingApi;

	public static void main(String[] args) {
		SpringApplication.run(OpenApiApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		System.out.println("OpenApiApplication.run");

		myPostShippingApi.calculateShippingPrice(null, null);

	}
}
