<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 05/08/2022
  Time: 8:23 CH
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/bootstrap-5.1.3-dist/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"/>
    <link href='https://fonts.googleapis.com/css?family=Bad Script' rel='stylesheet'>
    <script src="https://kit.fontawesome.com/121b5e5230.js" crossorigin="anonymous"></script>
</head>
<body style="font-family: Courgette,serif;background: #E0FFFF">
<div class="container-fluid position-relative">
    <div class="row">
        <div class="col-lg-10 d-flex justify-content-center  position-absolute" style="top: 10%">
            <div class="row" style="width: 90%">
                <div class="col-l-12 ps-2 pe-2  text-light">
                    <div class="row text-center">
                        <h2>Employee List</h2>
                    </div>
                    <table class="table table-hover  text-light fw-bold">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Birthday</th>
                            <th>Gender</th>
                            <th>ID card</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Education degree</th>
                            <th>Position</th>
                            <th>Division</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>long</td>
                            <td>03/03/2000</td>
                            <td>male</td>
                            <td>1111111</td>
                            <td>222222</td>
                            <td>123@gmail.com</td>
                            <td>University</td>
                            <td>Manager</td>
                            <td>Sale-Marketing</td>
                            <td>
                                <form action="#">
                                    <button type="submit" class="btn btn-light text-danger" data-bs-toggle="modal"
                                            data-bs-target="#editModal"><span
                                            class="material-symbols-outlined">edit</span></button>
                                    <button type="submit" class="btn btn-light text-danger" data-bs-toggle="modal"
                                            data-bs-target="#deleteModal"><span class="material-symbols-outlined">delete</span>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>long</td>
                            <td>03/03/2000</td>
                            <td>male</td>
                            <td>1111111</td>
                            <td>222222</td>
                            <td>123@gmail.com</td>
                            <td>University</td>
                            <td>Manager</td>
                            <td>Sale-Marketing</td>
                            <td>
                                <form action="#">
                                    <button type="submit" class="btn btn-light text-danger"><span
                                            class="material-symbols-outlined">edit</span></button>
                                    <button type="submit" class="btn btn-light text-danger" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal"><span class="material-symbols-outlined">delete</span>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>long</td>
                            <td>03/03/2000</td>
                            <td>male</td>
                            <td>1111111</td>
                            <td>222222</td>
                            <td>123@gmail.com</td>
                            <td>University</td>
                            <td>Manager</td>
                            <td>Sale-Marketing</td>
                            <td>
                                <form action="#">
                                    <button type="submit" class="btn btn-light text-danger"><span
                                            class="material-symbols-outlined">edit</span></button>
                                    <button type="submit" class="btn btn-light text-danger" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal"><span class="material-symbols-outlined">delete</span>
                                    </button>
                                </form>
                            </td>
                        </tr>
                    </table>
                    <div class="col-lg-12">
                        <button type="submit" class="btn btn-light text-danger" data-bs-toggle="modal"
                                data-bs-target="#addModal"><b>Add new Employee</b></button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-10 mt-2 pt-3 pb-3 d-flex justify-content-center">
            <img style="border-radius: 30px" class="shadow" width="92%"
                 src="../../img/employee_background.png"
                 alt="">
        </div>
        <%@include file="/view/service/nav.jsp" %>
    </div>
</div>
<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Yes</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                <button type="button" class="btn btn-primary">Yes</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel3">Add new Employee</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="#" method="post">
                    <span>Name</span>
                    <input type="text" name="name" class="form-control" placeholder="Customer name"
                           aria-label="Customer name">
                    <span>Birthday</span>
                    <input type="text" name="bỉthday" class="form-control" placeholder="Birthday"
                           aria-label="Birthday">
                    <span>Gender</span>
                    <input type="text" name="gender" class="form-control" placeholder="Gender"
                           aria-label="Gender">
                    <span>ID card</span>
                    <input type="text" name="idCard" class="form-control" placeholder="ID card"
                           aria-label="ID card">
                    <span>Phone</span>
                    <input type="text" name="phone" class="form-control" placeholder="Phone"
                           aria-label="Phone">
                    <span>Email</span>
                    <input type="text" name="email" class="form-control" placeholder="Email"
                           aria-label="Email">
                    <span>Education degree</span>
                    <input type="text" name="educationDegree" class="form-control" placeholder="Education degree"
                           aria-label="Education degree">
                    <span>Position</span>
                    <input type="text" name="position" class="form-control" placeholder="Position"
                           aria-label="Position">
                    <span>Division</span>
                    <input type="text" name="division" class="form-control" placeholder="Division"
                           aria-label="Division">
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Yes</button>
            </div>
        </div>
    </div>
</div>

<script src=../../bootstrap-5.1.3-dist/js/bootstrap.min.js></script>
</body>
</html>
