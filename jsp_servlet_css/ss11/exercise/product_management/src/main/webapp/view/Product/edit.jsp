<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 30/07/2022
  Time: 12:05 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EDIT</title>
</head>
<body>
<h2>Edit Page</h2>
<form action="/product?action=edit&id=${product.id}" method="post">
    <p>Id</p>
    <input type="text" name="id" value="${product.id}" disabled>
    <p>Product name</p>
    <input type="text" name="name" value="${product.name}">
    <p>Product price</p>
    <input type="text" name="price" value="${product.price}">
    <p>description</p>
    <input type="text" name="description" value="${product.description}">
    <p>producer</p>
    <input type="text" name="producer" value="${product.producer}">
    <br>
    <button type="submit">Save</button>
</form>
</body>
</html>