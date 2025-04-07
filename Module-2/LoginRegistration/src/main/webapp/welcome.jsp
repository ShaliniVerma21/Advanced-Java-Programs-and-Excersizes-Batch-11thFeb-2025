<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light gray background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            margin: 0;
        }
        .container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            width: 300px; /* Fixed width for the container */
        }
        h2 {
            color: #4CAF50; /* Green color for the heading */
        }
        a {
            color: #4CAF50; /* Link color */
            text-decoration: none; /* Remove underline */
            font-weight: bold; /* Bold text for emphasis */
        }
        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registration Successful</h2>
        <p>Please login here:</p>
        <a href="index.jsp">Go to Login</a>
    </div>
</body>
</html>