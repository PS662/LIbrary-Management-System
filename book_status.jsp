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
	<title>Book Status</title>
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
 
<h3>Book Status</h3>
<%@page import="java.sql.*"%>
<center><table border=1>
<th>User Name</th>
<th>Registration Number</th>
<th>Book Id</th>
<th>Issue Date</th>
<th>Due Date</th>
<th>Fine</th>
<%
 if(((session.getAttribute("useridm") != null) && (session.getAttribute("useridm") != "")) || ((session.getAttribute("userida") != null) || (session.getAttribute("userida") != "")))
{
Connection con=null;		//Create Connection Object
PreparedStatement pst=null;
ResultSet result=null;	
	//Create ResultSet Object
try{						//try block begins
Class.forName("com.mysql.jdbc.Driver");//Pass the Drive class name(ex.Mysql) in parameter of Class.forName
con=DriverManager.getConnection("jdbc:mysql://localhost/newlibrary","root","Bagu_7vix");
pst=con.prepareStatement("select * from issue_book ");
result=pst.executeQuery();
if(result.next()){
while(result.next())
{	
out.println("<tr><td>"+result.getString("uname")+"</td><td>"+result.getString("reg_no")+"</td><td>"+result.getString("book_id")+"</td><td>"+result.getString("issue_date")+"</td><td>"+result.getString("renual_date")+"</td><td>"+result.getString("fine")+"</td></tr>");	
}}
else{
	out.println("No Record Avilable");
}
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
else
	response.sendRedirect("front.jsp");

%>
</table><center>
</div>
    
  </div> <!-- /container -->
</div> <!-- /wrap -->
      
<div id="footer">
      <div class="container">
        <p class="muted credit"></p>
      </div>
</div>


</body>
</html>
