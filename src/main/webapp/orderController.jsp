<%@page import="com.github.Javajuns.mentorship.DBImpl"%>
<%@ page import="java.text.Bidi" %>
<%@ page import="javax.management.openmbean.SimpleType" %>
<%
    int result = 0;
    if (request.getMethod().equals("POST")) {
        String id = request.getParameter("id");
        String date_created = request.getParameter("date_created");
        String user_id = request.getParameter("user_id");
        String goods_id = request.getParameter("goods_id");
        String amount = request.getParameter("amount");
        // Delete records fromdatabase
        if ("Delete".equals(request.getParameter("Delete")) /*&& !"".equals(id)*/) {
            result = DBImpl.update("DELETE FROM public.orders where ID=" + id);
            out.println("Are you serious?");
        }
        if ("Update".equals(request.getParameter("Update"))) {
            result = DBImpl.update("UPDATE public.orders SET date_created='" + date_created + "', user_id='" + user_id + "', goods_id='" + goods_id + "', amount='" + amount + "'WHERE id='" + id);
        }
        if ("Insert".equals(request.getParameter("Insert"))) {
            result = DBImpl.update("INSERT INTO public.orders (id, date_created, user_id, goods_id, amount) VALUES (null,'" + date_created + "','" + user_id + "','" + goods_id + "','" + amount + "')");
        }
    }
    response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
    response.setHeader("Location","orderView.jsp");
%>
