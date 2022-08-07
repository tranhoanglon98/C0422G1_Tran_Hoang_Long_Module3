<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 07/08/2022
  Time: 10:46 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Service</title>
    <link rel="stylesheet" href="/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link href='https://fonts.googleapis.com/css?family=Courgette' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/121b5e5230.js" crossorigin="anonymous"></script>
</head>
<body style="font-family: Courgette,serif;background: #E0FFFF">
<table class="table table-hover fw-bold">
    <trt>
        <th>ID</th>
        <th>Name</th>
        <th>Area</th>
        <th>Cost</th>
        <th>Max people</th>
        <th>Rental type</th>
        <th>Type</th>
        <th>Standard</th>
        <th>Other convenience</th>
        <th>Pool area</th>
        <th>Floors</th>
        <th>Facility free</th>
    </trt>
    <c:forEach items="${facilityList}" var="facility">
        <tr>
            <td>${facility.id}</td>
            <td>${facility.name}</td>
            <td>${facility.area}</td>
            <td>${facility.cost}</td>
            <td>${facility.maxPeople}</td>
            <td>
                <c:forEach var="rentType" items="${rentTypeList}">
                    <c:if test="${rentType.rentId == facility.rentTypeId}">
                        ${rentType.rentTypeName}
                    </c:if>
                </c:forEach>
            </td>
            <td>
                <c:forEach var="facilityType" items="${facilityTypeList}">
                    <c:if test="${facility.facilityTypeId == facilityType.id}">
                        ${facilityType.name}
                    </c:if>
                </c:forEach>
            </td>
            <td>${facility.standard}</td>
            <td>${facility.otherConvenience}</td>
            <td>${facility.poolArea}</td>
            <td>${facility.floors}</td>
            <td>${facility.facilityFree}</td>
            <td>
                <a href="/facility?action=edit&facilityCode=${facility.id}"><button class="btn btn-primary">Edit</button></a>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                        onclick="getInfoToModal('${facility.id}','${facility.name}')">
                    delete
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="/facility?action=add">
    <button class="btn btn-primary">Add new service</button>
</a>
<form action="/facility">
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-3">Service Code:</div>
                        <div class="col-lg-9">
                            <input type="text" readonly name="facilityCode" id="code" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3">Service Name:</div>
                        <div class="col-lg-9">
                            <input type="text" readonly id="name" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <h5>Are you sure that you want to delete this service?</h5>
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
    function getInfoToModal(code, name) {
        document.getElementById("code").value = code;
        document.getElementById("name").value = name;
    }
</script>
<script src=../../bootstrap-5.1.3-dist/js/bootstrap.min.js></script>
</body>
</html>
