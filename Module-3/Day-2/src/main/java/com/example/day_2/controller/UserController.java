package com.example.day_2.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/*
 * UserController - Demonstrates using path variables.
 */
@RestController
@RequestMapping("/api/user")
public class UserController {

    /*
     * Get user details using path variable.
     * Example: http://localhost:8080/api/user/101
     */
    @GetMapping("/{id}")
    public String getUser(@PathVariable int id) {
        return "User ID: " + id;
    }
}
