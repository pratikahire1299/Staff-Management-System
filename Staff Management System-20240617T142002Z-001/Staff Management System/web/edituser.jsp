
          

<%@page import="java.sql.*,java.io.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if((String)session.getAttribute("login")!=null){
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
<% Connection con=null;
        Statement st=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffdatabase","root","");%>
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
                       <link rel="icon" type="ico" sizes="20x20" href="images/lg.ico">
        <title>Update User</title>
    </head>
    <body>
        <div class="container">
            <h1><U>
                Update Staff Member
                </U></h1>
            <div class="panel panel-default" style="width:75%;">
                                    <div class="panel-heading">
                                        Update Staff Details
                                    </div>
                                    <div class="panel-body">
                                        <form name="data" method="post" action="">
                                                <%
                                                        st=con.createStatement();
                                                        String u=request.getParameter("u");
                                                        int num=Integer.parseInt(u);
                                                        rs=st.executeQuery("select * from staff where id='"+num+"'");
                                                        while(rs.next()){%>
                                                        <input type="hidden" name="id" value='<%= rs.getString("id")%>' />
                                            <div class="form-group">
                                                <label for="name">Name:</label>
                                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value='<%= rs.getString("Name")%>' required/>
                                            </div>
                                            <div class="form-group">
                                                <label for="username">Username:</label>
                                                <input type="text" class="form-control" id="username" name="username" value='<%=rs.getString("username")%>' required/>
                                            </div>
                                            <div class="form-group">
                                                <label for="password1">Password:</label>
                                                <input type="password" class="form-control" id="password1" name="password1" placeholder="Enter Password" value='<%=rs.getString("password")%>' required/>
                                                <input type="checkbox" class="pull-right" onclick="showpass1()">
                                            </div>
                                            <div class="form-group">
                                                <label for="password2">Confirm Password:</label>
                                                <input type="password" class="form-control" id="password2" name="password2" placeholder="Enter Password Again" value='<%=rs.getString("password")%>' required/>
                                                <input type="checkbox" class="pull-right" onclick="showpass2()">
                                            </div>
                                            <div class="form-group">
                                                <label for="no">Mobile No.:</label>
                                                <input type="text" class="form-control" id="no" name="no" placeholder="Enter Mobile No" value='<%=rs.getString("Mobile_No")%>' required/>
                                            </div>
                                            <div class="form-group">
                                                <label for="Email">Email:</label>
                                                <input type="email" class="form-control" id="Email" name="Email" placeholder="Enter Email" value='<%=rs.getString("Email")%>' required/>
                                            </div>
                                            <div class="form-group">
                                                <label for="experience">Experience:</label>
                                                <input type="text" class="form-control" id="experience" name="experience" value='<%=rs.getString("Experience")%>' placeholder="Enter No of Years of Experience" required/>
                                            </div>
                                            <div class="form-group">
                                                <label for="addhar_no">Addhar No.:</label>
                                                <input type="text" class="form-control" id="addhar_no" name="addhar_no" value='<%=rs.getString("Addhar_No")%>' placeholder="Enter Addhar No" required/>
                                            </div>
                                            <div class="form-group">
                                                <label for="qualification">Qualification:</label>
                                                <input type="text" class="form-control" id="qualification" name="qualification" placeholder="Enter Qualification" value='<%=rs.getString("Designation")%>' required/>
                                            </div>
                                            <div class="form-group">
                                                <label for="gender">Gender:</label>
                                                    <label class="radio-inline"><input type="radio" name="gender" id="gender" value="Male" required/>Male</label>
                                                    <label class="radio-inline"><input type="radio" name="gender" id="gender" value="Female" required/>Female</label>
                                            </div>
                                            <div class="form-group">
                                                <label for="Staff_Type">Staff Type:</label>
                                                <select class="form-control" name="staff_type">
                                                    <option>Select Staff Type</option>
                                                    <option>Permanent</option>
                                                    <option>Visited</option>
                                                    <option>Contract</option>
                                                    <option>Guest</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="department">Department:</label>
                                                <select class="form-control" name="department" required>
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
                                                <textarea class="form-control" rows="4" id="Address" name="Address" placeholder="Enter Address" required><%=rs.getString("Address")%></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="Joining_date">Joining Date:</label>
                                                <input type="date" class="form-control" id="Joining_date" name="Joining_date" required/>
                                            </div>
                                            <div class="form-group">
                                                <label for="designation">Designation:</label>
                                                <input type="text" class="form-control" id="designation" name="designation" value='<%=rs.getString("Designation")%>' placeholder="Enter Designation" required/>
                                            </div>
                                        <button type="submit" class="btn btn-warning">Update</button>
                                        <a href="deptstaffinfo.jsp" class="btn btn-default">Back</a>
                                        </form>
                                    <%}%>
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

    </body>
</html>
<%
            String a=request.getParameter("id");
            String usname=request.getParameter("username");
            String passss=request.getParameter("passsword1");
            String passw=request.getParameter("password2");
            String name=request.getParameter("name");
            String dept=request.getParameter("department");
            String mob_no=request.getParameter("no");
            String email=request.getParameter("Email");
            String experience=request.getParameter("experience");
            String addhar_no=request.getParameter("addhar_no");
            String gender=request.getParameter("gender");
            String address=request.getParameter("Address");
            String join_date=request.getParameter("Joining_date");
            String designation=request.getParameter("designation");
            String qualification=request.getParameter("qualification");
            String staff_type=request.getParameter("staff_type");
            ps=con.prepareStatement("update staff set Name=?, username=?,password=?,Mobile_No=?,Email=?,Experience=?,Addhar_No=?,Gender=?,Address=?,Joining_Date=?,Designation=?,Qualification=?,Staff_Type=? where id='"+a+"'");
            ps.setString(1,name);
            ps.setString(2,usname);
            ps.setString(3,passw);
            ps.setString(4,mob_no);
            ps.setString(5,email);
            ps.setString(6,experience);
            ps.setString(7,addhar_no);
            ps.setString(8,gender);
            ps.setString(9,address);
            ps.setString(10,join_date);
            ps.setString(11,designation);
            ps.setString(12,qualification);
            ps.setString(13,staff_type);
            ps.executeUpdate();%>
            <%--<%!
                void Redirect(String dept)
                {
                    if(dept.equals("Computer")){
                        response.sendRedirect("");
                    }
                }
            %>--%>
%><%}else{ response.sendRedirect("index.jsp"); }%>