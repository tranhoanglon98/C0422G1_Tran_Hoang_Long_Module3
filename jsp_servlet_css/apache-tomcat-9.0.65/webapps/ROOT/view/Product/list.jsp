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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body  style="background: linear-gradient(to right,#8E0E00,#1F1C18)">
</td>
</tr>
<div class="container">
    <nav class="navbar navbar-light bg-light">
        <div class="container-fluid">
            <span class="navbar-brand mb-0 h1">PRODUCT LIST</span>
        </div>
    </nav>
    <table class="table table-striped table-hover">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Price</th>
            <th>Producer</th>
            <th colspan="5">Description</th>
        </tr>
        <c:forEach var="product" items="${productList}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.producer}</td>
            <td width="40%"><c:if test="${id == product.id}">
                ${detail}
            </c:if></td>
            <td><a href="/product?action=detail&id=${product.id}">
                <button>Detail</button>
            </a></td>
            <td><a href="/product?action=edit&id=${product.id}">
                <button>Edit</button>
            </a></td>
            <td>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#delete">
                    Delete
                </button>
                <div class="modal fade" id="delete" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Delete product</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Are you sure that you want to delete this product ?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <a href="product?action=remove&id=${product.id}">
                                    <button type="button" class="btn btn-primary">Yes</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                </c:forEach>
    </table>
    <tr><a class="btn btn-primary" href="/" role="button">Back to product management page</a></tr>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
