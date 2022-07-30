<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 29/07/2022
  Time: 3:03 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<div>
    <h1>PRODUCT MANAGEMENT</h1>
    <button><a href="/product?action=add">Add new product</a></button>
    <button><a href="/product?action=display">Product list</a></button>

    <form action="/product" method="get">
        <input type="text" name="name" placeholder="enter product name">
        <button type="submit" name="action" value="find">Find</button>
    </form>

    <c:if test="${result != null}">
        <h4>${result}</h4>
    </c:if>
</div>
</body>
</html>
