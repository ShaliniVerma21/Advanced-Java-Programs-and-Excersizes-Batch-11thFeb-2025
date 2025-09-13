package com.example.day_1.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class welcomeController {

	@GetMapping("welcome")
	public String Welcome() {
		return "Welcome Springboot Project-1";
	}
}
