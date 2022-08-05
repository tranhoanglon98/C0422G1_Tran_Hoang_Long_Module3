<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/08/2022
  Time: 7:27 CH
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
        <div class="col-lg-10 d-flex pt-2 justify-content-center  position-absolute" style="top: 7%">
            <div class="row" style="width: 95%">
                <div class="col-lg-12 text-center"><h2>Update Customer</h2></div>
                <div class="col-lg-12 fw-bold text-dark">
                    <form action="#">
                        <div class="row">
                            <div class="col-lg-6 ps-5 pe-5">
                                <div class="row pb-4">
                                    <span>Name:</span>
                                    <input type="text" name="name" class="form-control" placeholder="Customer name"
                                           aria-label="Customer name">
                                </div>
                                <div class="row pb-4">
                                    <span>Birthday:</span>
                                    <input type="number" name="birthday" class="form-control" placeholder="Birthday"
                                           aria-label="Birthday">
                                </div>
                                <div class="row pb-4">
                                    <span>Gender:</span>
                                    <input type="text" name="gender" class="form-control" placeholder="Gender"
                                           aria-label="Gender">
                                </div>
                                <div class="row pb-4">
                                    <span>ID card</span>
                                    <input type="number" name="idCard" class="form-control"
                                           placeholder="ID card" aria-label="ID card">
                                </div>
                                <div class="row">
                                    <button class="btn btn-dark text-warning">Save</button>
                                </div>
                            </div>
                            <div class="col-lg-6 ps-5 pe-5">
                                <div class="row pb-4">
                                    <span>Phone</span>
                                    <input type="number" name="phone" class="form-control" placeholder="Phone"
                                           aria-label="Phone">
                                </div>
                                <div class="row pb-4" id="standard">
                                    <span>Email</span>
                                    <input type="number" name="email" class="form-control"
                                           placeholder="Email"
                                           aria-label="Email">
                                </div>
                                <div class="row pb-4" id="convenience">
                                    <span>Customer type</span>
                                    <input type="number" name="convenience" class="form-control"
                                           placeholder="Customer type"
                                           aria-label="Customer type">
                                </div>
                                <div class="row pb-4" id="floors">
                                    <span>Address</span>
                                    <input type="number" name="address" class="form-control"
                                           placeholder="Address"
                                           aria-label="Address">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-10 mt-4 pt-3 pb-3 d-flex justify-content-center">
            <img style="border-radius: 30px" width="100%"
                 src="https://www.ibtmamericas.com/content/dam/sitebuilder/rxmx/ibtm-americas/2022/back-viajesbtc.jpg/_jcr_content/renditions/original.image_file.1279.640.file/back-viajesbtc.jpg"
                 alt="">
        </div>
        <%@include file="/view/service/nav.jsp" %>
    </div>
</div>
<script>
    function showInput(value) {
        console.log(value)
        switch (value) {
            case "House":
                console.log(value);
                document.getElementById("standard").style.display = "block";
                document.getElementById("floors").style.display = "block";
                document.getElementById("convenience").style.display = "block";
                document.getElementById("free").style.display = "none";
                document.getElementById("pool_area").style.display = "none";
                break;

            case "Villa":
                document.getElementById("standard").style.display = "block";
                document.getElementById("floors").style.display = "block";
                document.getElementById("convenience").style.display = "block";
                document.getElementById("free").style.display = "none";
                document.getElementById("pool_area").style.display = "block";
                break;

            case "Room":
                document.getElementById("standard").style.display = "none";
                document.getElementById("floors").style.display = "none";
                document.getElementById("convenience").style.display = "none";
                document.getElementById("free").style.display = "block";
                document.getElementById("convenience").style.display = "none";
                break;

        }
    }
</script>
<script src="../../bootstrap-5.1.3-dist/jquery-3.6.0.min.js"></script>
<script src="bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
