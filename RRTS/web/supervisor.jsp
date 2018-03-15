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
        Hello, <%=Supervisor.uname%>
        <br>
        <ul>
            <li><a href="supervisor.jsp">Home</a></li>
            <li><a href="complaintlist.jsp">Complaint List</a></li>
            <li><a href="updatePriorityData.jsp">Update Priority Data</a></li>
            <li><a href="repairSchedule.jsp">Repair Schedule</a></li>
            <li><a href="repairStatistics.jsp">Repair Statistics</a></li>
            <li><a href="chgPwdSupervisor.jsp">Change Password</a></li>
            <li><a href="logout.jsp">Logout</a></li>
        </ul> 
    </body>
</html>
