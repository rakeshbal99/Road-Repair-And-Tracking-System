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
        <meta charset='utf-8'>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="styles.css">
        <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
        <script src="script.js"></script>
        <title>Welcome Supervisor!</title>
    </head>
    <body bgcolor="#e9faff">
        <div id='cssmenu'>
            <ul>
               <li class='active'><a href="supervisor.jsp"><span>Home</span></a></li>
               <li><a href="complaintlist.jsp"><span>Complaint List</span></a></li>
               <li><a href="updatePriorityData.jsp"><span>Update Priority Data</span></a></li>
               <li><a href="repairSchedule.jsp"><span>Repair Schedule</span></a></li>
               <li><a href="repairStatistics.jsp"><span>Repair Statistics</span></a></li>
               <li><a href="chgPwdSupervisor.jsp"><span>Change Password</span></a></li>
               <li class='last'><a href="logout.jsp"><span>Logout</span></a></li>
            </ul>
        </div>

        <br>
        <br>
        <br>
        <center><h2>Hello, <%=Supervisor.uname%></h2></center>
    </body>
</html>