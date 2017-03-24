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
<script type="text/javascript">
 function validate(){
	var error = 0, error1=0, error2=0, error3=0;
	var h_form = document.getElementsByTagName('form')[0];

	if(document.getElementById('name').value == ''){
		error = 1;
		console.log('Name isEmpty');
		document.getElementById('err_name').className = 'wrong';
	}
	else{
		error = 0;
		document.getElementById('err_name').className = 'correct';
	}

	if(document.getElementById('password').value == ''){
		error1 = 1;
		console.log('Password isEmpty');
		document.getElementById('err_pass').className = 'wrong';
	}
	else{
		error1 = 0;
		document.getElementById('err_pass').className = 'correct';
	}

	if(document.getElementById('repass').value == ''){
		error2 = 1;
		console.log('repass isEmpty');
		document.getElementById('err_repass').className = 'wrong';
	}
	else if(document.getElementById('repass').value != document.getElementById('password').value){
		error2 = 1;
        alert('Passwords don\'t match');
		document.getElementById('err_repass').className = 'wrong';
	}
	else{
		error2 = 0;
		document.getElementById('err_repass').className = 'correct';
	}

	if(document.getElementById('email').value == ''){
		error3 = 1;
		alert('Invalid EMail');
		console.log('Email isEmpty');
		document.getElementById('err_email').className = 'wrong';
	}
	else{
		error3 = 0;
		document.getElementById('err_email').className = 'correct';
	}
	if (error == 0 && error1 == 0 && error2 == 0 && error3 == 0) {
	h_form.submit();
	}
}
    
</script>

    <body>
<form method="post" ><onsubmit="event.preventDefault(); validate();" action="re">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Registration Number</td>
                        <td><input type="text" name="regno" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
