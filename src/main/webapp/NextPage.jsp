<html>
<body>
    Hello, <%= request.getParameter("username")%>. You are <%= session.getAttribute("theAge")%> year old.
</body>
</html>
