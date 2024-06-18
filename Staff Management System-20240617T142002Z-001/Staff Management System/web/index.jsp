<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
                       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <title>Login Page</title>
                       <link rel="stylesheet" href="Sidebar/CSS/mystyle1.css">
                
    </head>
    <body style="background:url('images/bg.jpg')">
        <div class="container-fluid">
            <div class="container">
                <div class="row" style="margin-top:20px; margin-left:20px;">
                    <div class="col-lg-2">
                        <img src="images/LOGO.png" width="140" height="140" style="margin-top:10px"/></div>
                        <div class="col-lg-10" style="margin-top: 10px;">
                         <h1 style="color: chocolate; font-size:40px;"><b>PES Modern</b></h1></div>
                </div>
            </div>
        </div>
        <div class="container-fluid head2">
            <div class="container">
                <div class="row">
                    <h2 style="color:white; margin-left:340px;">Staff Management System</h2>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="box">
                    <h2>Login</h2>
                    <form action="db.jsp?rid=1" method="post">
                        <div class="inputbox">
                            <input type="text" name="user" required>
                            <label>Username</label>
                        </div>
                        <div class="inputbox">
                            <input type="password" name="password" id="mypassword" required>
                            <label>Password</label>
                        </div>
                        <input type="checkbox" onclick="showpass()">&nbsp;&nbsp;&nbsp;&nbsp;<font color="white" size="2px" >Show Password</font>
                        <input type="submit" class="pull-right" value="Login">
                    </form>
                </div>
                <script>
                    function showpass()
                    {
                        var x=document.getElementById("mypassword");
                        if(x.type==="password")
                        {
                            x.type="text";
                        }
                        else
                        {
                            x.type="password";
                        }
                    }
                </script>
            </div>
        </div>
    </body>
</html>
