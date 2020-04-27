<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/27/2020
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<label>Sandwich Condiments</label>
<ul>
    <c:forEach items="${requestScope['condiments']}" var="condiment">
        <li>${condiment}</li>
    </c:forEach>
</ul>
</body>
</html>
