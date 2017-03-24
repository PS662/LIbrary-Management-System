<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>User Login</title>
    </head>
<body style="background-image:url(img1.jpg);background-attachment: fixed;background-repeat: no-repeat;background-size: cover">
        <form method="post" action="loginstudent.jsp">
            <center><br><br><br><br><br><br><br><br>Login Here<br>            </center>

                   <center>    User Name:
                     <input type="text" name="uname" value="" />
                       </center>

<br>
                      <center>   Password:
                        <input type="password" name="pass" value="" />
                     </center>
<br>
                     <center>
                        <input type="submit" value="Login" />
                        <input type="reset" value="Reset" />
                     </center>


        </form>
    </body>
</html>
