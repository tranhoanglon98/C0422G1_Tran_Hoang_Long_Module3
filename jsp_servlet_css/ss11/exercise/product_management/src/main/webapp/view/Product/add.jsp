<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 30/07/2022
  Time: 10:56 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<div>
    <h2>ADD  NEW PRODUCT</h2>
    <button><a href="/">Back to product management page</a></button>
    <button><a href="/product?action=display"> go to product list page</a></button>

    <form action="/product?action=add" method="post">
        <input type="text" name="name" placeholder="Product name">
        <input type="number" name="price" placeholder="Product price">
        <input type="text" name="description" placeholder="description">
        <input type="text" name="Producer" placeholder="Producer">
        <button type="submit">Add</button>
    </form>
    <c:if test="${response != null}">
        <h4>${response}</h4>
    </c:if>
</div>
</body>
</html>
