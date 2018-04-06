<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="RRTS.*"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        int PRIORITY_ORDER = Integer.parseInt(request.getParameter("pq"));   
        int CEMENT = Integer.parseInt(request.getParameter("cement"));
        int SAND_TRIPS= Integer.parseInt(request.getParameter("sand"));
        int WATER = Integer.parseInt(request.getParameter("water"));
        int LABOURERS = Integer.parseInt(request.getParameter("labourers"));
        int ComplaintID = Integer.parseInt(request.getParameter("ComplaintID"));
        String Area = request.getParameter("area");
        Priority.PRIORITY_ORDER = PRIORITY_ORDER;
        Priority.CEMENT = CEMENT;
        Priority.SAND_TRIPS = SAND_TRIPS;
        Priority.WATER = WATER;
        Priority.LABOURERS = LABOURERS;
        Priority.ComplaintID = ComplaintID;
        Priority.Area = Area;
        BufferedWriter writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/PRIORITY_ORDER.txt"));
        writer.write(String.valueOf(PRIORITY_ORDER));
        writer.flush();
        writer.close();
        
        writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/CEMENT.txt"));
        writer.write(String.valueOf(CEMENT));
        writer.flush();
        writer.close();
        
        writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/SAND_TRIPS.txt"));
        writer.write(String.valueOf(SAND_TRIPS));
        writer.flush();
        writer.close();
        
        writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/WATER.txt"));
        writer.write(String.valueOf(WATER));
        writer.flush();
        writer.close();
        
        writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/LABOURERS.txt"));
        writer.write(String.valueOf(LABOURERS));
        writer.flush();
        writer.close();
        
        writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/ComplaintID.txt"));
        writer.write(String.valueOf(ComplaintID));
        writer.flush();
        writer.close();
        writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/Area.txt"));
        writer.write(Area);
        writer.flush();
        writer.close();
  
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");    
        PreparedStatement pst = conn.prepareStatement("insert into PRIORITY values ("+PRIORITY_ORDER+","+CEMENT+","+SAND_TRIPS+","+WATER+","+LABOURERS+","+ComplaintID+",\'"+Area+"\');");
        pst.executeUpdate();  
        out.println("Priority Data Updated");
        %><li><a href="supervisor.jsp">Home</a></li><%
        
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>

