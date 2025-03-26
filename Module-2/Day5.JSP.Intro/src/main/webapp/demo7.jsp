<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp:useBean Example</title>
</head>
<body>

<jsp:useBean id="user" class="com.example.User" scope="session" />
<jsp:setProperty name="user" property="name" value="John Doe" />
<jsp:setProperty name="user" property="email" value="john.doe@example.com" />

<h1>User Profile</h1>
<p>Name: <jsp:getProperty name="user" property="name" /></p>
<p>Email: <jsp:getProperty name="user" property="email" /></p>

</body>
</html>