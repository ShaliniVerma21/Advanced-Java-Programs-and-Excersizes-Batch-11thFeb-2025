<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Welcome to Java Advanced Module-2</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        p {
            font-size: 18px;
        }
    </style>
</head>
<body>
<!--
JSP Scripting elements
(In JSP, java code can be written inside the jsp page using the scriptlet tag.)

There are three types of scripting elements:
1. scriptlet tag(it is used to execute java source code in JSP) 
2. expression tag(It is mainly used to print the values of variable or method.)
3. declaration tag(it is used to declare fields and methods.)
-->


<!-- scriptlet tag  Syntax : <%  %>-->


<%out.print("welcome to java advanced module-2 sessions"); %>


<!-- expression tag Syntax : <%=  %>-->

Current Time: <%= java.util.Calendar.getInstance().getTime() %>  


<!-- declaration tag -->
<%!   
int cube(int n){  
return n*n*n;  
}  
%> 
 
<%= "Cube of 3 is:"+cube(3) %>  

  <h1>
        <!-- Scriptlet tag: Welcome message -->
        <% out.print("Welcome to Java Advanced Module-2 sessions!"); %>
    </h1>
    
    <p>
        <!-- Expression tag: Display current time -->
        Current Time: <%= java.util.Calendar.getInstance().getTime() %>
    </p>
    
    <p>
        <!-- Using the declared method to calculate the cube of 3 -->
        <%= "Cube of 3 is: " + cube(3) %>
    </p>
    
    <p>
        <!-- Using the declared method to calculate the cube of a user-defined number -->
        <% 
            int userNumber = 4; // You can change this number to test with different values
            out.print("Cube of " + userNumber + " is: " + cube(userNumber));
        %>
    </p>
  
</body>
</html>