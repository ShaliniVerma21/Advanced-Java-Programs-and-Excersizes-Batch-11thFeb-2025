package com.example.day_3;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Day3Application {
/*
 * Product Management API
 * Real-world example using Controller + Service + Model (Entity/DTO)
 */
	public static void main(String[] args) {
		SpringApplication.run(Day3Application.class, args);
	}

}
/*
 How This Works

--> Client Request (browser/Postman → http://localhost:8080/api/products)
--> Controller (ProductController) receives request.
--> Service (ProductService) handles business logic.
--> Model (Product) represents the data.
--> Response is sent back to client in JSON format.
 */