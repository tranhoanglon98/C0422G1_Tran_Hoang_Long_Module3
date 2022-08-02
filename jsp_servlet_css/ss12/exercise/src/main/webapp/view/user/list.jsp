<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/08/2022
  Time: 10:25 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/view/bootstrap-5.1.3-dist/css/bootstrap.min.css">
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/jsp_servlet_css/">
</head>
<body>
<h2>List of Users</h2><br>
<a href="/user?action=add">add new user</a><br>
<a href="/user?action=sortByName">sort by name</a><br>
<table class="table table-hover">
    <tr>
        <form action="/user" method="get" >
            <input type="text" name="country" placeholder="enter country">
            <button type="submit" name="action" value="findById">find</button>
        </form></tr>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Country</th>
    </tr>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td><c:out value="${user.id}"/></td>
            <td><c:out value="${user.name}"/></td>
            <td><c:out value="${user.email}"/></td>
            <td><c:out value="${user.country}"/></td>
            <td>
                <a href="/user?action=edit&id=${user.id}">Edit</a>
            </td>
            <td>
                <a href="/user?action=delete&id=${user.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<script src="/view/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
