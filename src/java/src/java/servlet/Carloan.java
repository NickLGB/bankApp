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
public class Carloan extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/
String firstname = request.getParameter("firstname");
String add = request.getParameter("add");
String mob= request.getParameter("mobile");
String code = request.getParameter("code");
String resno = request.getParameter("resno");
String lastname = request.getParameter("lastname");
String email = request.getParameter("email");
String btn= "No",acno="";
String insuranceservice=request.getParameter("insuranceservice");

if(code.equals("STD CODE") || resno.equals("Telephone Number")){
    code="";
    resno="";
}



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
            String queryString = "INSERT INTO carinsurance(cusOrnot,firstname,lastname,address,email,mob,stdcode,resno,service,acno) VALUES (?,?,?,?,?,?,?,?,?,?)";

            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, btn);
             pstatement.setString(2, firstname);
             pstatement.setString(3, lastname);
             pstatement.setString(4, add);
             pstatement.setString(5, email);
             pstatement.setString(6, mob);
             pstatement.setString(7, code);
             pstatement.setString(8, resno);
             pstatement.setString(9,insuranceservice);
             pstatement.setString(10,acno);
        

            pstatement.executeUpdate();


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
 response.sendRedirect("/NewBank/Pages/applycarloanRED.jsp?fname="+firstname+"&lastn="+lastname+"&title=Dear&ser="+insuranceservice);
}


public void destroy() {


}


}
