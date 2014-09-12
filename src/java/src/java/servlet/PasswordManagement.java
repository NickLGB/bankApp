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
public class PasswordManagement extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/
String pass1 = request.getParameter("pass1");
String pass2 = request.getParameter("pass2");

String acno=null,oldpass=null,msg=null;



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
        ResultSet rs=null;
        try {
               acno= s.getAttribute("username").toString();
                    Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");



            String queryString = "select * from cusinfo where acno=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, acno);
             rs=pstatement.executeQuery();

 while(rs.next()){
           oldpass= rs.getString("pass");
           }
             if(oldpass.equals(pass1)){
                queryString = "update cusinfo set pass=? where acno=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, pass2);
             pstatement.setString(2, acno);
           pstatement.executeUpdate();
           msg="<br/>Your Password changed successfully.<br/>";
             }
 else{
                 msg="<br/>Please enter correct Password.<br/>";
 }


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
