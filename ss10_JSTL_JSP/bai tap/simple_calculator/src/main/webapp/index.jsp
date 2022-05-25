<%--
  Created by IntelliJ IDEA.
  User: Phuong
  Date: 5/25/2022
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Calculator</title>
  </head>
  <body>
  <h2>Simple Calculator</h2>
  <form method="post" action="/calculate" style="width: 25%">
    <fieldset>
      <legend>Calculator</legend>
      <table>
        <tr>
          <td class="css">First operand:</td>
          <td><input name="first-operand" type="text"/></td>
        </tr>
        <tr>
          <td class="css">Operator:</td>
          <td>
            <select name="operator" style="color: blue">
              <option value="+">Addition</option>
              <option value="-">Subtraction</option>
              <option value="*">Multiplication</option>
              <option value="/">Division</option>
            </select>
          </td>
        </tr>
        <tr>
          <td class="css">Second operand:</td>
          <td><input name="second-operand" type="text"/></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="Calculate"/></td>
        </tr>
      </table>
      </fieldset>
    </form>
  </body>
</html>
