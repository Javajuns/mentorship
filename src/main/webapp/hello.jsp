<html>
<body>
<form method="post" action="SaveName.jsp">
    <%
        java.util.Date date = new java.util.Date();
        long value = date.getTime();
        session.setAttribute("token", Long.valueOf(value).toString());
    %>
    What's your name? <input type="text" name="token" value="<%= Long.valueOf(value).toString()%>" size="20">
    <P> <INPUT type="submit">
</form>
</body>
</html>