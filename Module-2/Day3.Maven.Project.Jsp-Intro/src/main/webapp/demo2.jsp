<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Example 1: Simple Calculator -->

<%!   
    // Declaration tag: Method to perform basic arithmetic operations
    double calculate(double num1, double num2, String operation) {
        switch (operation) {
            case "add":
                return num1 + num2;
            case "subtract":
                return num1 - num2;
            case "multiply":
                return num1 * num2;
            case "divide":
                return num2 != 0 ? num1 / num2 : 0; // Avoid division by zero
            default:
                return 0;
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple Calculator</title>
    <style>
        /* Basic styling for the body */
        body {
            font-family: Arial, sans-serif; /* Font style */
            background-color: #f4f4f4; /* Light gray background */
            margin: 0; /* Remove default margin */
            padding: 20px; /* Add padding around the content */
        }
        /* Styling for the main heading */
        h1 {
            color: #333; /* Dark gray color */
            text-align: center; /* Center the heading */
        }
        /* Styling for the form and its elements */
        form {
            max-width: 400px; /* Maximum width of the form */
            margin: auto; /* Center the form */
            background: white; /* White background for the form */
            padding: 20px; /* Padding inside the form */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }
        /* Styling for labels and inputs */
        label {
            display: block; /* Block display for labels */
            margin: 10px 0 5px; /* Margin for spacing */
        }
        input[type="text"], select {
            width: 100%; /* Full width for inputs */
            padding: 10px; /* Padding inside inputs */
            border: 1px solid #ccc; /* Light gray border */
            border-radius: 4px; /* Rounded corners */
        }
        input[type="submit"] {
            background-color: #28a745; /* Green background */
            color: white; /* White text */
            border: none; /* No border */
            padding: 10px; /* Padding inside button */
            border-radius: 4px; /* Rounded corners */
            cursor: pointer; /* Pointer cursor on hover */
            width: 100%; /* Full width for button */
        }
        input[type="submit"]:hover {
            background-color: #218838; /* Darker green on hover */
        }
        /* Styling for the result display */
        h2 {
            text-align: center; /* Center the result */
            color: #333; /* Dark gray color */
        }
    </style>
</head>
<body>
    <h1>Simple Calculator</h1>
    
    <form method="post">
        <label for="num1">Number 1:</label>
        <input type="text" name="num1" required>
        
        <label for="num2">Number 2:</label>
        <input type="text" name="num2" required>
        
        <label for="operation">Operation:</label>
        <select name="operation">
            <option value="add">Add</option>
            <option value="subtract">Subtract</option>
            <option value="multiply">Multiply</option>
            <option value="divide">Divide</option>
        </select>
        
        <input type="submit" value="Calculate">
    </form>

    <%
        // Scriptlet tag: Process form submission
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");
        String operation = request.getParameter("operation");

        if (num1Str != null && num2Str != null && operation != null) {
            double num1 = Double.parseDouble(num1Str);
            double num2 = Double.parseDouble(num2Str);
            double result = calculate(num1, num2, operation);
            out.println("<h2>Result: " + result + "</h2>");
        }
    %>
</body>
</html>