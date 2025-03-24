<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Implicit Objects</title>
</head>
<body>
<!-- 
In JavaServer Pages (JSP), implicit objects are predefined objects that 
are available for use in JSP pages without needing to declare them explicitly. 
These objects provide a convenient way to access various aspects of the request, 
response, session, and application context. 

JSP Implicit Objects are : 

1. out 
(An instance of JspWriter used to send output to the client.)

Example: Displaying user greetings or results
out.println("Welcome, " + username + "!");

2. request 
(An instance of HttpServletRequest that represents the client's request,
 containing request parameters and attributes.)
 
 Example: Accessing form input values.
 String email = request.getParameter("email");
 
3. response 
(An instance of HttpServletResponse that represents the server's response 
to the client, allowing you to set headers and content.)

Example: Setting content type or response headers.
response.setContentType("text/html");

4. config
(An instance of ServletConfig that provides configuration information for 
the servlet, including initialization parameters.)

Example: Retrieving configuration settings for the application
String dbUrl = config.getInitParameter("databaseUrl");

5. application
(An instance of ServletContext that represents the web application context, 
allowing access to application-wide data.)

Example: Keeping track of application statistics or settings
Integer visitorCount = (Integer) application.getAttribute("visitorCount");

6. session
(An instance of HttpSession that represents the user's session, allowing 
storage and retrieval of user-specific data across requests.)

Example: Storing user login information or preferences.
session.setAttribute("loggedInUser ", username);

7. pageContext
(An instance of PageContext that provides access to all implicit objects and 
manages attribute scopes (page, request, session, application).)

Example: Storing temporary data for the current page
pageContext.setAttribute("tempData", "someValue");

8. page
(An instance of Object that refers to the current JSP page itself, 
allowing access to instance variables and methods.)

Example: Calling a method defined in the JSP
out.println("Current page: " + this.getClass().getName());

9. exception
(An instance of Throwable that represents any exception thrown during 
the processing of the JSP page, allowing error handling.)

Example: Displaying error messages when an exception is caught.
out.println("An error occurred: " + exception.getMessage());
 -->

    <h1>Enter Your Name</h1>
    <form action="demo5.jsp" method="post">
        <label for="username">Name:</label>
        <input type="text" name="username" required>
        <input type="submit" value="Greet Me">
    </form>

</body>
</html>