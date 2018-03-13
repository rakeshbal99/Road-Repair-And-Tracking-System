<%@page import="RRTS.*"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        String Name = request.getParameter("name");   
        String Email = request.getParameter("email");
        String RoadName = request.getParameter("roadname");
        String Area = request.getParameter("area");   
        String Location = request.getParameter("location");
        String Telephone = request.getParameter("telephone");
        String Description = request.getParameter("description");
        String Comments = request.getParameter("comments");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");    
        PreparedStatement pst = conn.prepareStatement("insert into COMPLAINTS values (\'"+Name+"\',\'"+Email+"\',\'"+RoadName+"\',\'"+Area+"\',\'"+Location+"\',\'"+Telephone+"\',\'"+Description+"\',\'"+Comments+"\');");
        pst.executeUpdate();  
        out.println("Update successful.");
        
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
