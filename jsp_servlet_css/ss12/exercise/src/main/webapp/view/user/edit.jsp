<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/08/2022
  Time: 10:50 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/user" method="post">
    <h2>Edit User</h2>
    <p>User Id:</p>
    <input type="text" name="id" value="${user.id}" readonly>
    <p>User Name:</p>
    <input type="text" name="name" value="${user.name}" />
    <p>User Email:</p>
    <input type="text" name="email" value="${user.email}" />
    <p>Country:</p>
    <input type="text" name="country" value="${user.country}"/>
    <button type="submit" name="action" value="edit">save</button>
</form>
</body>
</html>
