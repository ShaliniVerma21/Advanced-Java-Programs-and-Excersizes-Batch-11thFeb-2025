<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Using the Page Implicit Object</title>
</head>
<body>
    <h1>Using the Page Implicit Object</h1>
<!-- 
In JSP (JavaServer Pages), the page implicit object refers to the current 
JSP page itself. It allows you to access methods and properties of the JSP page, 
including its attributes and methods defined in the page context.
 -->
    
    <%
        // Set an attribute in the page context
        pageContext.setAttribute("greeting", "Hello, welcome to the JSP page!");

        // Get the class name of the current JSP page
        String pageClassName = page.getClass().getName();
    %>
    
    <p><strong>Current Page Class Name:</strong> <%= pageClassName %></p>
    <p><strong>Greeting Message:</strong> <%= pageContext.getAttribute("greeting") %>
    </p>
    
    <h2>Page Methods</h2>
    <p><strong>Page Context:</strong> <%= pageContext %></p>
</body>
</html>