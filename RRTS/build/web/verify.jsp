<%-- 
    Document   : verify
    Created on : Mar 11, 2018, 1:14:01 PM
    Author     : americast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String uname, pwd; %>
        <%
        uname = request.getParameter("uname");
        pwd = request.getParameter("pwd");
        if (uname.equals("a") && pwd.equals("a"))
        {%>
            <jsp:forward page = "user.jsp"/>
        <%}
        else {
            %>Authentication failure.
            <jsp:include page = "index.html"/>
       <%}%>
    </body>
</html>
