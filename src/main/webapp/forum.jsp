<%@ page import="com.github.Javajuns.mentorship.DB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forum</title>
</head>
<body>
<%
      if (request.getMethod().equals("POST")) {
         String comment = request.getParameter("comment");
         DB.comments.add(comment);
      }
    for (String comment: DB.comments) {
        out.println(comment + "<br/>");
     }
%>

<form method="post" action="forum.jsp">
    <input type="checkbox" name="checkXSS" value="on" checked/>
    "XSS Protect"<br/>
    <textarea name="comment"></textarea><br/>
    <input type="submit" name="post"  value="Post a comment"/>
    <input type="submit" name="clean" value="Clean"/>
</form>


<%--if ("Clean".equals(request.getParameter("Clean"))) {
    DB.comments.clean();
}--%>

</body>
</html>
