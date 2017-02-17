<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 17.02.2017
  Time: 0:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Filling database</title>
</head>
<body>
Enter data into database,please
<form method="POST" action="orderView.jsp">
    <input type="text" name="name" size="20"/>
    <input type="text" name="age" size="20"/>
    <input type="text" name="parentId" size="20"/>
    <br/>
    <input type="submit" value="SAVE" />
    <input type="submit" value="DELETE"/>
    <input type="submit" value="CLEAR"/>
</form>
</body>
</html>
