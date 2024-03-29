<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/08/2022
  Time: 1:30 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href='https://fonts.googleapis.com/css?family=Bad Script' rel='stylesheet'>
    <link href='https://fonts.googleapis.com/css?family=Courgette' rel='stylesheet'>
</head>
<body>
<div class="col-lg-2 p-0 position-fixed end-0 top-0 bottom-0 shadow" style="font-family: Bad Script">
    <table class="table table-hover text-end"  id="nav">
        <th>
            <a class="nav-link text-dark" href="/furama"><h2>Furama Resort</h2></a>
        </th>
        <tr>
            <td><a class="nav-link text-dark" href="/furama?action=employee"><h4>Employee</h4></a></td>
        </tr>
        <tr>
            <td><a class="nav-link text-dark" href="/furama?action=customer"><h4>Customer</h4></a></td>
        </tr>
        <tr>
            <td><a class="nav-link text-dark" href="/furama?action=facility"><h3>Service</h3></a></td>
        </tr>
        <tr>
            <td><a class="nav-link text-dark" href="/furama?action=contract"><h3>Contract</h3></a></td>
        </tr>
    </table>
    <div class="position-absolute bottom-0">
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
</body>
</html>
