<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int id=Integer.parseInt(request.getParameter("d"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=null;
    Statement st=null;
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffdatabase","root","");
    st=con.createStatement();
    st.executeUpdate("delete from staff where id='"+id+"'");
    response.sendRedirect("admindashboard.jsp");
%>