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
<body>

<div class="container-fluid position-relative">
    <div class="row">
        <div class="col-lg-10 d-flex justify-content-center  position-absolute" style="top: 10%">
            <div class="row" style="width: 95%">
                <div class="col-l-12">
                    <table class="table table-hover">
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
                                    <button type="submit" class="btn btn-success">Edit</button>
                                    <button type="submit" class="btn btn-success">Delete</button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>house-2</td>
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
                                    <button type="submit" class="btn btn-success">Edit</button>
                                    <button type="submit" class="btn btn-success">Delete</button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>house-3</td>
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
                                    <button type="submit" class="btn btn-success">Edit</button>
                                    <button type="submit" class="btn btn-success">Delete</button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>house-4</td>
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
                                    <button type="submit" class="btn btn-success">Edit</button>
                                    <button type="submit" class="btn btn-success">Delete</button>
                                </form>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-lg-12">
                    <button class="btn btn-success">Add new service</button>
                </div>
            </div>

        </div>
        <div class="col-lg-10 pt-3 pb-3 d-flex justify-content-center">
            <img class="rounded-5"  width="93%" src="https://s3.ap-southeast-2.amazonaws.com/travlr.com/uploads/images/venue/923e2231037b6ad79efbd200cf2a1d6e.jpg" alt="">
        </div>
        <div class="col-lg-2 p-0 position-fixed end-0" style="font-family: Bad Script,serif">
            <table class="table table-hover text-end"  id="nav">
                <th>
                    <a class="nav-link" href="#"><h2>Furama Resort</h2></a>
                </th>
                <tr>
                    <td><a class="nav-link" href="#"><h4>Employee</h4></a></td>
                </tr>
                <tr>
                    <td><a class="nav-link" href="#"><h4>Customer</h4></a></td>
                </tr>
                <tr>
                    <td><a class="nav-link" href="#"><h3>Service</h3></a></td>
                </tr>
                <tr>
                    <td><a class="nav-link" href="#"><h3>Contract</h3></a></td>
                </tr>
            </table>
            <div class="position-fixed bottom-0">
                <div class="row ms-0 mb-3">
                    <div class="col-lg-2"><span class="material-symbols-outlined">location_on</span></div>
                    <div class="col-lg-10 p-0">
                        <span><b>103 - 105 Vo Nguyen Giap Street, Khue My Ward, Ngu Hanh Son District, Danang City, Vietnam</b></span>
                    </div>
                </div>
                <div class="row ms-0 mb-3">
                    <div class="col-lg-2"><span class="material-symbols-outlined">call</span></div>
                    <div class="col-lg-10 p-0"><span><b>84-236-3847 333/888</b></span></div>
                </div>
                <div class="row ms-0 mb-3">
                    <div class="col-lg-2"><span class="material-symbols-outlined">mail</span></div>
                    <div class="col-lg-10 p-0"><b>reservation@furamavietnam.com</b></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
