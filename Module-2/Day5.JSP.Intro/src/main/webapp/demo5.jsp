<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp:forward</title>
</head>

<!-- 
JSP Action Tags : 

JSP (JavaServer Pages) action tags are special tags that allow you to perform 
various actions in a JSP page. They are part of the JSP specification and 
provide a way to interact with JavaBeans, include other resources, forward 
requests, and more. Action tags are typically written in XML-like syntax 
and are used to encapsulate Java code in a more readable and maintainable way.

Here are some of the most commonly used JSP action tags:

1. <jsp:include>: 
Includes another resource (JSP file, HTML file, etc.) at request time.

2. <jsp:forward>: 
Forwards the request to another resource (JSP file, servlet, etc.). 
This is done on the server side, and the URL in the browser does not change.

3. <jsp:useBean>: 
Instantiates a JavaBean or retrieves an existing one from a specified 
scope (request, session, or application).

4. <jsp:setProperty>: Sets properties of a JavaBean.

5. <jsp:getProperty>: Retrieves a property from a JavaBean and displays it.

6. <jsp:plugin>: Used to include applets or other plugins in the page.

 -->
<body>

 <h1>Welcome to the Main Page</h1>
    <p>This page will forward you to the greeting page.</p>
    
    <jsp:forward page="greeting.jsp" /> <!-- Forwarding to greeting.jsp -->
</body>
</html>