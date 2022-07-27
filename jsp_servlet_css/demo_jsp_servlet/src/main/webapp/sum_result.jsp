<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 7/27/2022
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
      int number1 = Integer.parseInt(request.getParameter("num1"));
      int number2 = Integer.parseInt(request.getParameter("num2"));
      int sum = number1+number2;
  %>
<h1><%=sum%></h1>
</body>
</html>
