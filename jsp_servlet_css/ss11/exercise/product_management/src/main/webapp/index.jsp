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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Product management</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/product?action=add">Add new product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/product?action=display">Product list</a>
                    </li>

                </ul>
                <form class="d-flex" action="/product" method="get">
                    <input name="name" class="form-control me-2" type="search" placeholder="product name" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit" name="action" value="find">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <c:if test="${result != null}">
        <p style="color: red">${result}</p>
    </c:if>
</div>
</body>
</html>
