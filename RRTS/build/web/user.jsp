<%-- 
    Document   : welcome
    Created on : Mar 11, 2018, 1:23:18 PM
    Author     : americast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
    </head>
    <body>
        <% String uname;
        uname = request.getParameter("uname");
        %>
        Hello, <%=uname%>
        <br>
        <button type="button onclick="complaint.html">Raise Complaints</button> 
        <button type="button">View Repair Statistics</button> 
    </body>
</html>
