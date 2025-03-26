<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %> <!-- Including the header.jsp file -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Include Directive Example</title>
</head>
<body>
    <h2>Home Page</h2>
    <p>This is the main content of the home page.</p>
    
    <h3>Current Date and Time:</h3>
    <%
        // Displaying the current date and time
        java.util.Date currentDate = new java.util.Date();
        out.println("<p>" + currentDate.toString() + "</p>");
    %>
</body>
</html>