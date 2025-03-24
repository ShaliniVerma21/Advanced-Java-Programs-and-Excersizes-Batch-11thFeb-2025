<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Get Application Attributes</title>
</head>
<body>
    <h1>Get Application Attributes</h1>
    
    <%
        // Retrieve application attributes
        String appName = (String) application.getAttribute("appName");
        String version = (String) application.getAttribute("version");
        
        if (appName != null && version != null) {
    %>
    
    
        <p><strong>Application Name:</strong> <%= appName %></p>
        <p><strong>Version:</strong> <%= version %></p>
        
        
    <%
        } else {
    %>
    
    
        <p>No application attributes found. Please set them first.</p>
    
    
    <%
        }
    %>
    
    <p><a href="demo5.jsp">Go to Set Application Attributes</a></p>
</body>
</html>