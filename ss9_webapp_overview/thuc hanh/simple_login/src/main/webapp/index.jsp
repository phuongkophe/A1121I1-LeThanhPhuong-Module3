<%--
  Created by IntelliJ IDEA.
  User: Phuong
  Date: 5/18/2022
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login</title>
    <style>
      .login{
        height: 180px; width: 230px;
        margin: 0;
        padding: 10px;
        border: 1px #CCC solid;
      }
      .login input{
        padding: 5px; margin: 5px;
      }
    </style>
  </head>
  <body>
  <form action="/">
    <div class="login">
      <h2>Login</h2>
      <input type="text" name="username" size="30" placeholder="username"/>
      <input type="password" name="password" size="30" placeholder="password">
      <input type="submit" value="Sign in">
    </div>
  </form>
  </body>
</html>
