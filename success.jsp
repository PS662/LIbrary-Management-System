<%
    if ((session.getAttribute("userida") == null) || (session.getAttribute("userida") == "")) {
%>
You are not logged in<br/>
<a href="loginf.jsp">Please Login</a>
<%} else {
        response.sendRedirect("admin_dash.jsp");
    }
%>
