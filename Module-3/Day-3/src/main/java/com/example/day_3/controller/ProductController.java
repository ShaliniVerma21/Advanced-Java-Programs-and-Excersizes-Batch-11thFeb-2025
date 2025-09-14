package com.example.day_3.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.example.day_3.model.Product;
import com.example.day_3.service.ProductService;

import java.util.List;

/*
 * ProductController - Handles HTTP requests & responses.
 * Uses ProductService for business logic.
 */
@RestController
@RequestMapping("/api/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    /*
     * CREATE product (POST)
     * URL: http://localhost:8080/api/products
     * Body: { "id": 1, "name": "Laptop", "price": 55000 }
     */
    @PostMapping
    public Product createProduct(@RequestBody Product product) {
        return productService.addProduct(product);
    }

    /*
     * READ all products (GET)
     * URL: http://localhost:8080/api/products
     */
    @GetMapping
    public List<Product> getProducts() {
        return productService.getAllProducts();
    }

    /*
     * READ product by ID (GET)
     * URL: http://localhost:8080/api/products/1
     */
    @GetMapping("/{id}")
    public Product getProduct(@PathVariable int id) {
        return productService.getProductById(id);
    }

    /*
     * UPDATE product (PUT)
     * URL: http://localhost:8080/api/products/1
     * Body: { "id": 1, "name": "Updated Laptop", "price": 60000 }
     */
    @PutMapping("/{id}")
    public Product updateProduct(@PathVariable int id, @RequestBody Product product) {
        return productService.updateProduct(id, product);
    }

    /*
     * DELETE product (DELETE)
     * URL: http://localhost:8080/api/products/1
     */
    @DeleteMapping("/{id}")
    public String deleteProduct(@PathVariable int id) {
        boolean deleted = productService.deleteProduct(id);
        return deleted ? "Product deleted with ID: " + id : "Product not found!";
    }
}
