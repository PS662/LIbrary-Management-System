<html>
<head>
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
        <li class="left"><b><em>Library Management System</em></b></li>
	<span><img src="mujlogo.png" /></span>
  	<li class="right"><a href="logout.jsp">Logout</a></li>        
        <li class="right"><a href="contact_us.jsp">Contact Us</li>
        <li class="right"><a href="user_dash.jsp">User</a></li>
        <li class="right"><a href="admin_dash.jsp">Admin</a></li>
        <li class="right"><a href="front.jsp">Home</a></li>
    </ul>
    <div id="division"></div>

<div id="content">
        <form method="post" action="loginstudent.jsp">
	<label for="name">User Name</label>
	<input type="text" name="uname" id="name"> <i class=" " id="err_name">&emsp;</i><br>
	<label for="password">Password</label>
	<input type="password" name="pass" id="password"  ><i class=" " id="err_pass">&emsp;</i><br>
	<input type="submit" value="Login" />
        <input type="reset" value="Reset" />
    </form>
    </div>
</body>
</html>
