<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/25/2022
  Time: 1:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <style>
        a{
            text-decoration: none;
        }
    </style>
</head>
<body>
<h1>TRANG HIỂN THỊ DANH SÁCH SẢN PHẨM</h1>
<a href="/Product?action=add">Thêm sản phẩm</a>
<form class="d-flex justify-content-end" action="/Product">
    <input type="text" name="nameSearch" placeholder="Nhập tên">
    <input type="submit" name="action" value="search" >
</form>
<table class="table table-striped">
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Producer</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td><a href="/Product?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getProducer()}</td>
            <td><a href="/Product?action=edit&id=${product.getId()}">Edit</a></td>
            <td><a href="/Product?action=delete&id=${product.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
