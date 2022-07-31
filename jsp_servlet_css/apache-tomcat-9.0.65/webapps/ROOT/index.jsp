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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div>
    <video autoplay muted loop width="100%">
        <source src="https://assets.mixkit.co/videos/preview/mixkit-single-drops-of-water-create-ripples-110-large.mp4" type="video/mp4">
    </video>
    <div style="position: fixed; top: 0;right: 0;left: 0">
        <nav class="navbar navbar-expand-lg navbar-light">
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
                        <input name="name" class="form-control me-2" style="background: none;border: black solid 1px" type="search" placeholder="product name" aria-label="Search">
                        <button class="btn btn-outline-dark" type="submit" name="action" value="find">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <c:if test="${result != null}">
            <p style="color: red">${result}</p>
        </c:if>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
