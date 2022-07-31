<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 30/07/2022
  Time: 12:05 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EDIT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<div style="position: relative">
    <div>
        <video autoplay muted loop width="100%">
            <source src="https://assets.mixkit.co/videos/preview/mixkit-3d-simulation-of-a-red-sunset-at-sea-33919-large.mp4"
                    type="video/mp4">
        </video>
    </div>
    <div style="width: 40%; left: 30%;right: 30%;top:10%; position: absolute">
        <h3>Edit product</h3>
        <form action="/product?action=edit&id=${product.id}" method="post">
            <div class="form-group">
                <label for="inputId">Product Id</label>
                <input type="text" class="form-control" id="inputId" value="${product.id}" name="id" disabled>
            </div>
            <div class="form-group">
                <label for="inputName">Product name</label>
                <input type="text" class="form-control" id="inputName" value="${product.name}" name="name">
            </div>
            <div class="form-group">
                <label for="inputPrice">Price</label>
                <input type="number" class="form-control" id="inputPrice" value="${product.price}" name="price">
            </div>
            <div class="form-group">
                <label for="inputDescription">Description</label>
                <input type="text" class="form-control" id="inputDescription" value="${product.description}"
                       name="description">
            </div>
            <div class="form-group">
                <label for="inputProducer">Producer</label>
                <input type="text" class="form-control" id="inputProducer" value="${product.producer}" name="producer">
            </div>
            <br>
            <button type="submit" class="btn btn-outline-dark">save</button>
            <a class="btn btn-outline-dark" href="/" role="button" style="float: right">Back to product management</a>
        </form>
    </div>
</div>
</body>
</html>
