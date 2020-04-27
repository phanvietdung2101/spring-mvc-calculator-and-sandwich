<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 4/27/2020
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/save">
<fieldset>
    <legend>Sandwich condiments</legend>
    <input type="checkbox" name="condiment" value="Lettuce">Lettuce<br>
    <input type="checkbox" name="condiment" value="Tomato">Tomato<br>
    <input type="checkbox" name="condiment" value="Mustard">Mustard<br>
    <input type="checkbox" name="condiment" value="Sprouts">Sprouts<br>
    <hr>
    <input type="submit" value="Save" />
</fieldset>
</form>

</body>
</html>
