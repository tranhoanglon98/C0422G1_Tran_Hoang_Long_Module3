<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/08/2022
  Time: 8:40 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit service</title>
    <link rel="stylesheet" href="/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link href='https://fonts.googleapis.com/css?family=Bad Script' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/121b5e5230.js" crossorigin="anonymous"></script>
</head>
<body style="font-family: Courgette,serif;background: #E0FFFF">
<div class="container-fluid position-relative">
    <div class="row">
        <div class="col-lg-10 d-flex justify-content-center  position-absolute" style="top: 7%">
            <div class="row" style="width: 95%">
                <div class="col-lg-12 text-center"><h2>update service</h2></div>
                <div class="col-lg-12 fw-bold text-dark">
                    <form action="/facility" method="post">
                        <input type="hidden" name="TypeCode" value="${facility.facilityTypeId}" id="facilityCode">
                        <input type="hidden" name="facilityCode" value="${facility.id}">
                        <div class="row">
                            <div class="col-lg-6 ps-5 pe-5">
                                <div class="row pb-4">
                                    <span>Name:</span><span class="text-danger">${nameErr}</span>
                                    <input type="text" name="name" value="${facility.name}" class="form-control" placeholder="Service name"
                                           aria-label="Service name">
                                </div>
                                <div class="row pb-4">
                                    <span>Area:</span><span class="text-danger">${areaErr}</span>
                                    <input type="number" name="area" value="${facility.area}" class="form-control" placeholder="Area"
                                           aria-label="Area">
                                </div>
                                <div class="row pb-4">
                                    <span>Cost:</span><span class="text-danger">${costErr}</span>
                                    <input type="number" name="cost" value="${facility.cost}" class="form-control" placeholder="Cost"
                                           aria-label="Cost">
                                </div>
                                <div class="row pb-4">
                                    <span>Max people</span><span class="text-danger">${maxPeopleErr}</span>
                                    <input type="number" name="people" value="${facility.maxPeople}" class="form-control" placeholder="Max people"
                                           aria-label="Max people">
                                </div>
                                <div class="row pb-4">
                                    <span>Rental type</span>
                                    <select name="rentalType" class="form-control">
                                        <c:forEach var="rentalType" items="${rentTypeList}">
                                            <c:if test="${rentalType.rentId == facility.rentTypeId}">
                                                <option value="${rentalType.rentId}">${rentalType.rentTypeName}</option>
                                            </c:if>
                                        </c:forEach>
                                        <c:forEach var="rentalType" items="${rentTypeList}">
                                            <c:if test="${rentalType.rentId != facility.rentTypeId}">
                                                <option value="${rentalType.rentId}">${rentalType.rentTypeName}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="row">
                                    <button type="submit" name="action" value="update" class="btn btn-primary">Save</button>
                                </div>
                            </div>
                            <div class="col-lg-6 ps-5 pe-5">
                                <div class="row pb-4" style="display: none" id="standard">
                                    <span>Room standard</span>
                                    <input type="text" name="standard" value="${facility.standard}" class="form-control"
                                           aria-label="Room standard">
                                </div>
                                <div class="row pb-4" style="display: none" id="convenience">
                                    <span>Other convenience</span>
                                    <input type="text" name="convenience" value="${facility.otherConvenience}" class="form-control"
                                           aria-label="Other convenience">
                                </div>
                                <div class="row pb-4" style="display: none" id="floors">
                                    <span>Number of floors</span><span class="text-danger">${floorErr}</span>
                                    <input type="number" name="floors" value="${facility.floors}" class="form-control"
                                           aria-label="floor">
                                </div>
                                <div class="row pb-4" style="display: block" id="free">
                                    <span>Facility free</span>
                                    <input type="text" name="free" class="form-control"
                                           aria-label="Facility free" value="${facility.facilityFree}">
                                </div>
                                <div class="row pb-4" style="display: none" id="pool_area">
                                    <span>Pool area:</span><span class="text-danger">${poolErr}</span>
                                    <input type="number" name="Pool" class="form-control"
                                           value="${facility.poolArea}"
                                           aria-label="Pool">
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
        <%@include file="/view/facility/nav.jsp" %>
    </div>
</div>
<script>
    let code = document.getElementById("facilityCode").value;
    window.onload = showInput(code);
    function showInput(value) {
        switch (value) {
            case "2":
                console.log(value);
                document.getElementById("standard").style.display = "block";
                document.getElementById("floors").style.display = "block";
                document.getElementById("convenience").style.display = "block";
                document.getElementById("free").style.display = "none";
                document.getElementById("pool_area").style.display = "none";
                break;

            case "1":
                document.getElementById("standard").style.display = "block";
                document.getElementById("floors").style.display = "block";
                document.getElementById("convenience").style.display = "block";
                document.getElementById("free").style.display = "none";
                document.getElementById("pool_area").style.display = "block";
                break;

            case "3":
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
