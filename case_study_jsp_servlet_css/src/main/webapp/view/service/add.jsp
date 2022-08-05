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
<body style="font-family: Bad Script,serif">
<div class="container-fluid position-relative">
    <div class="row">
        <div class="col-lg-10 d-flex justify-content-center  position-absolute" style="top: 10%">
            <div class="row" style="width: 95%">
                <div class="col-lg-2">
                    <select name=""  class="form-select" onchange="showInput(this)">
                        <option value="Room" >Room</option>
                        <option value="Villa" >Villa</option>
                        <option value="House" >House</option>
                    </select>
                </div>
                <div class="col-lg-10">
                    <form action="#">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="row m-5 mt-0">
                                    <input type="text" name="name" class="form-control" placeholder="Service name"
                                           aria-label="Service name">
                                </div>
                                <div class="row m-5 mt-0">
                                    <input type="number" name="area" class="form-control" placeholder="Area"
                                           aria-label="Area">
                                </div>
                                <div class="row m-5 mt-0">
                                    <input type="text" name="cost" class="form-control" placeholder="Cost"
                                           aria-label="Cost">
                                </div>
                                <div class="row m-5 mt-0">
                                    <input type="number" name="people" class="form-control" placeholder="Max people"
                                           aria-label="Max people">
                                </div>
                                <div class="row m-5 mt-0">
                                    <input type="number" name="rental_type" class="form-control"
                                           placeholder="Rental type" aria-label="Rental type">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="row m-5 mt-0" style="display: none">
                                    <input type="number" id="standard" name="standard" class="form-control"
                                           placeholder="Room standard"
                                           aria-label="Room standard">
                                </div>
                                <div class="row m-5 mt-0" style="display: none">
                                    <input type="number" id="convenience" name="convenience" class="form-control"
                                           placeholder="Other convenience"
                                           aria-label="Other convenience">
                                </div>
                                <div class="row m-5 mt-0" style="display: none">
                                    <input type="number" id="floors" name="floors" class="form-control"
                                           placeholder="Number of floors"
                                           aria-label="Number of floor">
                                </div>
                                <div class="row m-5 mt-0" style="display: block">
                                    <input type="number" id="free" name="free" class="form-control"
                                           placeholder="Facility free"
                                           aria-label="Facility free">
                                </div>
                                <div class="row m-5 mt-0" style="display: none">
                                    <input type="number" id="pool_area" name="Pool" class="form-control"
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
            <img class="rounded-5" width="93%"
                 src="https://s3.ap-southeast-2.amazonaws.com/travlr.com/uploads/images/venue/923e2231037b6ad79efbd200cf2a1d6e.jpg"
                 alt="">
        </div>
        <div class="col-lg-2 p-0 position-fixed end-0" style="font-family: Bad Script,serif">
            <table class="table table-hover text-end" id="nav">
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

<script>
    function showInput(choose) {
        let value = choose.value;
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


<script src="bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
