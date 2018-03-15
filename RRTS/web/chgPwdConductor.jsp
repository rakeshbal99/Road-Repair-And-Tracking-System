<%-- 
    Document   : chpwd
    Created on : Mar 14, 2018, 9:21:29 PM
    Author     : americast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="RRTS.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
    </head>
    <body>
        <form method="post" action="chgPwdFuncConductor.jsp">
            <center>
                <table border="1" cellpadding="5" cellspacing="2">
                    <thead>
                        <tr>
                            <th colspan="2">Change password</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Old password</td>
                            <td><input type="password" name="oldpwd" required/></td>
                        </tr>
                        <tr>
                            <td>New password</td>
                            <td><input type="password" name="newpwd" required/></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center"><input type="submit" value="Change password" />
                                &nbsp;&nbsp;
                                <input type="reset" value="Reset" />
                            </td>                        
                        </tr>                    
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>

