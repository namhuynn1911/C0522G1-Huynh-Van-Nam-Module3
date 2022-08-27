<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/26/2022
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Trang thêm mới User</h1>
<a href="/user">quay lại trang hiển thị</a>
<c:if test="${message !=null}">
    <span style="color: blue">${message}</span>
</c:if>
<form action="/user?action=add" method="post">
    <table>
        <tr>
            <td>
                Name:
                <input type="text" name="name"/>
            </td>
            <td>
                Email:
                <input type="text" name="email"/>
            </td>
            <td>
                Country:
                <input type="text" name="country"/>
            </td>
        </tr>
    </table>
    <button>Save</button>
</form>
</body>
</html>
