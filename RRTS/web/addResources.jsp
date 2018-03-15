<%@page import="RRTS.*"%>
<%@ page import ="java.sql.*" %>
<%
    try{  
        int CEMENT = Integer.parseInt(request.getParameter("cement"));
        int SAND_TRIPS= Integer.parseInt(request.getParameter("sand"));
        int WATER = Integer.parseInt(request.getParameter("water"));
        int LABOURERS = Integer.parseInt(request.getParameter("labourers"));
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");
        PreparedStatement pst2 = conn.prepareStatement("SELECT * FROM RESOURCES;");
        ResultSet rs = pst2.executeQuery();
        rs.next();
        int Water = rs.getInt("WATER");
        PreparedStatement pst = conn.prepareStatement("UPDATE RESOURCES SET CEMENT = "+CEMENT+",SAND_TRIPS="+SAND_TRIPS+",WATER="+WATER+",LABOURERS ="+LABOURERS+" where WATER = "+Water+";");
        pst.executeUpdate();  
        out.println("Priority Data Updated");
        %><li><a href="supervisor.jsp">Home</a></li><%
        
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again"+e);       
   }      
%>


