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
        PreparedStatement pst = conn.prepareStatement("SELECT * FROM COMPLAINTS ORDER BY ComplaintID DESC LIMIT 1;");
        ResultSet rs = pst.executeQuery();
        rs.next();
        int ComplaintID = rs.getInt("ComplaintID");
        pst = conn.prepareStatement("insert into COMPLAINTS values (\'"+Name+"\',\'"+Email+"\',\'"+RoadName+"\',\'"+Area+"\',\'"+Location+"\',\'"+Telephone+"\',\'"+Description+"\',\'"+Comments+"\',"+(ComplaintID+1)+");");
        pst.executeUpdate();  
        out.println("Complaint Lodged. Thanks a lot for informing us");
        
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
