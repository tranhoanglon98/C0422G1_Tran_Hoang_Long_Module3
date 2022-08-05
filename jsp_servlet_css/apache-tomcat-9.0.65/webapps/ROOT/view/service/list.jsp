<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/08/2022
  Time: 7:21 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link href='https://fonts.googleapis.com/css?family=Bad Script' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/121b5e5230.js" crossorigin="anonymous"></script>
</head>
<body style="font-family: Bad Script,serif;background: #E0FFFF">
<div class="container-fluid position-relative">
    <div class="row">
        <div class="col-lg-10 d-flex justify-content-center  position-absolute" style="top: 10%">
            <div class="row" style="width: 90%">
                <div class="col-l-12 ps-2 pe-2">
                    <div class="row text-center">
                        <h2>Service List</h2>
                    </div>
                    <table class="table table-hover fw-bold">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Area</th>
                            <th>Cost</th>
                            <th>People</th>
                            <th>Rental type</th>
                            <th>Standard</th>
                            <th>Floor</th>
                            <th>Convenience</th>
                            <th>Pool area</th>
                            <th>Facility free</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>house-1</td>
                            <td>500</td>
                            <td>1.000.000</td>
                            <td>4</td>
                            <td>days</td>
                            <td>Suit</td>
                            <td>3</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <form action="#">
                                    <button type="submit" class="btn btn-primary"><span class="material-symbols-outlined">edit</span></button>
                                    <button type="submit" class="btn btn-primary"><span class="material-symbols-outlined">delete</span></button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>house-1</td>
                            <td>500</td>
                            <td>1.000.000</td>
                            <td>4</td>
                            <td>days</td>
                            <td>Suit</td>
                            <td>3</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <form action="#">
                                    <button type="submit" class="btn btn-primary"><span class="material-symbols-outlined">edit</span></button>
                                    <button type="submit" class="btn btn-primary"><span class="material-symbols-outlined">delete</span></button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>house-1</td>
                            <td>500</td>
                            <td>1.000.000</td>
                            <td>4</td>
                            <td>days</td>
                            <td>Suit</td>
                            <td>3</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <form action="#">
                                    <button type="submit" class="btn btn-primary"><span class="material-symbols-outlined">edit</span></button>
                                    <button type="submit" class="btn btn-primary"><span class="material-symbols-outlined">delete</span></button>
                                </form>
                            </td>
                        </tr>
                    </table>
                    <div class="col-lg-12">
                        <button class="btn btn-primary">Add new service</button>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-lg-10 pt-3 pb-3 d-flex justify-content-center">
            <img style="border-radius: 30px"  width="93%" src="https://s3.ap-southeast-2.amazonaws.com/travlr.com/uploads/images/venue/923e2231037b6ad79efbd200cf2a1d6e.jpg" alt="">
        </div>
        <%@include file="/view/service/nav.jsp"%>
    </div>
</div>
<script src="bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
