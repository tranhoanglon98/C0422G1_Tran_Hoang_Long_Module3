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
  </head>
  <body>
  <h2>Simple Calculator</h2>
  <div style="border: darkblue 2px solid; border-radius: 7px">
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
  </body>
</html>
