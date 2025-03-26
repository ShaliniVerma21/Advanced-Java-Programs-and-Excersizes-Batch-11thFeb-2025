<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp:include</title>
</head>
<body>

<jsp:include page="header.jsp" /> <!-- Including the header.jsp file -->

<h2>Home Page</h2>
<p>This is the main content of the home page.</p>

<h3>Current Date and Time:</h3>
<%
    // Displaying the current date and time
    java.util.Date currentDate = new java.util.Date();
    out.println("<p>" + currentDate.toString() + "</p>");
%>

<jsp:include page="footer.jsp" /> <!-- Including the footer.jsp file -->
</body>
</html>