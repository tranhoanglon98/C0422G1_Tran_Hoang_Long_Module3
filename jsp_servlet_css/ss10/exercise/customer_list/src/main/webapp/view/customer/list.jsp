<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 28/07/2022
  Time: 3:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customerList}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dayOfBirth}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.avatar}" alt="avatar" width="60px" height="60px"></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
