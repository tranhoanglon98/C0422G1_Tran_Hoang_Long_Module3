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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body style="background: linear-gradient(to right,#8E0E00,#1F1C18)">
<div>
    <div>
        <div style="width: 40%; margin: 5% 0 0 30%" class="text-success">
            <h3>Add new product</h3>
            <form action="/product?action=add" method="post">
                <div class="form-group">
                    <label for="inputName">Product name</label>
                    <input type="text" class="form-control" id="inputName" placeholder="product name" name="name">
                </div>
                <div class="form-group">
                    <label for="inputPrice">Price</label>
                    <input type="number" class="form-control" id="inputPrice" placeholder="price" name="price">
                </div>
                <div class="form-group">
                    <label for="inputDescription">Description</label>
                    <input type="text" class="form-control" id="inputDescription" placeholder="description" name="description">
                </div>
                <div class="form-group">
                    <label for="inputProducer">Producer</label>
                    <input type="text" class="form-control" id="inputProducer" placeholder="producer" name="producer">
                </div>
                <br>
                <button type="submit" class="btn btn-outline-success">Add</button>
                <a class="btn btn-outline-success" href="/" role="button" style="float: right">Back to product management</a>
            </form>
            <c:if test="${response != null}">
                <h5>${response}</h5>
            </c:if>
        </div>
    </div>
</div>
</body>
</html>
