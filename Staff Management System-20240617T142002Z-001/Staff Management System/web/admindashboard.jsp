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
        <title>Admin | Dashboard</title>
                       <link rel="stylesheet" href="css/mystyle2.css">
                       <link rel="icon" type="ico" sizes="20x20" href="images/lg.ico">
                       <style>
                           
                       </style>
    </head>
    <body>
        <div class="container-fluid" id="head_bar">
            <div class="row" style="color:white;">
                <div class="col-lg-4">
                    <h4>Staff Management System</h4></div>
                <div class="col-lg-8">
                    <h4 class="pull-right" style="margin-right:10px;"><a href="#" style="color:white;"><i class="fa fa-user-circle" style="margin-right:10px;"></i>Admin</a>
                    |
                    <a href="logout.jsp" style="color:white;"><span class="glyphicon glyphicon-log-in" style="margin-right:10px;"></span>Logout</a></h4></div>
        </div>
        </div>
        <%
            Connection con=null;
            int p_staff=0;
            int v_staff=0;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffdatabase","root","");
                Statement st=con.createStatement();
                ResultSet rs1=st.executeQuery("select id,Mobile_No from staff where Staff_Type='Permanent';");
                while(rs1.next())
                {
                    p_staff++;
                }
                ResultSet rs2=st.executeQuery("select id,Mobile_No from staff where Staff_Type='Visited'");
                while(rs2.next())
                {
                    v_staff++;
                }
            }catch(Exception e)
            {
                out.println("SQL Exception Generated:"+e);
            }
            finally
            {
                con.close();
            }
        %>
        <div class="container-fluid">
                <div class="row">
                    <%@include file="Sidebar/sidebar.jsp"%>
                    <div class="col-lg-9 top_bar">
                           <div class="page-header">
                           <h1 style="font-family:'Arial Black', Gadget, sans-serif;"><i class="fa fa-chart-line"></i>Dashboard</h1><br/>
                        <h1 style="font-family:'Trebuchet MS', Helvetica, sans-serif">Admin Panel</h1><br/>
                           </div>
                        <div class="row">
                            <hr/>
                            <div class="col-lg-4">
                                <div class="circle-tile ">
                                 <div class="circle-tile-heading dark-blue"><i class="fa fa-users fa-fw fa-3x"></i></div>
                                 <div class="circle-tile-content dark-blue">
                                 <div class="circle-tile-description text-faded">Total Permanent Staff</div>
                                 <div class="circle-tile-number text-faded "><% out.print(p_staff);%></div>
                                 <a class="circle-tile-footer" href="Allstaff.jsp?as=0">More Info<i class="fa fa-chevron-circle-right" style="margin-left:8px;"></i></a>
                                 </div>
                        </div>
                    </div>
                                 <div class="col-lg-4">
                                <div class="circle-tile ">
                                 <div class="circle-tile-heading dark-blue"><i class="fa fa-users fa-fw fa-3x"></i></div>
                                 <div class="circle-tile-content dark-blue">
                                 <div class="circle-tile-description text-faded">Total Visited Staff</div>
                                 <div class="circle-tile-number text-faded "><%= v_staff %></div>
                                 <a class="circle-tile-footer" href="Allstaff.jsp?as=1">More Info<i class="fa fa-chevron-circle-right" style="margin-left:8px;"></i></a>
                                 </div>
                        </div>
                    </div>
                                <div class="col-lg-4">
                                <div class="circle-tile ">
                                 <div class="circle-tile-heading dark-blue"><i class="fa fa-users fa-fw fa-3x"></i></div>
                                 <div class="circle-tile-content dark-blue">
                                 <div class="circle-tile-description text-faded">Total Departments</div>
                                 <div class="circle-tile-number text-faded ">12</div>
                                 <a class="circle-tile-footer" href="Allstaff.jsp?as=2">More Info<i class="fa fa-chevron-circle-right" style="margin-left:8px;"></i></a>
                                 </div>
                        </div>
                    </div>
            </div>
                                 <div class="well well-lg">
                                     <center><a href="Allstaff.jsp?as=3"class="btn btn-primary btn-lg">View All Staff in Collage</a></center>
                                 </div>
                                 <div class="well well-lg">
                                     <center><a href="#"class="btn btn-primary btn-lg">View Alloted Staff to Subject</a></center>
                                 </div>
                                 <div class="well well-lg">
                                     <center><a href="AllotStaff.jsp"class="btn btn-primary btn-lg">Allot Staff to Subject</a></center>
                                 </div>
                                 <center>
                                     <div class="panel panel-default" style="width:50%;">
                                     <div class="panel-heading">
                                         <h3>Change Password:</h3>
                                     </div>
                                     <div class="panel-body">
                                         <form method="post" action="db.jsp?rid=3">
                                             <div class="form-group">
                                                 <label for="cusername">Enter Username:</label>
                                                 <input type="text" class="form-control" name="cuser" placeholder="Enter Username...." id="cusername"/>
                                             </div>
                                             <div class="form-group">
                                                 <label for="cpassword">Enter Current Password:</label>
                                                 <input type="password" class="form-control" name="cpassc" placeholder="Enter Current Password...." id="cpassword"/>
                                             </div>
                                             <div class="form-group">
                                                 <label for="cnpassword">Enter New Password:</label>
                                                 <input type="password" class="form-control" name="cpassn" placeholder="Enter New Password...." id="cnpassword"/>
                                             </div>
                                             <input type="submit" class="btn btn-warning" value="Change Password"/>
                                         </form>
                                     </div>
                                 </div>
                                 </center>
        </div>
    </body>
</html>
<% } else{ response.sendRedirect("index.jsp"); } %>