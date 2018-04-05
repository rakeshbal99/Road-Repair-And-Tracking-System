<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="RRTS.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to RRTS!</title>
    </head>
    <body>
        You have been successfully logged out.
        <% 
        Supervisor.uname = null;
        User.uname = null;
        Conductor.uname = null;
        Supervisor.area = null;%>
        <jsp:include page = "index.jsp"/>
    </body>
</html>


