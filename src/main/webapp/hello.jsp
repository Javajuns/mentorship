<%@ page import="java.util.Random" %>
<html>
<body>
<form method="post" action="SaveName.jsp">
    <%
        // java.util.Date date = new java.util.Date();
        //long valueData = date.getTime();
        String value = Integer.valueOf(new Random().nextInt(1000)).toString();
        session.setAttribute("token", value);
    %>
    What's your token code?
    <input type="text" name="token" value="<%= Integer.valueOf(value).toString()%>" size="20">
    <br> What's your name?
    <input type="text" name="username" size="20"><br>
    <P> <input type="submit" value="Send name">
</form>
</body>
</html>