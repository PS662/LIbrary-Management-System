<html>
<%@ page import ="java.sql.*" %>

<%
    String userid = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lib_1",
            "root", "Bagu_7vix");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("useridm", userid);
        session.setAttribute("passm", pwd);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("user_dash.jsp");
    } else {
%><body style="background-image:url(original.jpg);background-attachment: fixed;background-repeat: no-repeat;background-size: cover;background-position: center;">
       <% out.println("Invalid password <a href='loginm.jsp'>try again</a>");
    }
%>
</html>
