
<%@page import="java.sql.*,java.io.*,java.util.*"%>
<%@taglib prefix="co" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                       <meta charset="utf-8">
	<meta http-equiv="X-UA-compatible" content="IE-edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
                       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <title>Staff | Dashboard</title>
                       <link rel="stylesheet" href="css/mystyle2.css">
                       <link rel="icon" type="ico" sizes="20x20" href="images/lg.ico">
    </head>
    <body>
        <div class="container-fluid" id="head_bar">
             <div class="row" style="color:white;">
                <div class="col-lg-4">
                    <h4>Staff Management System</h4></div>
                <div class="col-lg-8">
                    <h4 class="pull-right" style="margin-right:10px;"><a href="#" style="color:white;"><i class="fa fa-user-circle" style="margin-right:10px;"></i>Profile</a>
                    |
                    <a href="logout.jsp" style="color:white;"><span class="glyphicon glyphicon-log-in" style="margin-right:10px;"></span>Logout</a></h4></div>
            </div>
        </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 navi" style="background-color:black; display:block; height:100vh;">
                        <ul class="nav nav-pills nav-stacked">
                            <li align="center"><img src="images/Employee.png" height="140px" width="140px" class="center-block"></li>
                            <li><a href="#" style="color:white; font-size:20px;"><span class="glyphicon glyphicon-home" aria-hidden="true" style="margin-right:10px;"></span>Home</a></li>
                            <li><a href="#"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>My Profile</a></li>
                            <li><a href="#"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Subjects</a></li>
                            <li><a href="#"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Upload Notes</a></li>
                        </ul>
                   </div>
                    <div class="col-lg-9">
                        <div class="row">
                           <h1 style="font-family:'Arial Black', Gadget, sans-serif;"><i class="fa fa-chart-line"></i>Dashboard</h1><br/>
                        <h1 style="font-family:'Trebuchet MS', Helvetica, sans-serif">Staff Panel</h1><br/><hr/>
                       </div>
                        <sql:setDataSource var="dbconn" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/staffdatabase" user="root"></sql:setDataSource>
                        
                        
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
