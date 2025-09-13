package com.example.day_2.controller;

import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/users")
public class FullRESTController {

    // Simulated database (in-memory)
    private Map<Integer, String> users = new HashMap<>();

    // GET all users
    // URL: http://localhost:8080/api/users
    @GetMapping
    public Map<Integer, String> getAllUsers() {
        return users;
    }

    // GET user by ID
    // URL: http://localhost:8080/api/users/1
    @GetMapping("/{id}")
    public String getUser(@PathVariable int id) {
        return users.getOrDefault(id, "User not found");
    }

    // CREATE new user (POST)
    // URL: http://localhost:8080/api/users
    // Body (JSON): { "id": 1, "name": "Shalini" }
    @PostMapping
    public String createUser(@RequestBody Map<String, String> request) {
        int id = Integer.parseInt(request.get("id"));
        String name = request.get("name");
        users.put(id, name);
        return "User added: " + name;
    }

    // UPDATE existing user (PUT)
    // URL: http://localhost:8080/api/users/1
    // Body (JSON): { "name": "Updated Name" }
    @PutMapping("/{id}")
    public String updateUser(@PathVariable int id, @RequestBody Map<String, String> request) {
        if (users.containsKey(id)) {
            users.put(id, request.get("name"));
            return "User updated: " + request.get("name");
        }
        return "User not found!";
    }

    // DELETE user by ID
    // URL: http://localhost:8080/api/users/1
    @DeleteMapping("/{id}")
    public String deleteUser(@PathVariable int id) {
        if (users.containsKey(id)) {
            users.remove(id);
            return "User deleted with ID: " + id;
        }
        return "User not found!";
    }
}
