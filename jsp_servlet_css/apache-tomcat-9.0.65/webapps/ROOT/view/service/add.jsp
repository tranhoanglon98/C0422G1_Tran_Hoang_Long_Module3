<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/08/2022
  Time: 7:22 SA
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
            <div class="col-lg-10 d-flex justify-content-center  position-absolute" style="top: 7%">
                <div class="row" style="width: 95%">
                    <div class="col-lg-12 text-center"><h2>Add New Service</h2></div>
                    <div class="col-lg-2 ps-5">
                        <div class="form-check" onclick="showInput(roomInput.value)">
                            <input class="form-check-input" type="radio" value="Room" name="flexRadioDefault" id="roomInput"
                                   checked>
                            <label class="form-check-label" for="roomInput">
                                Room
                            </label>
                        </div>
                        <div class="form-check" onclick="showInput(villaInput.value)">
                            <input class="form-check-input" value="Villa"  type="radio" name="flexRadioDefault" id="villaInput">
                            <label class="form-check-label" for="villaInput">
                                Villa
                            </label>
                        </div>
                        <div class="form-check" onclick="showInput(houseInput.value)">
                            <input class="form-check-input" value="House" type="radio" name="flexRadioDefault" id="houseInput">
                            <label class="form-check-label" for="houseInput">
                                House
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-10 fw-bold text-dark">
                        <form action="#">
                            <div class="row">
                                <div class="col-lg-6 ps-5 pe-5">
                                    <div class="row pb-4">
                                        <span>Name:</span>
                                        <input type="text" name="name" class="form-control" placeholder="Service name"
                                               aria-label="Service name">
                                    </div>
                                    <div class="row pb-4">
                                        <span>Area:</span>
                                        <input type="number" name="area" class="form-control" placeholder="Area"
                                               aria-label="Area">
                                    </div>
                                    <div class="row pb-4">
                                        <span>Cost:</span>
                                        <input type="text" name="cost" class="form-control" placeholder="Cost"
                                               aria-label="Cost">
                                    </div>
                                    <div class="row pb-4">
                                        <span>Max people</span>
                                        <input type="number" name="people" class="form-control" placeholder="Max people"
                                               aria-label="Max people">
                                    </div>
                                    <div class="row pb-4">
                                        <span>Rental type</span>
                                        <input type="number" name="rental_type" class="form-control"
                                               placeholder="Rental type" aria-label="Rental type">
                                    </div>
                                    <div class="row">
                                        <button class="btn btn-primary">Add</button>
                                    </div>
                                </div>
                                <div class="col-lg-6 ps-5 pe-5">
                                    <div class="row pb-4" style="display: none" id="standard">
                                        <span>Room standard</span>
                                        <input type="number" name="standard" class="form-control"
                                               placeholder="Room standard"
                                               aria-label="Room standard">
                                    </div>
                                    <div class="row pb-4" style="display: none" id="convenience">
                                        <span>Other convenience</span>
                                        <input type="number" name="convenience" class="form-control"
                                               placeholder="Other convenience"
                                               aria-label="Other convenience">
                                    </div>
                                    <div class="row pb-4" style="display: none" id="floors">
                                        <span>Number of floors</span>
                                        <input type="number" name="floors" class="form-control"
                                               placeholder="Number of floors"
                                               aria-label="Number of floor">
                                    </div>
                                    <div class="row pb-4" style="display: block" id="free">
                                        <span>Facility free</span>
                                        <input type="number" name="free" class="form-control"
                                               placeholder="Facility free"
                                               aria-label="Facility free">
                                    </div>
                                    <div class="row pb-4" style="display: none" id="pool_area">
                                        <span>Pool area:</span>
                                        <input type="number" name="Pool" class="form-control"
                                               placeholder="Pool area"
                                               aria-label="Pool area">
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-10 pt-3 pb-3 d-flex justify-content-center">
                <img style="border-radius: 30px" width="93%"
                     src="https://s3.ap-southeast-2.amazonaws.com/travlr.com/uploads/images/venue/923e2231037b6ad79efbd200cf2a1d6e.jpg"
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
