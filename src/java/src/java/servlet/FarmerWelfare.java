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
public class FarmerWelfare extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/
 String name = request.getParameter("name");
 String District=request.getParameter("District");
 String conno = request.getParameter("conno");
 String lanHold = request.getParameter("lanHold");
String add = request.getParameter("add");
String State = request.getParameter("State");
String Loan_Purpose = request.getParameter("Loan_Purpose");
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
        try {

                    Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");
            String queryString = "INSERT INTO farmerwelfare(fname,address,mobile,land,dist,state,purpose) VALUES (?,?,?,?,?,?,?)";

            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, name);
             pstatement.setString(2, add);
             pstatement.setString(3, conno);
             pstatement.setString(4, lanHold);
             pstatement.setString(5, District);
             pstatement.setString(6, State);
             pstatement.setString(7, Loan_Purpose);
             pstatement.executeUpdate();

             msg="<br/>Dear "+name+",<br/><br/>we will send our reprwsentative for "+Loan_Purpose+" loan soon.";


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
