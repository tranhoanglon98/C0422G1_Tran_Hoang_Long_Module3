<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/08/2022
  Time: 10:30 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootsrap_dataTable/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootsrap_dataTable/DataTables-1.12.1/css/dataTables.bootstrap5.min.css">
    <link href='https://fonts.googleapis.com/css?family=Caveat Brush' rel='stylesheet'>
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
</head>
<body class="text-light" style="font-family: Caveat Brush">
<div class="row">
    <div class=" d-flex justify-content-center content position-absolute mt-4">
        <img style="border-radius: 30px" src="img/cool-background666.png" alt="">
    </div>
    <div class="position-absolute col-lg-12">
        <form action="/" method="post">
            <div class="row d-flex justify-content-center mt-5">
                <div class="col-lg-10">
                    <div class="row">
                        <div class="col-lg-6">
                            <span>name</span>
                            <input type="text" class="form-control shadow-lg">
                        </div>
                        <div class="col-lg-6">
                            <span>name</span>
                            <input type="text" class="form-control shadow-lg">
                        </div>
                        <div>
                            <button class="btn btn-primary mt-5 shadow" type="submit">save</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>


<script src="bootsrap_dataTable/jquery/jquery-3.6.0.min.js"></script>
<script src="bootsrap_dataTable/DataTables-1.12.1/js/jquery.dataTables.min.js"></script>
<script src="bootsrap_dataTable/DataTables-1.12.1/js/dataTables.bootstrap5.min.js"></script>
<script src="bootsrap_dataTable/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
</body>
</html>
