package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.FileWriter;
import java.io.BufferedWriter;
import RRTS.*;
import java.sql.*;

public final class addPriorityData_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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
        
      out.write("<li><a href=\"supervisor.jsp\">Home</a></li>");

        
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      

      out.write('\n');
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
