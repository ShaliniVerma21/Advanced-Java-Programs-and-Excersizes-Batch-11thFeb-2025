<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application implicit object</title>
</head>
<body>
<!-- 
The application implicit object in JSP represents the servlet context for 
the entire web application. It allows you to store and retrieve data that 
is shared across all users and sessions. This is useful for storing 
application-wide settings, resources, or data that should be accessible 
to all users.
 -->
 <h1>Set Application Attributes</h1>
    
    <%
        // Set application attributes
        application.setAttribute("appName", "My Web Application");
        application.setAttribute("version", "1.0.0");
    %>
    
    <p>Application attributes have been set.</p>
    <p><a href="getApplication.jsp">Go to Get Application Attributes</a></p>
</body>
</html>