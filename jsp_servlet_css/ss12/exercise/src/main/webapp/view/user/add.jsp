<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/08/2022
  Time: 10:39 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/user" method="post">
    <h2>Add New User</h2>
    <p>User Name:</p>
    <input type="text" name="name"/>
    <p>User Email:</p>
    <input type="text" name="email"/>
    <p>Country:</p>
    <input type="text" name="country"/>
    <button type="submit" name="action" value="add">add</button>
</form>
</body>
</html>
