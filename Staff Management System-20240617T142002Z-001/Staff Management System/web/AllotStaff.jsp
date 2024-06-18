
<%@page import="java.sql.*"%>
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
        <title>AllotStaff</title>
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
                    <center>
                        <div class="panel"
                            <h2 class="page-header">Allot a new Staff</h2>
                    </center>
                </div>
            </div>
        </div>
    </body>
</html>
<%} else{ response.sendRedirect("index.jsp"); } %>