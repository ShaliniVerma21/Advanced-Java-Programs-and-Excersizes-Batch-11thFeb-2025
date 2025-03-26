<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp:getProperty Example</title>
</head>
<body>

<jsp:useBean id="book" class="com.example.Book" scope="session" />

<!-- Setting properties of the book bean -->
<jsp:setProperty name="book" property="title" value="The Great Gatsby" />
<jsp:setProperty name="book" property="author" value="F. Scott Fitzgerald" />

<h1>Book Information</h1>
<p>Title: <jsp:getProperty name="book" property="title" /></p>
<p>Author: <jsp:getProperty name="book" property="author" /></p>

</body>
</html>