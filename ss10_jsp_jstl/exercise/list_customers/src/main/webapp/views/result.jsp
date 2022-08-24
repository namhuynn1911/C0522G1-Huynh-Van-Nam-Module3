<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/24/2022
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<table class="table table-striped">
    <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Birth Day</th>
        <th>Địa Chỉ</th>
        <th>ảnh</th>
    </tr>
    <c:forEach varStatus="status" var="customers" items="${customersList}">
        <tr>
            <td>${status.count}</td>
            <td>${customers.getName()}</td>
            <td>${customers.getDateOfBirth()}</td>
            <td>${customers.getDiaChi()}</td>
            <td><img style="width: 80px;height: 80px" src="${customers.getImage()}"></td>

        </tr>
    </c:forEach>

</table>
</body>
</html>
