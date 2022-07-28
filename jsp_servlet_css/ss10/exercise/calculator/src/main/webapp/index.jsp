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
    <style>
        #calculator{
            background: linear-gradient(to right,#ad5389,#3c1053);
            border-radius: 5px;
            width: 35%;
            color: aquamarine;
        }
        input,button,select{
            height: 50px;
            background: aquamarine;
            border-radius: 5px;
            border: none;
        }
    </style>
</head>
<body>
<div id="calculator">
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
            <input type="number" name="secondOperand">
            <button type="submit">Calculate</button>
        </form>
        <h3>Result: ${result} </h3>
    </div>
</div>
</body>
</html>
