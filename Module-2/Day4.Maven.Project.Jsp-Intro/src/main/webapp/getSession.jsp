<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Get Session Attributes</title>
</head>
<body>
    <h1>Get Session Attributes</h1>
    
    <%
        // Retrieve session attributes
        String username = (String) session.getAttribute("username");
        String userRole = (String) session.getAttribute("userRole");
        
        if (username != null && userRole != null) {
    %>
        <p><strong>Username:</strong> <%= username %></p>
        <p><strong>User Role:</strong> <%= userRole %></p>
    <%
        } else {
    %>
        <p>No session attributes found. Please set them first.</p>
    <%
        }
    %>
    
    <p><a href="demo4.jsp">Go to Set Session Attributes</a></p>
</body>
</html>