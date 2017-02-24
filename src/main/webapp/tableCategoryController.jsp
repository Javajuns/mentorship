<%@ page import="com.github.Javajuns.mentorship.DBImpl" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 20.02.2017
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Table Category Controller</title>
</head>
<body>

<%
    int result = 0;
    if (request.getMethod().equals("POST")) {
        if ("Remove".equals(request.getParameter("Remove")) && !"".equals(id))
            result = DBImpl.update("DELETE FROM category WHERE ID=" + id);
        if ("Update".equals(request.getParameter("Update")) && !"".equals(id) &&!"".equals(name) && !"".equals(parene_id))
            result = DBImpl.update("UPDATE category WHERE ID=" + id);
        if("Insert".equals(request.getParameter("Insert")) && !"".equals(id) &&!"".equals(name) && !"".equals(parene_id))
            result = DBImpl.update("INSERT INTO category (NAME, PARENT_ID) VALUE (name, parent_id"));
%>
response.setStatus(HttpServletResponse.SC_MOVED_TEMPRORARILY);
response.setHeader("Location", "tableCategoryView.jsp");