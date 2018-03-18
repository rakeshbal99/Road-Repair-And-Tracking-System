<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="RRTS.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint List</title>
    </head>
    <body bgcolor="#e9faff">
        <%
            try {   
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");
                PreparedStatement pst = conn.prepareStatement("Select * from COMPLAINTS where Area=?;");
                //PreparedStatement pst = conn.prepareStatement("Select * from COMPLAINTS;");
                pst.setString(1, Supervisor.area);
                ResultSet rs = pst.executeQuery();
                while(rs.next()){
                    String Name = rs.getString("Name");   
                    String Email = rs.getString("Email");
                    String RoadName = rs.getString("Roadname");
                    String Area = rs.getString("Area");   
                    String Location = rs.getString("Location");
                    String Telephone = rs.getString("Telephone");
                    String Description = rs.getString("Description");
                    String Comments = rs.getString("Comments");
                    int ComplaintID = rs.getInt("ComplaintID");
                    out.println("Name: "+Name+"\t Email: "+Email+"\t Telephone: "+
                        Telephone+"\t Road Name: "+RoadName+"\t Area: "+Area+
                        "\t Location: "+Location+"\t Description: "+Description+
                        "\t Comments: "+Comments+"\t ComplaintID: "+ComplaintID);
                     
        %><br><%
                    
                }
            }
                
            catch(Exception e){
                out.println("Something went wrong !! Please try again\n"+e);       
            }
        %>
    </body>
</html>

