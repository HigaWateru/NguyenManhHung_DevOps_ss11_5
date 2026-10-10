package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@SpringBootApplication
@RestController
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

    @GetMapping("/")
    public Map<String, Object> hello() {
        Map<String, Object> response = new HashMap<>();
        response.put("status", "success");
        response.put("message", "Hello from Spring Boot deployed via GitHub Actions and GHCR!");
        response.put("pipeline", "Job test -> Job docker-build (needs: test)");
        response.put("version", "1.0.0");
        return response;
    }
}
