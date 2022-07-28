<%@ page import="java.util.Map" %>
<%@ page import="java.util.LinkedHashMap" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 28/07/2022
  Time: 2:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h2>VIETNAM DICTIONARY</h2>
<form action="/library" method="get">
    <input type="text" name="text">
    <button type="submit">search</button>
</form>
<h2>english: ${text}</h2>
<h2>vietnamese: ${result}</h2>
</body>
</html>
