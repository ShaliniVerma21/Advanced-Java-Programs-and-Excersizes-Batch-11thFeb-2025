<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ page import="java.sql.*"%>
<%
String userName = request.getParameter("userName");
String password = request.getParameter("password");
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");

Connection con = null;
PreparedStatement ps = null;

try {
    // Load MySQL JDBC Driver
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    // Use "com.mysql.cj.jdbc.Driver" for MySQL Connector/J 8.0 and above

    // Establish connection
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/J2EE", "root", "root");

    // Prepare SQL statement
    String sql = "INSERT INTO USER (first_name, last_name, email, username, password, regdate)"
    +"VALUES (?, ?, ?, ?, ?, CURDATE())";
    ps = con.prepareStatement(sql);
    ps.setString(1, firstName);
    ps.setString(2, lastName);
    ps.setString(3, email);
    ps.setString(4, userName);
    ps.setString(5, password);

    // Execute update
    int i = ps.executeUpdate();
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
} catch (ClassNotFoundException e) {
    e.printStackTrace(); // Log the exception
    //response.sendRedirect("error.jsp"); // Redirect to an error page
} catch (SQLException e) {
    e.printStackTrace(); // Log the exception
    //response.sendRedirect("error.jsp"); // Redirect to an error page
} finally {
    // Close resources
    try {
        if (ps != null) ps.close();
        if (con != null) con.close();
    } catch (SQLException e) {
        e.printStackTrace(); // Log the exception
    }
}
%>