<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 09/08/2022
  Time: 10:39 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<c:if test="${mess != null}">
    <p>${mess}</p>
</c:if>
<table>
    <thead>
    <tr>
        <th>STT</th>
        <th>Mã hộ khẩu</th>
        <th>Tên chủ hộ</th>
        <th>Số lượng thành viên</th>
        <th>Ngày lập hộ khẩu</th>
        <th>Địa chỉ nhà</th>
        <th>Địa chỉ nhà</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="hoKhau" items="${danhSachHoKhau}" varStatus="status">
        <tr>
            <td>STT</td>
            <td>${hoKhau.maHoKhau}</td>
            <td>${hoKhau.tenChuHo}</td>
            <td>${hoKhau.soLuongThanhVien}</td>
            <td>${hoKhau.ngayLapHoKhau}</td>
            <td>${hoKhau.diaChi}</td>
            <td><a href="/?action=sua&maHoKhau=${hoKhau.maHoKhau}"><button>sửa</button></a></td>
            <form action="/">
                <td>
                    <input type="hidden" name="maHoKhau" value="${hoKhau.maHoKhau}">
                    <button type="submit" name="action" value="thanhVien">danh sach thanh vien</button>
                </td>
            </form>
        </tr>
    </c:forEach>
    </tbody>
</table>
<input type="hidden" value="${mess}" id="mess">
<input type="hidden" value="${mess}" id="check">
<div class="modal fade" id="exampleModal"  id="noticeMessage" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <c:forEach items="${danhSachThanhVien}" var="thanhVien">
                    <p>${thanhVien}</p>
                </c:forEach>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script>
    window.onload = function () {
        let mess = document.getElementById("mess").value;
        if (mess != null && mess !== "") {
            $(document).ready(function () {
                $("#exampleModal").modal("show");
            });
        }
    }
</script>

</body>
</html>
