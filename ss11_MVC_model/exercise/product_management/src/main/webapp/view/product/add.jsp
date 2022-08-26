<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/25/2022
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>BẢNG THÊM MỚI SẢN PHẨM</h1>
<a href="/Product">Trang chủ sản phẩm</a>
<c:if test="${mase!=null}">
<span style="color: greenyellow">${mase}</span>
</c:if>
<form action="/Product?action=add" method="post">
    <pre>ID:           <input type="text" name="id"/></pre>
    <pre>Name:         <input type="text" name="name"> </pre>
    <pre>Price:       <input type="number" name="price"></pre>
    <pre>Description:  <input type="text" name="description"></pre>
    <pre>Producer:    <input type="text" name="producer"> </pre>
    <pre>             <button>Save</button></pre>
</form>
</body>
</html>
