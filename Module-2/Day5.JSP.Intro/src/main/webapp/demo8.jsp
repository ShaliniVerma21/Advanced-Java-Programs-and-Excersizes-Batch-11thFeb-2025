<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.Person" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp:setProperty Example</title>
</head>
<body>

<jsp:useBean id="person" class="com.example.Person" scope="session" />

<!-- Setting properties of the person bean -->
<jsp:setProperty name="person" property="name" value="Alice" />
<jsp:setProperty name="person" property="age" value="30" />

<h1>Person Information</h1>
<p>Name: <jsp:getProperty name="person" property="name" /></p>
<p>Age: <jsp:getProperty name="person" property="age" /></p>

</body>
</html>