<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>jsp:plugin Example</title>
</head>
<body>

<h1>Applet Example</h1>

<jsp:plugin type="applet" code="com.example.HelloWorldApplet" width="300" height="300">
    <jsp:params>
        <jsp:param name="param1" value="value1" />
    </jsp:params>
    <jsp:plugin>
        <jsp:message key="applet.not.supported" />
    </jsp:plugin>
</jsp:plugin>

</body>
</html>