package com.example.day_3.model;

/*
 * Product Model - Represents product data.
 * Acts as Entity/DTO (Data Transfer Object).
 */
public class Product {
    private int id;
    private String name;
    private double price;

    // Default constructor
    public Product() {}

    // Parameterized constructor
    public Product(int id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    // Getters & Setters
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
}
