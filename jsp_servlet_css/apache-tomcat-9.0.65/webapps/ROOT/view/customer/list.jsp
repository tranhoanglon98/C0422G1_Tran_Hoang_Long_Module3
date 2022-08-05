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
                        <h2>Customer List</h2>
                    </div>
                    <table class="table table-hover fw-bold">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Birthday</th>
                            <th>Gender</th>
                            <th>ID card</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Customer type</th>
                            <th>address</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>long</td>
                            <td>03/03/2000</td>
                            <td>male</td>
                            <td>1111111</td>
                            <td>222222</td>
                            <td>123@gmail.com</td>
                            <td>Diamond</td>
                            <td>Hue</td>
                            <td>
                                <form action="#">
                                    <button type="submit" class="btn btn-dark text-warning"><span
                                            class="material-symbols-outlined">edit</span></button>
                                    <button type="submit" class="btn btn-dark text-warning" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal"><span class="material-symbols-outlined">delete</span>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>long</td>
                            <td>03/03/2000</td>
                            <td>male</td>
                            <td>1111111</td>
                            <td>222222</td>
                            <td>123@gmail.com</td>
                            <td>Diamond</td>
                            <td>Hue</td>
                            <td>
                                <form action="#">
                                    <button type="submit" class="btn btn-dark text-warning"><span
                                            class="material-symbols-outlined">edit</span></button>
                                    <button type="submit" class="btn btn-dark text-warning"><span
                                            class="material-symbols-outlined">delete</span></button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>long</td>
                            <td>03/03/2000</td>
                            <td>male</td>
                            <td>1111111</td>
                            <td>222222</td>
                            <td>123@gmail.com</td>
                            <td>Diamond</td>
                            <td>Hue</td>
                            <td>
                                <form action="#">
                                    <button type="submit" class="btn btn-dark text-warning"><span
                                            class="material-symbols-outlined">edit</span></button>
                                    <button type="submit" class="btn btn-dark text-warning"><span
                                            class="material-symbols-outlined">delete</span></button>
                                </form>
                            </td>
                        </tr>
                    </table>
                    <div class="col-lg-12">
                        <button class="btn btn-dark text-warning">Add new Customer</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-10 mt-4 pt-3 pb-3 d-flex justify-content-center">
            <img style="border-radius: 30px" class="shadow" width="100%"
                 src="https://www.ibtmamericas.com/content/dam/sitebuilder/rxmx/ibtm-americas/2022/back-viajesbtc.jpg/_jcr_content/renditions/original.image_file.1279.640.file/back-viajesbtc.jpg"
                 alt="">
        </div>
        <%@include file="/view/service/nav.jsp" %>
    </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Yes</button>
            </div>
        </div>
    </div>
</div>
<script src=../../bootstrap-5.1.3-dist/js/bootstrap.min.js></script>
</body>
</html>