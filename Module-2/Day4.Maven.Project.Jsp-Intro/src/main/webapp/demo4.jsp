<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Implicit Object</title>
</head>
<body>
<!-- 
The session implicit object in JSP represents the current user's session. 
It allows you to store and retrieve data that is specific to a user's session, 
which can be useful for maintaining user state across multiple requests.
 -->
 <body>
    <h1>Set Session Attributes</h1>
    
    <%
        // Set session attributes
        session.setAttribute("username", "Develearn");
        session.setAttribute("userRole", "Admin");
    %>
    
    <p>Session attributes have been set.</p>
    <p><a href="getSession.jsp">Go to Get Session Attributes</a></p>
</body>
</html>