<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/24/2022
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h2>Simple Calculator</h2>

<fieldset>

    <legend>Calculator</legend>
    <form action="/calculator" method="post">

        <label>First operand</label>
        <input style="margin-left: 50px" name="first" placeholder="number first"><br><br>

        <label>Operator</label>
        <select name="operator" style="margin-left: 80px">
            <option value="+">Addition(+)</option>
            <option value="-">Subtraction(-)</option>
            <option value="*">Multiplication(*)</option>
            <option value="/">Division(/)</option>
        </select><br><br>

        <label>Second Operand</label>
        <input style="margin-left: 30px" name="second" placeholder="number second"><br><br>

        <button style="background: aqua ;margin-left: 130px" type="submit" name="calculate">Calculate</button>
    </form>
</fieldset>
</body>
</html>
