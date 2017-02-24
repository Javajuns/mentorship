<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.github.Javajuns.mentorship.DBImpl"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="javax.lang.model.type.NullType" %>
<html>
<head>
    <title>Filling database</title>
</head>
<body>
Enter data into database,please
<form method="POST" action="orderController.jsp.jsp">
    <table border="0"/>
    <tr>
        <td align="center">ID</td>
        <td align="center">DATE_CREATE<font><font size="1"/>Format: yyy-mm-dd</font> </p> </td>
        <td align="center">USER_ID</td>
        <td align="center">GOODS_ID</td>
        <td align="center">AMOUNT</td>
    </tr>
    <%
        ResultSet result = DBImpl.select("SELECT * FROM public.category");
        while (result.next()) {
            out.println("<tr>");
            out.println("<td>");
            out.println(result.getInt("id"));
            out.println("</td>");
            out.println("<td>");
            out.println(result.getInt("name"));
            out.println("</td>");
            out.println("<td>");
            out.println(result.getInt("parent_id"));
            out.println("</td>");
            out.println("</tr>");
        }
    %>
    <tr>
    <input type="text" name="name" size="20"/>
    <input type="text" name="age" size="20"/>
    <input type="text" name="parentId" size="20"/>
    </tr>
    <br/>
    <input type="submit" name="Update" value="Update" />
    <input type="submit" name="Delete" value="Delete"/>
    <input type="submit" name="Insert" value="Insert"/>

</form>
</body>
</html>
