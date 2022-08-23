<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/23/2022
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .table_css{
            border: 3px solid brown;
            color: green;
        }
    </style>
</head>
<body>
<table class="table_css">
    <tr>
        <td>
            <h2>Bảng giá sản phẩm</h2>
        </td>
    </tr>
    <tr>
        <td>
            <h2>Product Description: ${sanPham}</h2>
        </td>
    </tr>
    <tr>
        <td>
            <h2>List Price: ${gia}</h2>
        </td>
    </tr>
    <tr>
        <td>
            <h2>Discount Percent: ${phanTram}</h2>
        </td>
    </tr>
    <tr>
        <td>
            <h2>Discount Amount: ${chietKhau}</h2>
        </td>
    </tr>
    <tr>
        <td>
            <h2>Discount Price: ${giaSauChietKhau}</h2>
        </td>
    </tr>
</table>
</body>
</html>
