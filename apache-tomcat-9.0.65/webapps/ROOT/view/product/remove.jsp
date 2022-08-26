<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/25/2022
  Time: 11:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3> Trang xóa sản phẩm</h3>
<p>
    <a href="/Product">Về trang quản lý sản phẩm</a>
</p>
<form method="post" >
    <p>Bạn có chắc muốn xóa không ?</p>
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td>${product.getId()}</td>
            </tr>
            <tr>
                <td>Name: </td>
                <td>${product.getName()}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${product.getPrice()}</td>
            </tr>
            <tr>
                <td>Status: </td>
                <td>${product.getDescription()}</td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td>${product.getProducer()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="yes"></td>
                <td><a href="/Product">No</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
