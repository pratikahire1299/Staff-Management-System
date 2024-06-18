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
        <% int dno=Integer.parseInt(request.getParameter("deno"));%>
        <div class="container-fluid">
                <div class="row">
                     <%@include file="Sidebar/sidebar.jsp"%>
                    <div class="col-lg-9">
                        <h1><font style="align:center;">Staff Details</font></h1><br/>
                        <% 
                        if(dno==1){%><h2>Department:Computer Technology</h2><br/><br/><%}
                        else if(dno==2){%><h2>Department:Information Technology</h2><br/><br/><%}
                        else if(dno==3){%><h2>Department:Electronics and Telecommunication Engineering (1st Shift)</h2><br/><br/><%}
                        else if(dno==4){%><h2>Department:Electronics and Telecommunication Engineering (2nd Shift)</h2><br/><br/><%}
                        else if(dno==5){%><h2>Department:Plastic Engineering</h2><br/><br/><%}
                        else if(dno==6){%><h2>Department:Electrical Engineering</h2><br/><br/><%}
                        else if(dno==7){%><h2>Department:Mechanical Engineering (1st Shift)</h2><br/><br/><%}
                        else if(dno==8){%><h2>Department:Mechanical Engineering (2nd Shift)</h2><br/><br/><%}
                        else if(dno==9){%><h2>Department:Civil Engineering (1st Shift)</h2><br/><br/><%}
                        else if(dno==10){%><h2>Department:Civil Engineering (2nd Shift)</h2><br/><br/><%}
                        else if(dno==11){%><h2>Department:AutoMobile Engineering</h2><br/><br/><%}
                        else if(dno==12){%><h2>Department:Interior Designing and Decoration</h2><br/><br/><%}
                        else if(dno==13){%><h2>Department:Dress Designing and Garments Manufacturing</h2><br/><br/><%}%>
                        <table class="table table-bordered table-striped table-hover" style="align:center;">
                            <thead>
                                <tr>
                                    <th class="text-center" style="font-size:20px;">Id</th>
                                    <th class="text-center" style="font-size:20px;">Name</th>
                                    <th class="text-center" style="font-size:20px;">Username</th>
                                    <th class="text-center" style="font-size:20px;">Mobile No</th>
                                    <th class="text-center" style="font-size:20px;">Designation</th>
                                    <th class="text-center" style="font-size:20px;">Staff Type</th>
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
                                                        ResultSet rs=null;
                                                        if(dno==1){ rs=st.executeQuery("select * from staff where Department='Computer Technology'"); }
                                                        else if(dno==2){ rs=st.executeQuery("select * from staff where Department='Information Technology'"); }
                                                        else if(dno==3){ rs=st.executeQuery("select * from staff where Department='Electronics and Telecommunication Engineering (1st Shift)'"); }
                                                        else if(dno==4){ rs=st.executeQuery("select * from staff where Department='Electronics and Telecommunication Engineering (2nd Shift)'"); }
                                                        else if(dno==5){ rs=st.executeQuery("select * from staff where Department='Plastic Engineering'"); }
                                                        else if(dno==6){ rs=st.executeQuery("select * from staff where Department='Electrical Engineering'"); }
                                                        else if(dno==7){ rs=st.executeQuery("select * from staff where Department='Mechanical Engineering (1st Shift)'"); }
                                                        else if(dno==8){ rs=st.executeQuery("select * from staff where Department='Mechanical Engineering (2nd Shift)'"); }
                                                        else if(dno==9){ rs=st.executeQuery("select * from staff where Department='Civil Engineering (1st Shift)'"); }
                                                        else if(dno==10){ rs=st.executeQuery("select * from staff where Department='Civil Engineering (2nd Shift)'"); }
                                                        else if(dno==11){ rs=st.executeQuery("select * from staff where Department='Automobile Engineering'"); }
                                                        else if(dno==12){ rs=st.executeQuery("select * from staff where Department='Interior Designing and Decoration'"); }
                                                        else if(dno==13){ rs=st.executeQuery("select * from staff where Department='Dress Designing and Garments Manufacturing'"); }                                                
                                                        while(rs.next())
                                                        {%>
                                                         <tr>
                                                             <td class="text-center"><%= rs.getString("Id")%></td>
                                                            <td><%= rs.getString("Name")%></td>
                                                            <td><%= rs.getString("username")%></td>
                                                            <td class="text-center"><%= rs.getString("Mobile_No")%></td>
                                                            <td class="text-center"><%= rs.getString("Designation")%></td>
                                                            <td class="text-center"><%= rs.getString("Staff_Type")%></td>
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