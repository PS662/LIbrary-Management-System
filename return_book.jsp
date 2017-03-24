<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%
    if (((session.getAttribute("useridm") == null) || (session.getAttribute("useridm") == "")) && ((session.getAttribute("userida") == null) || (session.getAttribute("userida") == "")))
{
	        response.sendRedirect("front.jsp");
}


%>
	<title>Return Book</title>
	<link rel="stylesheet" type="text/css" href="log.css">
    <style>
     a:visited {
    color: black;
    text-decoration: none;
}
        a {
    color: black;
    text-decoration: none;
}
    </style>
</head>

<body >
    <ul class="nav">
        <li class="left"><a href="front.jsp"><b><em>LMS <br> MUJ</em></b></a></li>
	<span><img src="mujlogo.png" /></span>
  	<li class="right"><a href="logout.jsp">Logout</a></li>        
  	<li class="right"><a href="listbook.jsp">Available Books</a></li>               
  	<li class="right"><a href="return_book.jsp">Return Book</a></li> 
  	<li class="right"><a href="book_status.jsp">Book Status</a></li>               
  	<li class="right"><a href="admin_dash.jsp">Admin</a></li> 
    </ul>
    <div id="division"></div>
<div id="content">
    <h3>Return Book</h3>
    <%@page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date" %>
<%
SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
Calendar c = Calendar.getInstance();
String issue_date=sdf.format(c.getTime());
c.setTime(new Date()); // Now use today date.
c.add(Calendar.DATE, 15); // Adding 5 days
String output = sdf.format(c.getTime());
String renual_date=sdf.format(c.getTime());
;if(((session.getAttribute("useridm") != null) && (session.getAttribute("useridm") != "")) || ((session.getAttribute("useridf") != null) || (session.getAttribute("useridf") != "")))
{
String submit=null;
submit=request.getParameter("submit");
if(submit!=null)
{
	String bookid=request.getParameter("bookid");
	String uname=request.getParameter("uname");
	String regno=request.getParameter("regno");
	
	
	Connection con=null;		
	PreparedStatement pstInsertItem=null;
	ResultSet resultInsertItem=null;		
	try{						
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/newlibrary","root","Bagu_7vix");
	String	sqlInsertItem="DELETE FROM issue_book WHERE uname='"+uname+"' AND reg_no='"+regno+"'";
	pstInsertItem=con.prepareStatement(sqlInsertItem);
	pstInsertItem.executeUpdate();
	}
	catch(ClassNotFoundException e){
		out.println("<b>Driver Class not found Exception: </b>"+e.getMessage());
		
	}
	catch(SQLException e){
		out.println("<b>SQL EXception:</b>"+e.getMessage());
	}
	finally{
		try{
	if(con!=null)
		con.close();
		}
		catch(SQLException e){
			out.println("<br>Connection Closing Exception: </b>"+e.getMessage());
			
		}
	}
	}
}
else
	response.sendRedirect("front.jsp");
%>
<script>
function myFunction() {
    alert("Book Returned );
}
</script>
<div style="margin:auto">
<form action="return_book.jsp">
<p>User Name:<input type="text" name="uname"></p>
<p>Registration Number:<input type="text" name="regno"></p>
<p>Book ID:<input type="text" name="bookid"></p>
<div>
<input type="submit" value="Submit" name="submit" onclick="myFunction()">
</form>
    
    
  </div> <!-- /container -->
</div> <!-- /wrap -->
      
<div id="footer">
      <div class="container">
        <p class="muted credit"></p>
      </div>
</div>



</body>
</html>
