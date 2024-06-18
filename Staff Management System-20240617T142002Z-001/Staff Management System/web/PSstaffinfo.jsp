
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
        <title>Departments</title>
                       <link rel="stylesheet" href="css/mystyle2.css">
                       <link rel="icon" type="ico" sizes="20x20" href="images/lg.ico">
    </head>
    <body>
       <%@include file="Sidebar/sidebar.jsp"%>
        <div class="container-fluid" id="head_bar">
            <div class="row" style="color:white;">
                <div class="col-lg-4">
                    <h4>Staff Management System</h4></div>
                <div class="col-lg-8">
                    <h4 class="pull-right" style="margin-right:10px;"><a href="#" style="color:white;"><i class="fa fa-user-circle" style="margin-right:10px;"></i>Admin</a>
                    
                    <a href="#" style="color:white;"><span class="glyphicon glyphicon-log-in" style="margin-right:10px;"></span>Logout</a></h4></div>
        </div>
        </div>
        <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 navi" style="background-color:black; display:block; height:100%;">
                        <ul class="nav nav-pills nav-stacked">
                            <li align="center"><img src="images/Employee.png" height="140px" width="140px" class="center-block"></li>
                            <li><a href="admindashboard.jsp" style="color:white; font-size:20px;"><span class="glyphicon glyphicon-home" aria-hidden="true" style="margin-right:10px;"></span>Home</a></li>
                            <li class="dropdown"><a data-toggle="collapse"  href="#collapse1"  style="color:white; font-size:20px;"><span class="glyphicon glyphicon-th-list" style="margin-right:10px;"></span>Departments<span class="glyphicon glyphicon-collapse-down pull-right" style="margin-left:10px;"></span></a>
                                <ul id="collapse1" style="list-style-type:none; font-size:14px;">
                                    <li><a href="CMstaffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Computer Technology</a></li>
                                    <li><a href="IFstaffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Information Technology</a></li>
                                    <li><a href="EL1staffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Electronics and Telecommunication(1st Shift)</a></li>
                                    <li><a href="EL2staffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Electronics and Telecommunication(2nd Shift)</a></li>
                                    <li><a href="PSstaffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Plastic Engineering</a></li>
                                    <li><a href="EEstaffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Electrical Engineering</a></li>
                                    <li><a href="ME1staffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Mechanical Engineering(1st Shift)</a></li>
                                    <li><a href="ME2staffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Mechanical Engineering(2st Shift)</a></li>
                                    <li><a href="CE1staffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Civil Engineering(1st Shift)</a></li>
                                    <li><a href="CE2staffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Civil Engineering(2st Shift)</a></li>
                                    <li><a href="DDGMstaffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Dress Desigining and Garments Manufacturing</a></li>
                                    <li><a href="IDDstaffinfo.jsp"  style="color:white;"><span class="glyphicon glyphicon-chevron-right" style="margin-right:10px;"></span>Interior Desigining and Decoration</a></li>
                                </ul>
                            </li>
                            <li><a href="newuser.jsp"  style="color:white; font-size:20px;"><i class="fa fa-user-plus" style="margin-right:10px;"></i>Add a New</a></li>
                            <li><a href="logout.jsp"  style="color:white;">Logout</a>  </li>
                           </ul>
                </div>
                    <div class="col-lg-9">
                        <h1><font style="align:center;">Staff Details</font></h1><br/>
                        <h2>Department:Plastic Engineering</h2><br/><br/>
                        <table class="table table-bordered table-striped table-hover" style="align:center;">
                            <thead>
                                <tr>
                                    <th class="text-center" style="font-size:20px;">Id</th>
                                    <th class="text-center" style="font-size:20px;">Name</th>
                                    <th class="text-center" style="font-size:20px;">Username</th>
                                    <th class="text-center" style="font-size:20px;">Mobile No</th>
                                    <th class="text-center" style="font-size:20px;">Designation</th>
                                    <th class="text-center" style="font-size:20px;">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                        <%
                                                Connection con=null;
                                                try
                                                {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffdatabase","root","");
                                                        Statement st=con.createStatement();
                                                        ResultSet rs=st.executeQuery("select * from staff where Department='Plastic Engineering'");
                                                        while(rs.next())
                                                        {%>
                                                         <tr>
                                                             <td class="text-center"><%= rs.getString("Id")%></td>
                                                            <td><%= rs.getString("Name")%></td>
                                                            <td><%= rs.getString("username")%></td>
                                                            <td class="text-center"><%= rs.getString("Mobile_No")%></td>
                                                            <td class="text-center"><%= rs.getString("Designation")%></td>
                                                            <td class="text-center"><a class="btn btn-warning" href='edituser.jsp?u=<%=rs.getString("Id")%>' >Edit</a>&nbsp;&nbsp;
                                                                <a class="btn btn-danger" href='deleteuser.jsp?d=<%=rs.getString("Id")%>'>Delete</a>&nbsp;&nbsp;
                                                                <a class="btn btn-info" href='viewprofile.jsp?k=<%=rs.getString("Id")%>'>View Profile</a>
                                                            </td>
                                                        </tr>
                                <%}
            }catch(Exception e)
            {
                out.println("SQL Exception Generated:"+e);
            }
            finally
            {
                con.close();
            }
        %>
                            </tbody>
                        </table>
                    </div>
                </div>
        </div>
      </body>
     </html>
        <%}else{response.sendRedirect("index.jsp");}%>