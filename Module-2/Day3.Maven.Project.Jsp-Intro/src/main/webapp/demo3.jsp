<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Example 2: User Registration Form -->
<%!   
    // Declaration tag: Method to format user details
    String formatUserDetails(String name, String email) {
        return "Name: " + name + ", Email: " + email;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
    <h1>User Registration Form</h1>
    
    <form method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" required>
        <br>
        <label for="email">Email:</label>
        <input type="email" name="email" required>
        <br>
        <input type="submit" value="Register">
    </form>

    <%
        // Scriptlet tag: Process form submission
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        if (name != null && email != null) {
            String userDetails = formatUserDetails(name, email);
            out.println("<h2>Registration Successful!</h2>");
            out.println("<p>" + userDetails + "</p>");
        }
    %>
</body>
</html>