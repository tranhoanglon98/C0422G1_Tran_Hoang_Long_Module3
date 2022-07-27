<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 27/07/2022
  Time: 7:18 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    <form action="/discount" method="get">
        <p>Enter product description</p>
        <input type="text" placeholder="Product Description" name="description">
        <p>Enter list price</p>
        <input type="text" placeholder="List price" name="price">
        <p>Enter discount percent</p>
        <input type="text" placeholder="Discount percent" name="percent">
        <button type="submit">Calculator</button>
    </form>
    <p>Discount amount: ${discount}</p>
    <p>Discount price: ${discountPrice}</p>
</div>
</body>
</html>
