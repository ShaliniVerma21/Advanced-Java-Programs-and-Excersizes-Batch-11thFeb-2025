<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Greeting</title>
</head>
<body>
    <h1>Greeting Page</h1>
    
    <%
        // Set the content type of the response to HTML
        response.setContentType("text/html; charset=UTF-8");
        
        // Retrieve the username from the request
        String username = request.getParameter("username");
        
        // Check if the username is not null and display a greeting
        if (username != null && !username.trim().isEmpty()) {
            // Using the out implicit object to send output to the client
            out.println("<h2>Welcome, " + username + "!</h2>");
        } else {
            out.println("<h2>Please enter a valid name.</h2>");
        }
    %>
    
    <a href="demo4.jsp">Go Back</a>
</body>
</html>