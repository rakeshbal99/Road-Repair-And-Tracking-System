
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="RRTS.*" %>

<% if (Conductor.uname==null) {
    %>
    <jsp:forward page = "index.jsp"/>
    <%}%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
    </head>
    <body>
        <%@ page import ="java.sql.*" %>
<%@ page import ="RRTS.*" %>
<%
    try{
        String oldpwd = request.getParameter("oldpwd");   
        String newpwd = request.getParameter("newpwd");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");    
        PreparedStatement pst = conn.prepareStatement("Select * from CONDUCTOR where Username=? and Password=?");
        pst.setString(1, Conductor.uname);
        pst.setString(2, oldpwd);
        ResultSet rs = pst.executeQuery();              
        if(rs.next())
        {
            pst = conn.prepareStatement("update CONDUCTOR set Password='"+newpwd+"' where Username = '" + Conductor.uname + "';");
            pst.executeUpdate();
            out.println("Password changed.");
        }
        else
            out.println("Old password incorrect.");
   }
   catch(Exception e){       
       out.println(e);       
   }      
%>
    </body>
</html>

