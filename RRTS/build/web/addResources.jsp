<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="RRTS.*"%>
<%@ page import ="java.sql.*" %>
<%
    try{  
        int CEMENT = Integer.parseInt(request.getParameter("cement"));
        int SAND_TRIPS= Integer.parseInt(request.getParameter("sand"));
        int WATER = Integer.parseInt(request.getParameter("water"));
        int LABOURERS = Integer.parseInt(request.getParameter("labourers"));
        Resources.CEMENT = CEMENT;
        Resources.SAND_TRIPS = SAND_TRIPS;
        Resources.WATER = WATER;
        Resources.LABOURERS = LABOURERS;
        BufferedWriter writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/CEMENT.txt"));
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
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");
        PreparedStatement pst2 = conn.prepareStatement("SELECT * FROM RESOURCES;");
        ResultSet rs = pst2.executeQuery();
        rs.next();
        int Water = rs.getInt("WATER");
        PreparedStatement pst = conn.prepareStatement("UPDATE RESOURCES SET CEMENT = "+CEMENT+",SAND_TRIPS="+SAND_TRIPS+",WATER="+WATER+",LABOURERS ="+LABOURERS+" where WATER = "+Water+";");
        pst.executeUpdate();  
        out.println("Resources Updated");
        %><li><a href="supervisor.jsp">Home</a></li><%
        
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again"+e);       
   }      
%>


