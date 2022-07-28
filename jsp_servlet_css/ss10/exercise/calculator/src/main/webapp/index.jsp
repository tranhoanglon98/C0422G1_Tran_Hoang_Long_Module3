<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 28/07/2022
  Time: 7:50 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div>
    <h2>Simple Calculator</h2>
    <div>
        <form action="/calculator" method="get">
            <input type="number" name="firstOperand">
            <select name="operator">
                <option>+</option>
                <option>-</option>
                <option>*</option>
                <option>/</option>
            </select>
            <input type="text" name="secondOperand">
            <button type="submit">Calculate</button>
        </form>
        <h3>Result: ${result} </h3>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
