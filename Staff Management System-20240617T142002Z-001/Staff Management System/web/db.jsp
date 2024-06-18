
<%@page import="java.sql.*,java.io.*,java.util.*,java.lang.*;" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <% 
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/staffdatabase","root","");
            Statement st=con.createStatement();
            int rid=Integer.parseInt(request.getParameter("rid"));
            if(rid==1)
            {
            String usname=request.getParameter("user");
            String passw=request.getParameter("password");
            int cnt=0;
            String name=null;
            String pass=null;
             ResultSet rss=st.executeQuery("select username,password from login ");
 
            response.sendRedirect("admindashboard.jsp"); // adminpanel page for admin
            if(usname.equals(name) && passw.equals(pass))
            {
                out.println("<script>alert('Login Successfully....!');</script>");
                session.setAttribute("login",name);
                cnt++;
                response.sendRedirect("admindashboard.jsp"); // adminpanel page for admin
            }
            else
            {
            try
            {
                ResultSet rs=st.executeQuery("select username,password from login");
                while(rs.next())
                {
                    String dbusname=rs.getString("username");
                    String dbpassw=rs.getString("password");
                    if(usname.equals(dbusname) && passw.equals(dbpassw)) 
                    {
                        out.println("<script>alert('Login Successfully....!');</script>");
                        session.setAttribute("login",dbusname);
                        cnt++;
                        response.sendRedirect("admindashboard.jsp");// staffdashboard 
                    }
                }
            }catch(Exception e)
            {
                out.println("SQL Exception Generated:"+e);
            }
            finally
            {
                con.close();
            }
            }
            if(cnt!=1)
            { %>
                <script>
                    var x=0;
                    x=alert('Username and Password is Wrong');
                    if(x==1)
                    {
                        <%response.sendRedirect("index.jsp");%>
                    }
          <%}
    }else if(rid==2)
           {
                    
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
            String staff_type=request.getParameter("staff_type");
            try
            {
            st.executeUpdate("insert into staff(username,password,Name,Department,Mobile_No,Email,DOB,Experience,Addhar_No,Gender,Address,Joining_Date,Designation,Qualification,Staff_Type)"
            + "values('"+usname+"','"+passw+"','"+name+"','"+dept+"','"+mob_no+"','"+email+"','"+dob+"','"+experience+"','"+addhar_no+"','"+gender+"','"+address+"','"+join_date+"','"+designation+"','"+qualification+"','"+staff_type+"')");
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
            } else if(rid==3)
                {
                    String cusname=request.getParameter("cuser");
                    String cpassw=request.getParameter("cpassc");
                    String cnpassw=request.getParameter("cpassn");
                    String dbcusname=null;
                    String dbcpassw=null;
                    ResultSet crs=st.executeQuery("select username,password from staff where username='"+cusname+"'");
                    while(crs.next())
                    {
                        dbcusname=crs.getString("username");
                        dbcpassw=crs.getString("password");
                    }
                    if(cusname.equals(dbcusname) && cpassw.equals(dbcpassw))
                    {
                        st.executeUpdate("update staff set password='"+cnpassw+"'where username='"+cusname+"'");
                        out.println("Password Change Successfully");
                    }
                }%>
    </body>
</html>