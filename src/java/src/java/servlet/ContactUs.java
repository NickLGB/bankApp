/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
public class query extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/
 String name = request.getParameter("name");
 String acno="";
 String conno = request.getParameter("conno");
 String add = request.getParameter("add");
String product = request.getParameter("product");
String complain = request.getParameter("complain");
String btn = "No";
String msg=null;




/*String welcomeMessage = "Welcome "+name;*/
/*
* Set the content type(MIME Type) of the response.
*/
response.setContentType("text/html");

PrintWriter out = response.getWriter();
/*
* Write the HTML to the response
*/
/*out.println("<html>");
out.println("<head>");
out.println("<title> A very simple servlet example</title>");
out.println("</head>");
out.println("<body>");
out.println("<h1>"+welcomeMessage+"</h1>");
out.println("<a href=/Sample/form.jsp>"+"Click here to go back to input page "+"</a>");
out.println("</body>");
out.println("</html>");
out.close();*/
String connectionURL = "jdbc:mysql://localhost:3306/bank";
        Connection connection = null;
        PreparedStatement pstatement = null;
        HttpSession s=request.getSession();
        try {
          
                   if(s.getAttribute("username")!=null){
                       acno=s.getAttribute("username").toString();
                       btn="Yes";
                   }
                    Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");
            String queryString = "INSERT INTO query1(fullname,address,acno,mob,product,queries,cusornot) VALUES (?,?,?,?,?,?,?)";

            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, name);
             pstatement.setString(2, add);
             pstatement.setString(3, acno);
             pstatement.setString(4, conno);
             pstatement.setString(5, product);
             pstatement.setString(6, complain);
             pstatement.setString(7, btn);
            pstatement.executeUpdate();

        msg="<br/>Your query successfully taken.<br/><br/>we will solve your query soon.<br/>";
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
                pstatement.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
 response.sendRedirect("/NewBank/Pages/messagesRED.jsp?msg="+msg);
}


public void destroy() {


}


}
