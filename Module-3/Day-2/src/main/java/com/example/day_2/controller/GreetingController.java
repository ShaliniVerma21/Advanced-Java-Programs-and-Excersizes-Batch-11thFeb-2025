package com.example.day_2.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/*
 * GreetingController - Demonstrates using query parameters.
 */
@RestController
@RequestMapping("/api/greet")
public class GreetingController {

    /*
     * Greet user using query parameter (?name=Shalini).
     * Example: http://localhost:8080/api/greet?name=Shalini
     */
    @GetMapping
    public String greet(@RequestParam String name) {
        return "Hello, " + name + "! Welcome to Project-2.";
    }
}
