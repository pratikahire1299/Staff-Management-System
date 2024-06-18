
<%@page import="java.sql.*,java.io.*,java.util.*"%>
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
        <title>Staff Details</title>
                       <link rel="stylesheet" href="css/mystyle2.css">
                       <link rel="icon" type="ico" sizes="20x20" href="images/lg.ico">
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
                    <%
                        Connection con=null;
                        ResultSet rs=null;
                        Statement st=null;
                        Class.forName("com.mysql.jdbc.Driver");
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffdatabase","root","");
                        int iv=Integer.parseInt(request.getParameter("k"));
                        st=con.createStatement();
                        rs=st.executeQuery("select * from staff where id='"+iv+"'");
                        while(rs.next()){
                    %>
                    <div class="col-lg-9" id="printarea">
                        <h2 class="text-center">Staff Profile</h2>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <table class="table table-hover">
                                    <tbody style="font-size:20px;">
                                        <tr><td><b>Name:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Name")%></td></tr>
                                        <tr><td><b>Department:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Department")%></td></tr>
                                        <tr><td><b>Username:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("username")%></td></tr>
                                        <tr><td><b>Mobile No:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Mobile_No")%></td></tr>
                                        <tr><td><b>Designation:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Designation")%></td></tr>
                                        <tr><td><b>Staff Type:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Staff_Type")%></td></tr>
                                        <tr><td><b>Email:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Email")%></td></tr>
                                        <tr><td><b>Date of Birth:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("DOB")%></td></tr>
                                        <tr><td><b>Experience:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Experience")%></td></tr>
                                        <tr><td><b>Addhar No:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Addhar_No")%></td></tr>
                                        <tr><td><b>Gender:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Gender")%></td></tr>
                                        <tr><td><b>Address:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Address")%></td></tr>
                                        <tr><td><b>Joining Date:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("Joining_Date")%></td></tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                            <a href="#" class="btn btn-info btn-lg hidden-print text-center" onClick="myfunction('printarea')">
                                        <span class="glyphicon glyphicon-print"></span> Print
                                        </a>
                         </div>
                   <%}%>
                    </div>
    </body>
    <script type="text/javascript">
            function myfunction(divName)
            {
                     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
            }

</html>
