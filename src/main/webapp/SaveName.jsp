<html>
<body>
<%= session.getAttribute("token")%>
<br/>
<br/>
<%= request.getParameter("token")%>
<br/>
<%= request.getHeader("Referer")%>
<br/>
<%
    if (session.getAttribute("token") != null && session.getAttribute("token").equals(request.getParameter("token"))) {
        session.setAttribute("token", null);
        if (request.getMethod().equals("POST")) {
            session.setAttribute("username", request.getParameter("username"));
        } else {
            out.println("Get unsupported!<br/> ");
        }
     } else {
        out.println("Form was double submitted!<br/>");
     }
%>
Hello, <%= request.getParameter("username")%>
<!--
    <A HREF="NextPage.jsp">Continue</A>
-->
</body>
</html>