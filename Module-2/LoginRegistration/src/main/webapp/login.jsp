<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("uname");    
    String password = request.getParameter("password");
    // Load MySQL JDBC Driver
    Class.forName("com.mysql.cj.jdbc.Driver"); 
    // Use "com.mysql.cj.jdbc.Driver" for MySQL Connector/J 8.0 and above

    // Establish connection
     Connection con = DriverManager.getConnection
     ("jdbc:mysql://localhost:3306/J2EE", "root", "root");

    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user where userName='" 
    + userName + "' and password='" +password + "'");
    if (rs.next()) {
        session.setAttribute("userid", userName);
        response.sendRedirect("success.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>