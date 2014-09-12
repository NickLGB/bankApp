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

/**
 *
 * @author Administrator
 */
public class branchresult extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/

String name=null,id=null,add=null,mc=null,ct1=null,ct2=null,ct3=null,email=null,locker=null;
String name1 = request.getParameter("branch1");
response.setContentType("text/html");

PrintWriter out = response.getWriter();


String connectionURL = "jdbc:mysql://localhost:3306/bank";
        Connection connection = null;
        PreparedStatement pstatement = null;
        ResultSet rs=null;
        try {

                    Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");
            String queryString = "select * from branches where branchname=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, name1);
             rs=pstatement.executeQuery();

 while(rs.next()){
           name= rs.getString(2);
           id= rs.getString(3);
           add= rs.getString(4);
           mc= rs.getString(5);
           ct1= rs.getString(6);
           ct2= rs.getString(7);
           ct3= rs.getString(8);
           email= rs.getString(9);
           locker= rs.getString(10);
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
                 rs.close();
                pstatement.close();
                connection.close();
               
            } catch (SQLException ex) {
                Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
  response.sendRedirect("/NewBank/Pages/branchesRED.jsp?name="+name+"&id="+id+"&add="+add+"&mc="+mc+"&ct1="+ct1+"&ct2="+ct2+"&ct3="+ct3+"&email="+email+"&locker="+locker);

}


public void destroy() {


}


}
