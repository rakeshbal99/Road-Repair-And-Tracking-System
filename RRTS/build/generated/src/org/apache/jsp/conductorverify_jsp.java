package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.FileWriter;
import java.io.BufferedWriter;
import RRTS.*;
import java.sql.*;

public final class conductorverify_jsp extends org.apache.jasper.runtime.HttpJspBase
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
        String Username = request.getParameter("unamec");   
        String Password = request.getParameter("pwdc");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/RRTS?" + "user=root&password=temps510");    
        PreparedStatement pst = conn.prepareStatement("Select Username,Password from CONDUCTOR where Username=? and Password=?;");
        pst.setString(1, Username);
        pst.setString(2, Password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()) {          
           out.println("Valid login credentials"); 
           Conductor.uname = Username;
           out.println(Username);
            BufferedWriter writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/username.txt"));
            writer.write(User.uname);
            writer.flush();
            writer.close();
            writer = new BufferedWriter(new FileWriter("/home/rakesh/RRTS/status.txt"));
            writer.write("logged in");
            writer.flush();
            writer.close();
      out.write("\n");
      out.write("            ");
      if (true) {
        _jspx_page_context.forward("conductor.jsp");
        return;
      }
      out.write("\n");
      out.write("        ");

        }
        else {
           out.println("Invalid login credentials");
           
      out.write("Authentication failure.\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "index.jsp", out, false);
      out.write("\n");
      out.write("            ");

        }
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again"+e);       
   }      

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
