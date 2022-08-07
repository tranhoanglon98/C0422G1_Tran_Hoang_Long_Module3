<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/08/2022
  Time: 7:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../bootstrap-5.1.3-dist/normalize.css">
    <link rel="stylesheet" href="/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/DataTables-1.12.1/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link href='https://fonts.googleapis.com/css?family=Courgette' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/121b5e5230.js" crossorigin="anonymous"></script>
    <style>
        #list td {
            padding-left: 5px;
        }

        #list th {
            padding-left: 0;
            padding-right: 0;
        }

    </style>
</head>
<body style="font-family: Courgette,serif;background: #E0FFFF">
<div class="container-fluid position-relative">
    <div class="row">
        <div class="col-lg-10 d-flex justify-content-start  position-absolute" style="top: 10%">
            <div class="row">
                <div class="col-l-12 ps-2 pe-2 text-dark">
                    <div class="row text-center">
                        <h2>Customer List</h2>
                    </div>
                    <div class="row mt-2">
                        <div class="col-lg-3">
                            <a href="/customer?action=add">
                                <button class="btn btn-dark text-warning">Add new Customer</button>
                            </a>
                        </div>
                        <div class="col-lg-9">
                            <form action="/customer" method="get">
                                <div class="row">
                                    <div class="col-lg-3"></div>
                                    <div class="col-lg-3">
                                        <input type="text" placeholder="Customer code" name="customerCode" class="form-control">
                                    </div>
                                    <div class="col-lg-3">
                                        <input type="text" placeholder="Customer Name" name="customerName" class="form-control">
                                    </div>
                                    <div class="col-lg-3">
                                        <button type="submit" name="action" value="findByName" class="btn btn-dark text-warning">search</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <table class="table text-dark" id="list">
                        <thead>
                        <tr class="text-center">
                            <th>Code</th>
                            <th>Name</th>
                            <th>Birthday</th>
                            <th>Gender</th>
                            <th>ID card</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Customer type</th>
                            <th>address</th>
                            <th></th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${customerList}" var="customer">
                            <tr>
                                <td>${customer.customerCode}</td>
                                <td>${customer.name}</td>
                                <td>${customer.birthDay}</td>
                                <td>
                                    <c:if test="${customer.gender == true}">
                                        Nam
                                    </c:if>
                                    <c:if test="${customer.gender == false}">
                                        Nữ
                                    </c:if>
                                </td>
                                <td>${customer.idCard}</td>
                                <td>${customer.phone}</td>
                                <td>${customer.email}</td>
                                <c:forEach items="${customerTypeList}" var="customerType">
                                    <c:if test="${customerType.customerTypeCode == customer.customerTypeCode}">
                                        <td>${customerType.customerType}</td>
                                    </c:if>
                                </c:forEach>
                                <td>${customer.address}</td>
                                <td>
                                    <a href="/customer?action=update&id=${customer.customerCode}">
                                        <button type="submit" name="action" value=""
                                                class="btn btn-dark text-warning" style="padding: 6px"><span
                                                class="material-symbols-outlined">edit</span></button>
                                    </a>
                                </td>
                                <td>
                                    <button type="submit"
                                            onclick="getInfoToModal('${customer.customerCode}','${customer.name}','${customer.phone}','${customer.email}')"
                                            class="btn btn-dark text-warning" style="padding: 6px"
                                            data-bs-toggle="modal" data-bs-target="#deleteModal">
                                        <span class="material-symbols-outlined">delete</span>
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-lg-10 mt-1 p-0 pt-3 pb-3 d-flex justify-content-center">
            <img style="border-radius: 30px" class="shadow" width="93%"
                 src="https://img.freepik.com/premium-photo/white-plane-yellow-background-flat-lay-design-travel-concept-3d-rendering_494516-14.jpg?w=2000"
                 alt="">
        </div>
        <%@include file="/view/facility/nav.jsp" %>
    </div>
</div>
<form action="/customer" method="post" class="m-0">
    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel2">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-3">Customer code:</div>
                        <div class="col-lg-9">
                            <input type="text" readonly name="customerCode" id="code" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3">Name:</div>
                        <div class="col-lg-9">
                            <input type="text" readonly id="name" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3">Phone:</div>
                        <div class="col-lg-9">
                            <input type="text" readonly id="phone" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3">Email:</div>
                        <div class="col-lg-9">
                            <input type="text" readonly id="email" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" name="action" value="delete" class="btn btn-primary">Yes</button>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    function getInfoToModal(id, name, phone, email) {
        document.getElementById("code").value = id;
        document.getElementById("name").value = name;
        document.getElementById("phone").value = phone;
        document.getElementById("email").value = email;
    }
</script>
<script src="../../jquery/jquery-3.6.0.min.js"></script>
<script src="../../DataTables-1.12.1/js/jquery.dataTables.min.js"></script>
<script src="../../DataTables-1.12.1/js/dataTables.bootstrap5.min.js"></script>
<script src=../../bootstrap-5.1.3-dist/js/bootstrap.min.js></script>
<script>
    $(document).ready(function () {
        $('#list').dataTable({
            "pagingType": "numbers",
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 4
        });
    });
</script>
</body>
</html>

