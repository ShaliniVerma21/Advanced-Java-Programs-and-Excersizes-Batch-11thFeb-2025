<%@  page language="java" 
     contentType="text/html; 
     charset=UTF-8"
     pageEncoding="UTF-8"
     import="javax.servlet.ServletConfig"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Using the Config Implicit Object</title>
</head>
<body>

<!-- 
The config implicit object in JSP provides access to the servlet configuration 
for the current JSP page. It allows you to retrieve initialization parameters 
defined in the web.xml file for the servlet that corresponds to the JSP page. 
This can be useful for configuring settings that your application needs to read 
at runtime.
 -->
 
    <h1>Using the Config Implicit Object</h1>
    
    <%
        // Retrieve initialization parameters using the config implicit object
        String appName = config.getInitParameter("appName");
        String version = config.getInitParameter("version");
    %>
    
    <h2>Application Configuration</h2>
    <p><strong>Application Name:</strong> <%= appName != null ? appName : "Not defined"
    		%></p>
    <p><strong>Version:</strong> <%= version != null ? version : "Not defined" %></p>
</body>
</html>