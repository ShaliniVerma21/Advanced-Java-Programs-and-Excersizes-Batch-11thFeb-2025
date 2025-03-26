<%@ page language="java" 
contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Page Directive Example</title>
</head>
<body>
    <h1>Welcome to My JSP Page!</h1>
    
    <%
        // Java code to get the current date and time
        java.util.Date currentDate = new java.util.Date();
        out.println("<p>Current Date and Time: " + currentDate.toString() + "</p>");
    %>

    <h2>Greeting Message</h2>
    <%
        // Simple greeting based on the time of day
        java.util.Calendar calendar = java.util.Calendar.getInstance();
        int hour = calendar.get(java.util.Calendar.HOUR_OF_DAY);
        
        if (hour < 12) {
            out.println("<p>Good Morning!</p>");
        } else if (hour < 18) {
            out.println("<p>Good Afternoon!</p>");
        } else {
            out.println("<p>Good Evening!</p>");
        }
    %>
</body>
</html>