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
	<title>User Login</title>
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
<h3>Available Books</h3>
<%@page import="java.sql.*"%>
<center><table border=3>
<th>Id</th>
<th>Name</th>
<th>Category</th>
<th>Pages</th>
<th>Edition</th>
<th>Author</th>
<th>Publication</th>
<th>ISBN</th>
<th>Price</th>
<%
Connection con=null;		//Create Connection Object
PreparedStatement pst=null;
ResultSet result=null;	
	//Create ResultSet Object
try{						//try block begins
Class.forName("com.mysql.jdbc.Driver");//Pass the Drive class name(ex.Mysql) in parameter of Class.forName
con=DriverManager.getConnection("jdbc:mysql://localhost/newlibrary","root","Bagu_7vix");
pst=con.prepareStatement("select * from book_details ");
result=pst.executeQuery();
while(result.next())
{	
out.println("<tr><td>"+result.getString("id")+"</td><td>"+result.getString("name")+"</td><td>"+result.getString("category")+"</td><td> "+result.getString("pages")+"</td><td> "+result.getString("edition")+"</td><td> "+result.getString("author")+"</td><td> "+result.getString("publication")+"</td><td> "+result.getString("isbn")+"</td><td> "+result.getString("price")+"</td></tr>");	
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
