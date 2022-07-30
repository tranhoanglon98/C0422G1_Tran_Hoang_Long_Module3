<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 29/07/2022
  Time: 8:37 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<div>
    <h2>PRODUCT LIST</h2>
    <button><a href="/">Back to product management page</a></button>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
            <th>Producer</th>
            <th>Description</th>

        </tr>
        <c:forEach var="product" items="${productList}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.producer}</td>
                <td><c:if test="${id == product.id}">
                    ${detail}
                </c:if></td>
                <td><a href="/product?action=detail&id=${product.id}">
                    <button>Detail</button>
                </a></td>
                <td><a href="/product?action=edit&id=${product.id}">
                    <button>Edit</button>
                </a></td>
                <td><a href="/product?action=remove&id=${product.id}">
                    <button>remove</button>
                </a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
