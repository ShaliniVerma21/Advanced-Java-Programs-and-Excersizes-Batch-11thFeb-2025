<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // Check if the user is logged in
    String userName = (String) session.getAttribute("userName");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            margin: 0;
        }
        .container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            width: 300px; /* Fixed width for the container */
        }
        h2 {
            color: #333;
        }
        a {
            color: #4CAF50; /* Link color */
            text-decoration: none; /* Remove underline */
        }
        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            if (userName == null || userName.isEmpty()) {
        %>
            <h2>You are not logged in</h2>
            <p><a href="index.jsp">Please Login</a></p>
        <%
            } else {
        %>
            <h2>Welcome, <%= session.getAttribute("userid") %></h2>
            <p><a href="logout.jsp">Log out</a></p>
        <%
            }
        %>
    </div>
</body>
</html>