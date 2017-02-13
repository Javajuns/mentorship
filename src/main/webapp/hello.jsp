<%@ page import="java.util.Random" %>
<html>
<body>
<form method="get" action="SaveName.jsp">
    What's your name? <input type="text" name="username" size="20" /><br />
    <%
        // java.util.Date date = new java.util.Date();
        //long valueData = date.getTime();
        String value1 = Integer.valueOf(new Random().nextInt(1000)).toString();
        session.setAttribute("token", value1);
    %>
    <input type="hidden" name="token" value="<%= value1%>" size="20" />
    <p /> <input type="submit" value="Send name" />
</form>
</body>
</html>