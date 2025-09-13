package com.example.day_2.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/*
 * ApplicationController - Handles general endpoints for project testing.
 */
@RestController
@RequestMapping("/api/app")
public class ApplicationController {

    /*
     * Simple endpoint to test the project.
     * URL: http://localhost:8080/api/app/welcome
     */
    @GetMapping("/welcome")
    public String welcome() {
        return "Welcome to Spring Boot Project-2";
    }

    /*
     * Simple hello endpoint.
     * URL: http://localhost:8080/api/app/hello
     */
    @GetMapping("/hello")
    public String sayHello() {
        return "Hello, Spring Boot!";
    }
}
