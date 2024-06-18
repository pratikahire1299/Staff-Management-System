<%-- 
    Document   : newuser
    Created on : 10 Jun, 2018, 5:33:21 PM
    Author     : Pranavi
--%>
<%@page import="java.sql.*,java.io.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if((String)session.getAttribute("login")!=null){
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
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
                       <link rel="stylesheet" href="css/mystyle2.css">
                       <link rel="icon" type="ico" sizes="20x20" href="images/lg.ico">
        <title>New User</title>
    </head>
    <body>
        <div class="container-fluid" id="head_bar">
            <div class="row" style="color:white;">
                <div class="col-lg-4">
                    <h4>Staff Management System</h4></div>
                <div class="col-lg-8">
                    <h4 class="pull-right" style="margin-right:10px;"><a href="#" style="color:white;"><i class="fa fa-user-circle" style="margin-right:10px;"></i>Admin</a>
                    |
                    <a href="#" style="color:white;"><span class="glyphicon glyphicon-log-in" style="margin-right:10px;"></span>Logout</a></h4></div>
        </div>
        </div>
                <div class="container-fluid">
                <div class="row">
                    <%@include file="Sidebar/sidebar.jsp"%>
                    <div class="col-lg-9">
                        <div class="row">
                            <h1>Add a New Staff</h1>
                            <hr/>
                        </div>
                        <!--<div class="row">-->
                                <div class="panel panel-default" style="width:75%;">
                                    <div class="panel-heading">
                                        Staff Details
                                    </div>
                                    <div class="panel-body">
                                        <form name="data" method="post" onsubmit="return(validate())" action="db.jsp?rid=2">
                                            <div class="form-group">
                                                <label for="name">Name:</label>
                                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="username">Username:</label>
                                                <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" />
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="password1">Password:</label>
                                                <input type="password" class="form-control" id="password1" name="password1" placeholder="Enter Password"/>
                                                <input type="checkbox" class="pull-right" onclick="showpass1()">
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="password2">Confirm Password:</label>
                                                <input type="password" class="form-control" id="password2" name="password2" placeholder="Enter Password Again"/>
                                                <input type="checkbox" class="pull-right" onclick="showpass2()">
                                            </div>
                                            <div class="form-group">
                                                <label for="no">Mobile No.:</label>
                                                <input type="text" class="form-control" id="no" name="no" placeholder="Enter Mobile No"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="Email">Email:</label>
                                                <input type="email" class="form-control" id="Email" name="Email" placeholder="Enter Email"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="DOB">Date of Birth:</label>
                                                <input type="date" class="form-control" id="DOB" name="DOB" placeholder="Enter Date of Birth"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="experience">Experience:</label>
                                                <input type="text" class="form-control" id="experience" name="experience" placeholder="Enter No of Years of Experience"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="addhar_no">Addhar No.:</label>
                                                <input type="text" class="form-control" id="addhar_no" name="addhar_no" placeholder="Enter Addhar No"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="qualification">Qualification:</label>
                                                <input type="text" class="form-control" id="qualification" name="qualification" placeholder="Enter Qualification"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="gender">Gender:</label>
                                                    <label class="radio-inline"><input type="radio" name="gender" id="gender" value="Male"/>Male</label>
                                                    <label class="radio-inline"><input type="radio" name="gender" id="gender" value="Female"/>Female</label>
                                            </div>
                                            <div class="form-group">
                                                <label for="Staff_Type">Staff Type:</label>
                                                <select class="form-control" name="staff_type" id="Staff_Type">
                                                    <option>Select Staff Type</option>
                                                    <option>Permanent</option>
                                                    <option>Guest</option>
                                                    <option>Visited</option>
                                                    <option>Contract</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="department">Department:</label>
                                                <select class="form-control" name="department">
                                                    <option>Select Department</option>
                                                    <option>Computer Technology</option>
                                                    <option>Information Technology</option>
                                                    <option>Electronics and Telecommunication Engineering (1st Shift)</option>
                                                    <option>Electronics and Telecommunication Engineering (2nd Shift)</option>
                                                    <option>Civil Engineering (1st Shift)</option>
                                                    <option>Civil Engineering (2nd Shift)</option>
                                                    <option>Mechanical Engineering (1st Shift)</option>
                                                    <option>Mechanical Engineering (2nd Shift)</option>
                                                    <option>Plastic Engineering</option>
                                                    <option>Electrical Engineering</option>
                                                    <option>Automobile Engineering</option>
                                                    <option>Interior Designing and Decoration</option>
                                                    <option>Dress Designing and Garments Manufacturing</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="Address">Address:</label>
                                                <textarea class="form-control" rows="4" id="Address" name="Address" placeholder="Enter Address"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="Joining_date">Joining Date:</label>
                                                <input type="date" class="form-control" id="Joining_date" name="Joining_date"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="designation">Designation:</label>
                                                <input type="text" class="form-control" id="designation" name="designation" placeholder="Enter Designation"/>
                                            </div>
                                              <button type="submit" class="btn btn-default">Submit</button>
                                        </form>
                                    </div>
                                </div>
                        </div>
                    </div>
                    </div>
        <script>
                    function showpass1()
                    {
                        var x=document.getElementById("password1");
                        if(x.type==="password")
                        {
                            x.type="text";
                        }
                        else
                        {
                            x.type="password";
                        }
                    }
                    
                    function showpass2()
                    {
                        var x=document.getElementById("password2");
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
        <script>
            function validate()
            {
                var pass1=document.data.password1.value;
                var pass2=document.data.password2.value;
                if(pass1.equals(pass2))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        </script>
    </body>
</html>
<% }else{ response.sendRedirect("index.jsp"); } %>