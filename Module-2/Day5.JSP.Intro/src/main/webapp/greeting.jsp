<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Greeting Page</title>
</head>
<body>
    <h1>Greeting Page</h1>
    <p>Hello! You've been forwarded here from the main page.</p>
    
    <%
        // Displaying the current date and time
        java.util.Date currentDate = new java.util.Date();
        out.println("<p>Current Date and Time: " + currentDate.toString() + "</p>");
    %>
</body>
</html>