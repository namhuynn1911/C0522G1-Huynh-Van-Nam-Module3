<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 8/23/2022
  Time: 10:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style type="text/css">
  .login {
    height:100px; width:200px;
    margin:0;
    padding:10px;
    border:1px #CCC solid;
  }
  .login input {
    padding:5px; margin:5px
  }
</style>
<body>
<form>
  <div class="login">
    <h2>Login</h2>
    <input type="text" name="username" size="20"  placeholder="username" />
    <input type="password" name="password" size="20" placeholder="password" />
    <input type="submit" value="Sign in"/>
  </div>
</form>
</body>
</html>