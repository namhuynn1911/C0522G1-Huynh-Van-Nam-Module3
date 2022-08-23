<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/23/2022
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h2>Product Discount Calculator</h2>
  <form action="/display-discount" method="post" style=" width: 300px;height: 300px; border: 2px solid black" >
    <div style=" text-align: center ">
    <h4 style="margin: 0">Product Description: </h4>
    <input type="text" name="productPescription"><br>

    <h4 style="margin: 0">List Price: </h4>
    <input type="text" name="listPrice"><br>

    <h4 style="margin: 0">Discount Percent: </h4>
    <input type="text" name="discountPercent"><br><br>

    <button style="background: cadetblue" type="submit">Calculate Discount </button>
    </div>
  </form>
  </body>
</html>
