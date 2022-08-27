<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 09/08/2022
  Time: 11:53 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/" method="post">
    <span>Mã hộ khẩu: </span>
    <input type="text" name="maHoKhau" value="${hoKhau.maHoKhau}" readonly>
    <br>
    <span>Tên chủ hộ: </span>
    <input type="text" name="chuHo" value="${hoKhau.tenChuHo}">
    <br>
    <span>Số lượng thành viên: </span>
    <input type="text" name="soLuongThanhVien" readonly value="${hoKhau.soLuongThanhVien}">
    <br>
    <span>Ngày lập hộ khẩu: </span>
    <input type="date" name="ngayLapHoKhau"value="${hoKhau.ngayLapHoKhau}">
    <br>
    <span>Địa chỉ nhà:</span>
    <textarea name="diaChi">${hoKhau.diaChi}</textarea>
    <br>
    <button type="submit" name="action" value="sua">lưu</button>
</form>


</body>
</html>
