<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/27/2020
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    function setOperation(operation) {
        document.getElementById("operation").value = operation;
    }
</script>
<form method="post">
    <label>
        <input type="text" name="num_1">
    </label>
    <label>
        <input type="text" name="num_2">
    </label>
    <input type="hidden" id="operation" name="operation">
    <input type="submit" onclick="setOperation('addition')">
    <input type="submit" onclick="setOperation('subtraction')">
    <input type="submit" onclick="setOperation('multiplication')">
    <input type="submit" onclick="setOperation('division')">
</form>
<c:if test="${requestScope['result'] != null}">
    <p>Result is : ${requestScope['result']}</p>
</c:if>

</body>
</html>
