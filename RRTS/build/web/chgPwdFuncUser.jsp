
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="RRTS.*" %>

<% if (User.uname==null) {
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
        PreparedStatement pst = conn.prepareStatement("Select * from USER where Username=? and Password=?");
        pst.setString(1, User.uname);
        pst.setString(2, oldpwd);
        ResultSet rs = pst.executeQuery();              
        if(rs.next())
        {
            pst = conn.prepareStatement("update USER set Password='"+newpwd+"' where Username = '" + User.uname + "';");
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

