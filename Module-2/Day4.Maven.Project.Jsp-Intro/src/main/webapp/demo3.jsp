<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Using the PageContext Implicit Object</title>
</head>
<body>
<!-- The pageContext implicit object in JSP provides a way to access various 
attributes and methods related to the current JSP page. It acts as a bridge 
between the JSP page and the various scopes (page, request, session, and 
application) and allows you to manage attributes easily. -->

    <h1>Using the PageContext Implicit Object</h1>
    
    <%
        // Set attributes in different scopes using pageContext
        pageContext.setAttribute("pageAttribute", "This is a page attribute.");
        pageContext.getRequest().setAttribute("requestAttribute", 
        		"This is a request attribute.");
        pageContext.getSession().setAttribute("sessionAttribute", 
        		"This is a session attribute.");
        pageContext.getServletContext().setAttribute("applicationAttribute",
        		"This is an application attribute.");
    %>
    
    <h2>Attributes Set in Different Scopes</h2>
    <p><strong>Page Attribute:</strong> 
    <%= pageContext.getAttribute("pageAttribute") %></p>
    <p><strong>Request Attribute:</strong> 
    <%= pageContext.getRequest().getAttribute("requestAttribute") %></p>
    <p><strong>Session Attribute:</strong> 
    <%= pageContext.getSession().getAttribute("sessionAttribute") %></p>
    <p><strong>Application Attribute:</strong> 
    <%= pageContext.getServletContext().getAttribute("applicationAttribute") %></p>
    
    <h2>PageContext Methods</h2>
    <p><strong>Page Context:</strong> <%= pageContext %></p>
</body>
</html>
</html>