

<%@page import="RRTS.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome!</title>
    </head>
    <body>
        Hello, <%=Conductor.uname%>
        <br>
        <ul>
            <li><a href="conductor.jsp">Home</a></li>
            <li><a href="repairSchedule.jsp">Repair Schedule</a></li>
            <li><a href="updateResources.jsp">Update Resources</a></li>
            <li><a href="updateWorkDone.jsp">Update Work Done</a></li>
            <li><a href="repairStatistics.jsp">Repair Statistics</a></li>
            <li><a href="chgPwdConductor.jsp">Change Password</a></li>
            <li><a href="logout.jsp">Logout</a></li>
        </ul> 
    </body>
</html>

