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
public class viewbalance extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);

}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/

/*String welcomeMessage = "Welcome "+name;*/
/*
* Set the content type(MIME Type) of the response.
*/
response.setContentType("text/html");

PrintWriter out = response.getWriter();

HttpSession s = request.getSession(true);
String acno=null,amount=null,name=null;

String connectionURL = "jdbc:mysql://localhost:3306/bank";
        Connection connection = null;
        PreparedStatement pstatement = null;
        ResultSet rs = null;
        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            acno=s.getAttribute("username").toString();
            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");
            String queryString = "select * from cusinfo where acno=?";
            pstatement = connection.prepareStatement(queryString);
            pstatement.setString(1, acno);
            rs = pstatement.executeQuery();

            while (rs.next()) {
                name=rs.getString("firstname")+" "+rs.getString("lastname");
                amount=rs.getString("balance");
               
            }
        }
        catch (SQLException ex) {
        } catch (InstantiationException ex) {
            Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                rs.close();
                pstatement.close();
                connection.close();

            } catch (SQLException ex) {
                Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
response.sendRedirect("/NewBank/Pages/viewbalRED.jsp?name="+name+"&bal="+amount);




    }


public void destroy() {


}
@Override
    public String getServletInfo() {
        return "Short description";
    }//


}
