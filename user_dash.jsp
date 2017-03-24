<html>
<head>
<%
    if ((session.getAttribute("useridm") == null) || (session.getAttribute("useridm") == "")) {

        response.sendRedirect("loginm.jsp");} 
%>
	<title>User Dash</title>
	<link rel="stylesheet" type="text/css" href="front.css">
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
    </ul>
    <div id="division"></div>


</body>
</html>
