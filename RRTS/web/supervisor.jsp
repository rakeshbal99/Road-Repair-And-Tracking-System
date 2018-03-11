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
        <button type="button">View Area List</button> 
        <button type="button">Update Priority Data</button> 
    </body>
</html>
