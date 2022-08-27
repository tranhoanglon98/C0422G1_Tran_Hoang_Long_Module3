<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/08/2022
  Time: 10:20 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="bootsrap_dataTable/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootsrap_dataTable/DataTables-1.12.1/css/dataTables.bootstrap5.min.css">
    <link href='https://fonts.googleapis.com/css?family=Caveat Brush' rel='stylesheet'>
</head>
<body style="font-family: Caveat Brush">
<div class="row">


    <div class=" d-flex justify-content-center content position-absolute mt-4">
        <img style="border-radius: 30px" src="img/cool-background666.png" alt="">
    </div>
    <div class="text-light position-absolute container-fluid col-lg-12">
        <div class="row d-flex justify-content-center mt-5">
            <div class="col-lg-12 text-center"><h2>List</h2></div>
            <div class="col-lg-10">
                <table class="table text-light" id="myTable">
                    <thead>
                    <tr>
                        <th>STT</th>
                        <th>Title</th>
                        <th>type</th>
                        <th>level</th>
                        <th>Link</th>
                        <th>module</th>
                        <th>delete</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${lessonList}" var="lesson" varStatus="stt">
                            <tr>
                                <td>${stt.count}</td>
                                <td>${lesson.title}</td>
                                <td>${lesson.type}</td>
                                <td>
                                        <c:forEach items="${levelList}" var="level">
                                            <c:if test="${level.id == lesson.level}">
                                                ${level.level}
                                            </c:if>
                                        </c:forEach>
                                </td>
                                <td>${lesson.module}
                                    <c:forEach items="${moduleList}" var="module">
                                        <c:if test="${module.code == lesson.module}">
                                            ${module.name}
                                        </c:if>
                                    </c:forEach>
                                </td>
                                <td>${lesson.link}</td>
                                <td><button type="button" class="btn btn-primary" onclick="callModal('${lesson.id}')" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    delete
                                </button></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <a href="/?action=add"><button class="btn btn-primary">add</button></a>
            </div>
        </div>
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
                bạn có muốn xóa không
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">không</button>
                <button id="confirm" type="button" class="btn btn-primary"></button>
            </div>
        </div>
    </div>
</div>
<script>
    function callModal(id){
        console.log(id)
        document.getElementById("confirm").innerHTML ='<a style="color: white" href="/?action=delete&id='+id+'">có</a>'
    }
</script>

<script src="bootsrap_dataTable/jquery/jquery-3.6.0.min.js"></script>
<script src="bootsrap_dataTable/DataTables-1.12.1/js/jquery.dataTables.min.js"></script>
<script src="bootsrap_dataTable/DataTables-1.12.1/js/dataTables.bootstrap5.min.js"></script>
<script src="bootsrap_dataTable/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        $('#myTable').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 4
        });
    });
</script>


</body>
</html>
