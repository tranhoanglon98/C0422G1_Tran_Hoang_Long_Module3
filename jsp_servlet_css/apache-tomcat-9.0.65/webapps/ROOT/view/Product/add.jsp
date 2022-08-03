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
<body>
<div style="position: relative">
    <div>
        <video autoplay muted loop width="100%">
            <source src="https://assets.mixkit.co/videos/preview/mixkit-flock-flying-around-a-tree-during-sunset-34007-large.mp4"
                    type="video/mp4">
        </video>
    </div>
    <div style="width: 40%; left: 30%;right: 30%;top:10%; position: absolute" class="text-light">
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
                <input type="text" class="form-control" id="inputDescription" placeholder="description"
                       name="description">
            </div>
            <div class="form-group">
                <label for="inputProducer">Producer</label>
                <input type="text" class="form-control" id="inputProducer" placeholder="producer" name="producer">
            </div>
            <br>
            <button type="submit" class="btn btn-outline-light">Add</button>
            <a class="btn btn-outline-light" href="/" role="button" style="float: right">Back to product
                management</a>
        </form>
        <c:if test="${response != null}">
            <h5>${response}</h5>
        </c:if>
    </div>
</div>
</body>
</html>
