<%@ page language="java" 
    contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" %>

<!-- Taglib directive for JSTL core -->
<%@ taglib uri="http://jakarta.apache.org/taglibs/standard" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Taglib Directive Example</title>
</head>
<body>
    <h1>Item List</h1>
    
    <%
        // Creating a list of items in Java
        java.util.List<String> items = new java.util.ArrayList<>();
        items.add("Apple");
        items.add("Banana");
        items.add("Cherry");
        items.add("Date");
        items.add("Elderberry");
        
        // Setting the list as a request attribute
        request.setAttribute("itemList", items);
    %>

    <table border="1">
        <tr>
            <th>Item</th>
        </tr>
        <!-- Using JSTL to iterate over the list -->
        <c:forEach var="item" items="${itemList}">
            <tr>
                <td>${item}</td> <!-- Correctly displaying each item -->
            </tr>
        </c:forEach>
    </table>

    <!-- Note: Ensure JSTL dependencies are included in your project -->
</body>
</html>