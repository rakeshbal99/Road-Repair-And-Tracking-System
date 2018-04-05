<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="RRTS.*"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        String Username = request.getParameter("unamec");   
        String Password = request.getParameter("pwdc");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");    
        PreparedStatement pst = conn.prepareStatement("Select Username,Password from CONDUCTOR where Username=? and Password=?;");
        pst.setString(1, Username);
        pst.setString(2, Password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()) {          
           out.println("Valid login credentials"); 
           Conductor.uname = Username;
           out.println(Username);
            BufferedWriter writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/username.txt"));
            writer.write(Conductor.uname);
            writer.flush();
            writer.close();
            writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/status.txt"));
            writer.write("logged in");
            writer.flush();
            writer.close();%>
            <jsp:forward page = "conductor.jsp"/>
        <%
        }
        else {
           out.println("Invalid login credentials");
           %>Authentication failure.
            <jsp:include page = "index.jsp"/>
            <%
        }
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again"+e);       
   }      
%>
