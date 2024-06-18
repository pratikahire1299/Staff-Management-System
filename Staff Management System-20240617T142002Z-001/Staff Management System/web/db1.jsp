
<%@page import="java.sql.*,java.io.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% if((String)session.getAttribute("login")!=null){
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String usname=request.getParameter("username");
            String passss=request.getParameter("passsword1");
            String passw=request.getParameter("password2");
            String name=request.getParameter("name");
            String dept=request.getParameter("department");
            String mob_no=request.getParameter("no");
            String email=request.getParameter("Email");
            String dob=request.getParameter("DOB");
            String experience=request.getParameter("experience");
            String addhar_no=request.getParameter("addhar_no");
            String gender=request.getParameter("gender");
            String address=request.getParameter("Address");
            String join_date=request.getParameter("Joining_date");
            String designation=request.getParameter("designation");
            String qualification=request.getParameter("qualification");
            Connection con=null;
            Statement st=null;
            try
            {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffdatabase","root","");
            st=con.createStatement();
            st.executeUpdate("insert into staff(username,password,Name,Department,Mobile_No,Email,DOB,Experience,Addhar_No,Gender,Address,Joining_Date,Designation)"
            + "values('"+usname+"','"+passw+"','"+name+"','"+dept+"','"+mob_no+"','"+email+"','"+dob+"','"+experience+"','"+addhar_no+"','"+gender+"','"+address+"','"+join_date+"','"+designation+"')");
            out.println("<script>alert('Account Created Successfully'); delay(2000);</script>");
            response.sendRedirect("newuser.jsp");
            }
            catch(Exception ae)
            {
                out.println(ae);
            }
            finally
            {
                con.close();
                st.close();
            }
            
        %>
    </body>
</html>
<%}else{ response.sendRedirect("index.jsp");}%>