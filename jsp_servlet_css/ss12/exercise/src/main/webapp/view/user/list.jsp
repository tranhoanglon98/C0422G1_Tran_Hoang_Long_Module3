<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 01/08/2022
  Time: 10:25 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/view/bootstrap-5.1.3-dist/css/bootstrap.min.css">
<link rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/jsp_servlet_css/">
</head>
<body>
<div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">List of Users</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/user?action=add">Add new user</a>
                    </li>
                </ul>
                <form class="d-flex" action="/user" method="get">
                    <input name="country" class="form-control me-2" type="search" placeholder="Find by country"
                           aria-label="Search">
                    <button class="btn btn-outline-success" name="action" value="findByCountry" type="submit">Find
                    </button>
                </form>
            </div>
        </div>
    </nav>
</div>
<div class="container-fluid row pt-5">
    <div class="col-lg-2"></div>
    <div class="col-lg-8">
        <table class="table table-hover">
            </tr>
            <tr>
                <th>ID</th>
                <th><span>Name</span><a href="/user?action=sortByName" style="float: right"><span
                        class="material-symbols-outlined">sort_by_alpha</span></a>
                </th>
                <th>Email</th>
                <th colspan="3">Country</th>
            </tr>
            <c:forEach var="user" items="${userList}">
                <tr>
                    <td><c:out value="${user.id}"/></td>
                    <td><c:out value="${user.name}"/></td>
                    <td><c:out value="${user.email}"/></td>
                    <td><c:out value="${user.country}"/></td>
                    <td>
                        <a href="/user?action=edit&id=${user.id}">
                            <button type="button" class="btn btn-outline-primary">Edit</button>
                        </a>
                    </td>
                    <td>
                        <div>
                            <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal"
                                    data-bs-target="#modal-${user.id}">
                                Delete
                            </button>

                            <div class="modal fade" id="modal-${user.id}" tabindex="-1"
                                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p>ID: ${user.id}</p>
                                            <p>Name: ${user.name}</p>
                                            <p>Email: ${user.email}</p>
                                            <p>Country: ${user.country}</p>
                                            <h5>Are you sure that you want to delete this User?</h5>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                                Close
                                            </button>
                                            <a href="/user?action=delete&id=${user.id}">
                                                <button type="button" class="btn btn-danger">Yes</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
<script src="/view/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
