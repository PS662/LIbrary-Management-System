<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book</title>
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

<body>
 <ul class="nav">
        <li class="left"><a href="front.jsp"><b><em>LMS <br> MUJ</em></b></a></li>
	<span><img src="mujlogo.png" /></span>
  	<li class="right"><a href="logout.jsp">Logout</a></li>        
  	<li class="right"><a href="listbook.jsp">Available Books</a></li>               
  	<li class="right"><a href="return_book.jsp">Return Book</a></li> 
  	<li class="right"><a href="book_status.jsp">Book Status</a></li>               
  	<li class="right"><a href="issue_book.jsp">Issue Book</a></li>               
  	<li class="right"><a href="addbook.jsp">Add Book</a></li>        
  	<li class="right"><a href="adduser.jsp">Add User</a></li>        
    </ul>
    <div id="division"></div>
<div id="content">

    <h3>Add Book</H3>
    <%@page import="java.sql.*" %>
<% 
String session_user=(String)session.getAttribute("userida");
try{
if(session_user!=null)
{
String submit=null;
submit=request.getParameter("submit");
if(submit!=null)
{
	String name=request.getParameter("name");
	String category=request.getParameter("category");
	String pages=request.getParameter("pages");
	String edition=request.getParameter("edition");
	String author=request.getParameter("author");
	String publication=request.getParameter("publication");
	String isbn=request.getParameter("isbn");
	String price=request.getParameter("price");
	
	Connection con=null;		
	PreparedStatement pstInsertItem=null;
	ResultSet resultInsertItem=null;		
	try{						
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/newlibrary","root","Bagu_7vix");
	String	sqlInsertItem="insert into book_details(name,category,pages,edition,publication,price,isbn,author) values('"+name+"','"+category+"','"+pages+"','"+edition+"','"+publication+"','"+price+"','"+isbn+"','"+author+"')";
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
}
catch(Exception e){
	out.println(e.getMessage());
}
%>

<script>
function myFunction() {
    alert("Book Added");
}
</script>
<div text-align="center">
<form action="addbook.jsp">
<p>Name:<input type="text" name="name"></p>
<p>Category:<input type="text" name="category"></p>
<p>Pages:<input type="text" name="pages"></p>
<p>Edition:<input type="text" name="edition"></p>
<p>Author:<input type="text" name="author"></p>
<p>Publication:<input type="text" name="publication"></p>
<p>ISBN:<input type="text" name="isbn"></p>
<p>Price:<input type="text" name="price"></p>
<input type="submit" value="Submit" name="submit" onclick="myFunction()">
</form>
    
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
