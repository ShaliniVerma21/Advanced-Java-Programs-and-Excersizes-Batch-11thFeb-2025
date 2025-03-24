<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- JSP page that may throw an exception -->
 <h1>This page will cause an error</h1>
    <%
        // Intentionally causing a NullPointerException
        String str = null;
        str.length(); // This will throw a NullPointerException
    %>
</body>
</html>