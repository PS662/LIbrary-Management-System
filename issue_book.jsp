<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue Book</title>
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
    <h3>Issue Book</h3>
    <%@page import="java.sql.*,java.util.*,java.text.SimpleDateFormat,java.util.Date" %>
<%
SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
Calendar c = Calendar.getInstance();
String issue_date=sdf.format(c.getTime());
c.setTime(new Date()); // Now use today date.
c.add(Calendar.DATE, 15); // Adding 5 days
String output = sdf.format(c.getTime());
String renual_date=sdf.format(c.getTime());
int fine = 0;
;String session_user=(String)session.getAttribute("userida");
if(session_user!=null)
{
String submit=null;
submit=request.getParameter("submit");
if(submit!=null)
{
	String bookid=request.getParameter("book_id");
	String uname=request.getParameter("username");
	String regno=request.getParameter("regno");
	
	Connection con=null;		
	PreparedStatement pstInsertItem=null;
	ResultSet resultInsertItem=null;		
	try{						
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost/newlibrary","root","Bagu_7vix");
	String	sqlInsertItem="insert into issue_book(uname,reg_no,book_id,issue_date,renual_date,fine) values('"+uname+"','"+regno+"','"+bookid+"','"+issue_date+"','"+renual_date+"','"+fine+"')";
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
    alert("Book Issued" );
}
</script>
<fieldset>
<form action="issue_book.jsp">
<p >User Name:<input type="text" name="username"></p>
<p >Registration Number:<input type="text" name="regno"></p>
<p >Book Id:	<input type="text" name="book_id"></p>

<input type="submit" value="Submit" name="submit" onclick="myFunction()">
</form>
</fieldset>
    
    
  </div> <!-- /container -->
</div> <!-- /wrap -->
      
<div id="footer">
      <div class="container">
        <p class="muted credit"></p>
      </div>
</div>



</body>
</html>
