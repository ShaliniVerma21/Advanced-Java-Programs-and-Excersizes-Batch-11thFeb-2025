package com.example.day_3.service;
import org.springframework.stereotype.Service;

import com.example.day_3.model.Product;

import java.util.*;

/*
 * ProductService - Business logic for managing products.
 * In real-world apps, this connects to a database (via Repository).
 */
@Service
public class ProductService {

    // Temporary in-memory "database" (using HashMap)
    private Map<Integer, Product> products = new HashMap<>();
    // Constructor -> preload some data
    public ProductService() {
        products.put(1, new Product(1, "Laptop", 55000.0));
        products.put(2, new Product(2, "Mobile", 20000.0));
        products.put(3, new Product(3, "Headphones", 2500.0));
    }


    // CREATE product
    public Product addProduct(Product product) {
        products.put(product.getId(), product);
        return product;
    }

    // READ all products
    public List<Product> getAllProducts() {
        return new ArrayList<>(products.values());
    }

    // READ single product by ID
    public Product getProductById(int id) {
        return products.get(id);
    }

    // UPDATE product
    public Product updateProduct(int id, Product updatedProduct) {
        if (products.containsKey(id)) {
            products.put(id, updatedProduct);
            return updatedProduct;
        }
        return null;
    }

    // DELETE product
    public boolean deleteProduct(int id) {
        return products.remove(id) != null;
    }
}
