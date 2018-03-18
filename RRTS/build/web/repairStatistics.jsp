<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="RRTS.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Repair Statistics</title>
    </head>
    <body bgcolor="#e9faff">
        <%
            try {   
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");
                PreparedStatement pst = conn.prepareStatement("SELECT * FROM WORK;");
                //PreparedStatement pst = conn.prepareStatement("Select * from COMPLAINTS;");
                ResultSet rs = pst.executeQuery();
                
                out.println("Repair Schedule is:");
                %><br><%
                %><br><%
                while(rs.next()){
                    int CEMENT_USED = rs.getInt("CEMENT_USED");   
                    int SAND_USED = rs.getInt("SAND_TRIPS_USED");
                    int WATER_USED = rs.getInt("WATER_USED");
                    int LABOURERS_USED = rs.getInt("LABOURERS_USED");
                    String Area = rs.getString("Area");
                    int CEMENT_REQUIRED = rs.getInt("CEMENT_REQUIRED");   
                    int SAND_REQUIRED = rs.getInt("SAND_TRIPS_REQUIRED");
                    int WATER_REQUIRED = rs.getInt("WATER_REQUIRED");
                    int LABOURERS_REQUIRED = rs.getInt("LABOURERS_REQUIRED");   
                    int ComplaintID = rs.getInt("ComplaintID");
                    int PercentWork = rs.getInt("PercentDone");   
                    out.println("ComplaintID: "+ComplaintID+"\t AREA: "+Area+"\t Percent Work Done: "+PercentWork+"\t CEMENT_USED: "+CEMENT_USED+"\t SAND_TRIPS_USED: "+SAND_USED+"\t WATER_USED: "+WATER_USED+"\t LABOURERS_USED: "+LABOURERS_USED+"\t CEMENT_REQUIRED: "+CEMENT_REQUIRED+"\t SAND_REQUIRED: "+SAND_REQUIRED+"\t WATER_REQUIRED:  "+WATER_REQUIRED+"\t LABOURERS_REQUIRED: "+LABOURERS_REQUIRED);
                    %><br><%
                    %><br><% 
        %><br><%
                    
                }
            }
                
            catch(Exception e){
                out.println("Something went wrong !! Please try again\n"+e);       
            }
        %>
    </body>
</html>


