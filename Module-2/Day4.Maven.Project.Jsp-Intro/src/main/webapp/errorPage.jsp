<%@ page isErrorPage="true" language="java" 
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
<style>
    body { font-family: Arial, sans-serif; background-color: #f8d7da; color: #721c24; }
    h1 { color: #721c24; }
    p { margin: 10px 0; }
    a { color: #0056b3; }
</style>
</head>
<body>
    <h1>An Error Occurred</h1>
    <p>Sorry, an error has occurred while processing your request.</p>
    
    <% 
        // Log the exception details for debugging (this is just an example, 
        // you should use a proper logging framework in a real application)
        String exceptionType = exception.getClass().getName();
        String errorMessage = exception.getMessage();
        
        // Log the exception details (this is just a placeholder for actual logging)
        System.err.println("Exception Type: " + exceptionType);
        System.err.println("Error Message: " + errorMessage);
    %>
    
    <h2>Error Details:</h2>
    <p>We encountered an unexpected error. Please try again later.</p>
    <p>If the problem persists, please contact support at 
    <a href="mailto:support@example.com">support@example.com</a>.</p>
    <p><a href="demo1.jsp">Return to Home Page</a></p>
</body>
</html>