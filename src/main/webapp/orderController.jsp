<%@page import="com.github.Javajuns.mentorship.DBImpl"%>
<%
    if (request.getMethod().equals("POST")) {
        String id = request.getParameter("id");

        // Delete records fromdatabase
        if ("DELETE".equals(request.getParameter("DELETE")) && !"".equals(id)) {
            result = DBImpl.update("DELETE FROM orders where ID=" + id);
            out.println("Are you sirious?");
        }
        /*
        if ("SAVE") {

        }
        if ("CLEAR") {

        }*/
    }

%>
