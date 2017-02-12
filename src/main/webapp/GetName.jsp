<HTML>
<body>
Hello, <%=session.getAttribute("username")%> <br>
    <form method="POST" ACTION="SaveName.jsp">
        What's your name? <input TYPE=TEXT NAME=username SIZE=20><BR>
        What's your e-mail address? <INPUT TYPE=TEXT NAME=email SIZE=20><BR>
        What's your age? <INPUT TYPE=TEXT NAME=age SIZE=4>
        <P><input type=SUBMIT>
    </form>
</body>
</HTML>