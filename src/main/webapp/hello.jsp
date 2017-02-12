<html>
<body>
<form method="post" action="SaveName.jsp">
    <%
        java.util.Date date = new java.util.Date();
        long value = date.getTime();
        String value1 = Long.valueOf(value).toString();
        session.setAttribute("token", value1);
    %>
    What's your token code?
    <input type="text" name="token" value="<%= Long.valueOf(value).toString()%>" size="20">
    <br> What's your name?
    <input type="text" name="name" size="20">
    <P> <input type="submit" value="Submit">
</form>
</body>
</html>