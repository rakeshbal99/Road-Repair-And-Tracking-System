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
        <ul>
            <li><a href="index.html">Home</a></li>
            <li class="dropdown">
                <a  href="AboutMe.html" class="dropbtn">AboutMe</a>
                <div class="dropdown-content">
                    <a href="AboutMe.html#Achievements">Achievements</a>
                    <a href="AboutMe.html#Interests">Interests</a>
                    <a href="AboutMe.html#Hobbies">Hobbies</a>
                    <a href="AboutMe.html#Involvements">Involvements</a>
                </div>
            </li>
            <li><a href="Contact.html">Contact</a></li>
            <li><a href="Feedback.html">Feedback</a></li>
        </ul> 
    </body>
</html>
