<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="RRTS.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Repair Schedule</title>
    </head>
    <body bgcolor="#e9faff">
        <%
            try {   
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");
                PreparedStatement pst = conn.prepareStatement("SELECT * FROM PRIORITY ORDER BY PRIORITY_ORDER DESC;");
                //PreparedStatement pst = conn.prepareStatement("Select * from COMPLAINTS;");
                ResultSet rs = pst.executeQuery();
                PreparedStatement pst2 = conn.prepareStatement("SELECT * FROM RESOURCES");
                ResultSet rs2 = pst2.executeQuery();
                rs2.next();
                int CEMENT = rs2.getInt("CEMENT");   
                int SAND = rs2.getInt("SAND_TRIPS");
                int WATER = rs2.getInt("WATER");
                int LABOURERS = rs2.getInt("LABOURERS");
                out.println("Repair Schedule is :");
                %><br><%
                while(rs.next()){
                    String AREA = rs.getString("Area");
                    int CEMENT_R = rs.getInt("CEMENT");   
                    int SAND_R = rs.getInt("SAND_TRIPS");
                    int WATER_R = rs.getInt("WATER");
                    int LABOURERS_R = rs.getInt("LABOURERS");   
                    int ComplaintID = rs.getInt("ComplaintID");
                      
                    if((CEMENT_R<= CEMENT) && (SAND_R<= SAND) && (WATER_R<= WATER) && (LABOURERS_R<=LABOURERS)){
                        CEMENT-=CEMENT_R;
                        SAND-= SAND_R;
                        WATER-= WATER_R;
                        LABOURERS-= LABOURERS_R;
                        out.println("\n ComplaintID: "+ComplaintID+"\t AREA:"+AREA+"\t CEMENT: "+CEMENT_R+"\t SAND_TRIPS :"+SAND_R+"\t WATER: "+WATER_R+"\t LABOURERS: "+LABOURERS_R);
                    }
                    else{
                        break;
                    }
                     
        %><br><%
                    
                }
            }
                
            catch(Exception e){
                out.println("Something went wrong !! Please try again\n"+e);       
            }
        %>
    </body>
</html>

