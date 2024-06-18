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
                       <style>
                           #selectt{
    width: 260px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

/* When the input field gets focus, change its width to 100% */
#selectt:focus {
    width: 50%
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
            <% int asid=Integer.parseInt(request.getParameter("as")); %>
        </div>
        <div class="container-fluid">
                <div class="row">
                     <%@include file="Sidebar/sidebar.jsp"%>
                    <div class="col-lg-9">
                        <h1 class="text-center">Staff Details</h1><br/>
                        <% String se=null;
                            if(asid==3){%>
                        <h3 class="text-center">All Staff in Collage</h3><%}
                        else if(asid==0){%><h3 class="text-center">All Permanent Staff in Collage</h3><%}
                        else if(asid==1){%><h3 class="text-center">All Visited Staff in Collage</h3><%}
                        else if(asid==2){%><h3 class="text-center">All Departments in Collage</h3><%}%>
                        <br/><br/>
                        <%
                            Connection con=null;
                            try
                            {
                            Class.forName("com.mysql.jdbc.Driver");
                            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffdatabase","root","");
                            Statement st=con.createStatement();
                            if(asid==0 || asid==1 || asid==3 || se!=null)
                            {%>
                        <form action="" method="get">
                            <input type="text" class="form-control" id="selectt" placeholder="Search Staff by Name or Username....." name="search"/>
                        </form><br/><br/>
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
                                                //Connection con=null;
                                                //Statement st=null;
                                                se=request.getParameter("search");
                                                //try
                                                //{
                                                        
                                                        ResultSet rs=null;
                                                        
                                                        if(se!=null){
                                                            rs=st.executeQuery("select * from staff where Name like '%"+se+"%'");
                                                        }else if(asid==3){
                                                            rs=st.executeQuery("select * from staff");}
                                                        else if(asid==0){
                                                            rs=st.executeQuery("select * from staff where Staff_Type='Permanent'");
                                                        }
                                                        else if(asid==1){
                                                            rs=st.executeQuery("select * from staff where Staff_Type='Visited'");
                                                        }
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
                                                        <%}%>
                            </tbody>
                        </table>
                                <%}
                                else if(asid==2)
                                {
                                   
                                 %>   
                                    
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