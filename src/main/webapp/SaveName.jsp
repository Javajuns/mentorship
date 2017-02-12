<html>
<body>
<%= session.getAttribute("token")%>
<BR>
<%= session.setAttribute("username", session.getAttribute("username"))%>
<BR>
<%= request.getParameter("token")%>
<br>
<%= request.getHeader("Referer")%>

<BR>
    <A HREF="NextPage.jsp">Continue</A>
</body>
</html>