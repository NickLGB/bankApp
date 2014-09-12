/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src.java.servlet;


import com.lowagie.text.Chunk;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Image;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletConfig;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class viewtransaction extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, MalformedURLException {
/*
* Get the value of form parameter
*/
String name1 = request.getParameter("q");
String acno=null;
int n=Integer.parseInt(name1);
response.setContentType("text/html");
int i=1;

PrintWriter out = response.getWriter();
Document document = new Document(PageSize.A4, 50, 50, 50, 50);
        



String connectionURL = "jdbc:mysql://localhost:3306/bank";
        Connection connection = null;
        PreparedStatement pstatement = null;
        ResultSet rs=null;
        FileInputStream fis;
        HttpSession s=request.getSession();
        try {

                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    acno=s.getAttribute("username").toString();

                    try {
            PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("c:\\Pdf\\"+acno+".pdf"));
        } catch (DocumentException ex) {
            Logger.getLogger(viewtransaction.class.getName()).log(Level.SEVERE, null, ex);
        }
                document.open();

            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");
            String queryString = "SELECT * FROM cusinfo WHERE acno=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, acno);
            rs=pstatement.executeQuery();
           
            while(rs.next()){
                try {
                    document.add(new Paragraph("Royal Bank"));
                    document.add(new Paragraph("Name:" + rs.getString(1) + " " + rs.getString(2)));
                    document.add(new Paragraph("Account No.:"+rs.getString(4)));
                    document.add(new Paragraph("Branch:"+rs.getString(3)));
                    document.add(new Paragraph("Address of Cusomer:"+rs.getString(9)));
                    document.add(new Paragraph("Your Transaction details..."));
                    document.add(new Chunk("          "));

                } catch (DocumentException ex) {
                    Logger.getLogger(viewtransaction.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            PdfPTable table=new PdfPTable(5);
            table.addCell("Sr.No");
            table.addCell("Transaction ID");
            table.addCell("Date");
            table.addCell("Particulars");
            table.addCell("Balance");
            queryString = "SELECT * FROM transactions WHERE acno=? ORDER BY id DESC LIMIT ?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, acno);
             pstatement.setInt(2, n);
             rs=pstatement.executeQuery();
             out.println("<table border=1 width=100%><tr bgcolor=rgb(198,217,241)>");
             out.println("<td align=center height=40>Transaction ID</td><td align=center height=40>Date</td><td align=center height=40>Particulars</td><td align=center height=40>Balance</td></tr>");

             while(rs.next()){}


             while(rs.previous()){
                 
                 out.print("<tr>");
                  out.print("<td align=center height=20>"+rs.getString(1)+"</td>");
                  out.print("<td align=center height=20>"+rs.getString(3)+"</td>");
                  out.print("<td align=center height=20>"+rs.getString(4)+"</td>");
                  out.print("<td align=center height=20>"+rs.getString(5)+"</td>");
                  out.print("</tr>");
                  table.addCell(Integer.toString(i++));
                  table.addCell(rs.getString(1));
                  table.addCell(rs.getString(3));
                  table.addCell(rs.getString(4));
                  table.addCell(rs.getString(5));
            }

             try {
                document.add(new Paragraph(""));
                document.add(table);
            } catch (DocumentException ex) {
                Logger.getLogger(viewtransaction.class.getName()).log(Level.SEVERE, null, ex);
            }
             
             document.close();
              out.println("Click Submit to get this information on your system machine.");
              out.println("<form action='/NewBank/getpdf' method=post target='_blank'>");
              out.println("<input type=image value=SUBMIT src='images/submit.gif' />");
               out.println("</form><br/><br/>");
         
   

          
        }
        catch(SQLException ex)
        {}
        catch (InstantiationException ex) {
                    Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
                }
        catch (ClassNotFoundException ex) {
                Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
            }

 
finally {
            try {
                rs.close();
                pstatement.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

 // out.print("<a href=c:/my.pdf target='_blank'>click here</a> to get document into your system machine.");
}


public void destroy() {


}


}
