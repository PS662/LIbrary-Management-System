<html>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwda = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lib_1",
            "root", "Bagu_7vix");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin_de where uname='" + userid + "' and pass='" + pwda + "'");
    if (rs.next()) {
        session.setAttribute("userida", userid);
        session.setAttribute("passa", pwda);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
%><body style="background-image:url(original.jpg);background-attachment: fixed;background-repeat: no-repeat;background-size: cover;    background-position: center;">
       <% out.println("Invalid password <a href='loginf.jsp'>try again</a>");
    }
%>
</html>
