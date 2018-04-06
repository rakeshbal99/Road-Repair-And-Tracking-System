<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
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
        Complain.Area = Area;
        Complain.Comments = Comments;
        Complain.Location = Location;
        Complain.Telephone = Telephone;
        Complain.Description = Description;
        BufferedWriter writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/Location.txt"));
        writer.write(Location);
        writer.flush();
        writer.close();
        
        writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/Telephone.txt"));
        writer.write(Telephone);
        writer.flush();
        writer.close();
        
        writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/Description.txt"));
        writer.write(Description);
        writer.flush();
        writer.close();
        
        writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/Comments.txt"));
        writer.write(Comments);
        writer.flush();
        writer.close();
        
        writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/Area.txt"));
        writer.write(Area);
        writer.flush();
        writer.close();
        
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");    
        PreparedStatement pst = conn.prepareStatement("SELECT * FROM COMPLAINTS ORDER BY ComplaintID DESC LIMIT 1;");
        ResultSet rs = pst.executeQuery();
        rs.next();
        int ComplaintID = rs.getInt("ComplaintID");
        pst = conn.prepareStatement("insert into COMPLAINTS values (\'"+Name+"\',\'"+Email+"\',\'"+Telephone+"\',\'"+RoadName+"\',\'"+Location+"\',\'"+Area+"\',\'"+Description+"\',\'"+Comments+"\',"+(ComplaintID+1)+");");
        pst.executeUpdate();  
        out.println("Complaint Lodged. Thanks a lot for informing us. The ComplaintID is:"+(ComplaintID+1));
        %><li><a href="user.jsp">Home</a></li><%
        
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
