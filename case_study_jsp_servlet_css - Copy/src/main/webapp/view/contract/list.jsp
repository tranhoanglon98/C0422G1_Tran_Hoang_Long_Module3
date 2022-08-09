<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/08/2022
  Time: 9:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Furama Resort</title>
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
            <div class="row">
                <table class="table table-hover">
                    <tr>
                        <th>#</th>
                        <th>Service</th>
                        <th>Customer</th>
                        <th>Check-in</th>
                        <th>Check-out</th>
                        <th>Deposit</th>
                        <th>Total</th>
                        <th>Accompanied service</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>house-1</td>
                        <td>long</td>
                        <td>20/12/2022</td>
                        <td>30/12/2022</td>
                        <td>3000000</td>
                        <td>5000000</td>
                        <td>
                            <button type="button" class="btn btn-dark" data-bs-toggle="modal"
                                    data-bs-target="#newContract"><span class="material-symbols-outlined">add</span>
                            </button>
                            <button type="button" class="btn btn-dark" data-bs-toggle="modal"
                                    data-bs-target="#accompaniedService">List of accompanied service
                            </button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="modal fade" id="newContract" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Create new Contract</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="">
                            <div class="row">
                                <div class="col-lg-3"><span>Check-in</span></div>
                                <div class="col-lg-9"><input name="checkIn" class="form-control" type="date"></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3"><span>Check-out</span></div>
                                <div class="col-lg-9"><input name="checkOut" class="form-control" type="date"></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3"><span>Deposit</span></div>
                                <div class="col-lg-9"><input name="deposit" class="form-control" type="number"></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3"><span>Total</span></div>
                                <div class="col-lg-9"><input readonly name="total" class="form-control" type="number">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3"><span>Customer</span></div>
                                <div class="col-lg-9"><input name="customer" class="form-control" type="text"></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3"><span>Service</span></div>
                                <div class="col-lg-9"><input name="service" class="form-control" type="text"></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3"><span>Accompanied service</span></div>
                                <div class="col-lg-9">
                                    <button class="btn btn-primary"><span class="material-symbols-outlined">add</span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">create</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="accompaniedService" tabindex="-1" aria-labelledby="exampleModalLabel"
             aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel2">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-10 mt-2 pt-3 pb-3 d-flex justify-content-center">
            <img style="border-radius: 30px" width="97%" src="https://the-steppe.com/images/news/8852-kKLDWJip.jpg"
                 alt="">
        </div>
        <%@include file="/view/service/nav.jsp" %>
    </div>
</div>


<%@include file="../service/nav.jsp" %>
<script src="../../bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
