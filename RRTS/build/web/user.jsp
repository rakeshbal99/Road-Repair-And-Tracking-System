<%-- 
    Document   : welcome
    Created on : Mar 11, 2018, 1:23:18 PM
    Author     : rakeshbal99
--%>

<%@page import="RRTS.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
    </head>
    <body>
        Hello, <%=User.uname%>
        <br>
        <ul>
            <li><a href="user.jsp">Home</a></li>
            <li><a href="complaint.jsp">Complain</a></li>
            <li><a href="repairstatistics.jsp">Repair Statistics</a></li>
            <li><a href="profile.html">Modify Profile</a></li>
            <li><a href="logout.jsp">Logout</a></li>
        </ul> 
    </body>
</html>
