<%@ page 
    contentType="text/html; charset=UTF-8" 
    language="java" 
    pageEncoding="UTF-8" 
    import="java.util.*, java.text.SimpleDateFormat" 
    isErrorPage="false" 
    errorPage="error.jsp" 
    isThreadSafe="true" 
    buffer="8kb" 
    autoFlush="true" 
    session="true" 
    isELIgnored="false" 
%>

<!DOCTYPE html>
<html>
<head>
    <title>JSP Directive Example</title>
</head>
<!--
JSP (JavaServer Pages) directives are used to provide global information 
about an entire JSP page that tells the web container how to translate a 
JSP page into the corresponding servlet.


There are three types of directives:
1. page directive
2. include directive
3. taglib directive


page Directive Attribute are : 

1. contentType: Specifies the MIME type(Multipurpose Internet Mail Extensions) and 
character encoding of the response. In this example, it is set to text/html; 
charset=UTF-8.

2. language: Specifies the scripting language used in the JSP page. Here, 
it is set to java.

3. pageEncoding: Defines the character encoding for the JSP page itself. 
This is set to UTF-8 to ensure proper handling of characters.

4. import: Allows you to import Java classes. In this example, 
we import java.util.* to use the Date class and java.text.SimpleDateFormat 
for formatting the date.

5. extends: Specifies the class that the JSP page extends. Here, 
it extends javax.servlet.http.HttpServlet, which is the default behavior.

6. isErrorPage: Indicates whether the page is an error page. 
In this case, it is set to false, meaning this page is not an error page.

7. errorPage: Specifies the error page to which the user is redirected 
in case of an error. Here, it points to error.jsp.

8. isThreadSafe: Indicates whether the JSP page is thread-safe. 
It is set to true, meaning multiple threads can access this page simultaneously.

9. buffer: Defines the size of the output buffer. In this example, 
it is set to 8kb.

10. autoFlush: If set to true, the buffer will automatically flush when 
it is full. This is set to true in our example.

11. session: Indicates whether the JSP page can use session variables. 
It is set to true, allowing the use of session attributes.

12. isELIgnored: Specifies whether Expression Language (EL) is ignored 
in this page. It is set to false, meaning EL expressions will be evaluated.
-->
<body>
    <h1>Welcome to JSP Directive Example</h1>
    
    <h2>Current Date and Time:</h2>
    <%
        // Using imported classes to display current date and time
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date date = new Date();
        out.println(formatter.format(date));
    %>

    <h2>Session Information:</h2>
    <%
        // Storing a value in session
        session.setAttribute("username", "JohnDoe");
        String username = (String) session.getAttribute("username");
        out.println("Logged in as: " + username);
    %>
</body>
</html>
