package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<HEAD>\n");
      out.write("    <TITLE>insert data using prepared statement </TITLE>\n");
      out.write("</HEAD>\n");
      out.write("\n");
      out.write("<BODY bgcolor=\"#ffffcc\">\n");
      out.write("  <font size=\"+3\" color=\"green\"><br>Welcome in www.roseindia.net !</font>\n");
      out.write("  <FORM action=\"newjsp.jsp\" method=\"get\">\n");
      out.write("    <TABLE style=\"background-color: #ECE5B6;\" WIDTH=\"30%\" >\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t  <tr>\n");
      out.write("\t     <th width=\"50%\">Phone</th>\n");
      out.write("\t\t <TD width=\"50%\"><input type=\"file\" name=\"image\"></TD>\n");
      out.write("\t  </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t  <tr>\n");
      out.write("\t      <th></th>\n");
      out.write("\t\t  <TD width=\"50%\"><INPUT TYPE=\"submit\" VALUE=\"submit\"></TD>\n");
      out.write("\t  </tr>\n");
      out.write("   </TABLE>\n");

  String prasad=request.getParameter("image");
  Connection con=null;
  ResultSet rs=null;
  PreparedStatement psmt=null;
  FileInputStream fis;
  String url="jdbc:mysql://localhost:3306/student";
  try{
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  con=DriverManager.getConnection(url,"root","Prasad");


  File image=new File("C:/Documents and Settings/Administrator/Desktop/"+prasad);

  psmt=con.prepareStatement("insert into inimage(name,city,image)"+"values(?,?,?)");
  psmt.setString(1,"Prasad7");
  psmt.setString(2,"Wasington D.C.");

  fis=new FileInputStream(image);

  psmt.setBinaryStream(3, (InputStream)fis, (int)(image.length()));
  int s = psmt.executeUpdate();

  if(s>0) {
 
      out.write("\n");
      out.write(" <b><font color=\"Blue\">\n");
      out.write(" ");
 out.println("Image Uploaded successfully !"); 
      out.write("\n");
      out.write(" </font></b>\n");
      out.write(" ");

 }
else {
out.println("unsucessfull to upload image."+prasad);
  }
  con.close();
  psmt.close();
}catch(Exception ex){
out.println("Error in connection : "+ex+" "+prasad);
}


      out.write("\n");
      out.write("\n");
      out.write(" </FORM>\n");
      out.write(" </body>\n");
      out.write(" </html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
