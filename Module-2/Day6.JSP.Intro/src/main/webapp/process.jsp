<%@ page language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@page import="bean.RegisterDao"%>  
<jsp:useBean id="obj" class="bean.User"/>  
<jsp:setProperty property="*" name="obj"/>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
</head>
<body>

<%
    int status = RegisterDao.register(obj);
    if (status > 0) {
        // Registration successful
        response.sendRedirect("success.jsp"); // Redirect to a success page
    } else {
        // Registration failed
        out.print("<h3>Registration failed. Please try again.</h3>");
    }
%>

</body>
</html>