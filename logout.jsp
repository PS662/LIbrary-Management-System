<%
session.setAttribute("userida", null);
session.setAttribute("useridm", null);
session.setAttribute("pwda", null);
session.setAttribute("pwdm", null);
session.invalidate();
response.sendRedirect("front.jsp");
%>
