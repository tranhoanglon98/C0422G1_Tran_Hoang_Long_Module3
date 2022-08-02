<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/08/2022
  Time: 10:39 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/view/bootstrap-5.1.3-dist/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid col-6 mt-5">
    <form action="/user" method="post">
        <h2>Add New User</h2>
        <div class="mb-3">
            <label for="inputName" class="form-label">User Name</label>
            <input type="text" name="name" class="form-control" id="inputName" placeholder="User name">
        </div>
        <div class="mb-3">
            <label for="inputEmail" class="form-label">User email</label>
            <input type="text" name="email" class="form-control" id="inputEmail" placeholder="User email">
        </div>
        <div class="mb-3">
            <label for="inputCountry" class="form-label">User country</label>
            <input type="text" name="country" class="form-control" id="inputCountry" placeholder="User coutry">
        </div>
        <button class="btn btn-outline-primary" type="submit" name="action" value="add">add</button>
        <a style="float: right" href="/user"><button class="btn btn-outline-primary" type="button" name="action" value="add">Back to list of Users</button>
        </a>
    </form>
</div>
<script src="/view/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
