<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="RRTS.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint List</title>
        <!--===============================================================================================-->  
    <link rel="icon" type="image/png" href="table/images/icons/favicon.ico"/>
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="table/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="table/vendor/animate/animate.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="table/vendor/select2/select2.min.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="table/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="table/css/util.css">
    <link rel="stylesheet" type="text/css" href="table/css/main.css">
<!--===============================================================================================-->
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
                %><div class="limiter">
                        <div class="container-table100">
                            <div class="wrap-table100">
                                <div class="table100 ver1 m-b-110">
                                    <div class="table100-head">
                                        <table>
                                            <thead>
                                                <tr class="row100 head">
                                                    <th class="cell100 column1">Roadname</th>
                                                    <th class="cell100 column2">Area</th>
                                                    <th class="cell100 column3">Location</th>
                                                    <th class="cell100 column4">Description</th>
                                                    <th class="cell100 column5">Comments</th>
                                                    <th class="cell100 column6">ComplaintID</th>
                                                </tr>
                                            </thead>
                                        </table>
                                    </div>
                                <div class="table100-body js-pscroll">
                                    <table>
                                        <tbody><%
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
                     
                                            %><tr class="row100 body">
                                                <td class="cell100 column1">Like a butterfly</td>
                                                <td class="cell100 column2">Boxing</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">10</td>
                                            </tr><%

        %><br><%
                    
                }
            }
                
            catch(Exception e){
                out.println("Something went wrong !! Please try again\n"+e);       
            }
        %>

        <!--===============================================================================================-->  
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script>
        $('.js-pscroll').each(function(){
            var ps = new PerfectScrollbar(this);

            $(window).on('resize', function(){
                ps.update();
            })
        });
            
        
    </script>
<!--===============================================================================================-->
    <script src="js/main.js"></script>

    </body>
</html>

