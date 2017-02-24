<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.github.Javajuns.mentorship.DBImpl" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 20.02.2017
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Table Category</title>
</head>
<body>
<form method="post" action="tableCategoryControler.jsp">
    <table border="1">
        <caption>Category table on...</caption>
<tr>
    <th>ID</th>
    <th>NAME</th>
    <th>PARENT_ID</th>
</tr>
<%
    ResultSet result = DBImpl.update("INSERT INTO category (NAME, PARENT_ID) VALUE (name,  parent_id)");
    while (result.next()) {
        out.println("<tr>");
        out.println("<td>");
        out.println(result.getInt(1));
        out.println("</td>");
        out.println("<td>");
        out.println(result.getInt(2));
        out.println("</td>");
        out.println("<td>");
        out.println(result.getInt(3));
        out.println("</td>");
        out.println("</tr>");
    }
%>
<tr>
    <td><input type="text" name="id"/></td>
    <td><input type="text" name="name"/></td>
    <td><input type="text" name="parent_id"/></td>
</tr>
</table>
<input type="submit" name="Insert" value="Insert"/>
<input type="submit" name="Update" value="Update"/>
<input type="submit" name="Remove" value="Remove"/>
</form>
</body>
</html>
