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
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 * @author Administrator
 */
public class FixedDeposit extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/
String name = request.getParameter("name");
 String nominee=request.getParameter("nominee");
  String relnominee = request.getParameter("relnominee");
   double pamount = Double.parseDouble(request.getParameter("pamount"));
    String period = request.getParameter("period");
    String type = request.getParameter("type");
    String testinput = request.getParameter("testinput");

    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
         Date date = new Date();
         String date1=dateFormat.format(date);

        String type1=null,total1=null,msg1=null,add=null,branch=null,msg=null;
        double bal=0,total=0;

      if(type.equals("once"))
            type1="credit balance after expire.";
        else
            type1="Renew principle amount after expire.";

        


/*String welcomeMessage = "Welcome "+name;*/
/*
* Set the content type(MIME Type) of the response.
*/
response.setContentType("text/html");

PrintWriter out = response.getWriter();

String connectionURL = "jdbc:mysql://localhost:3306/bank";
        Connection connection = null;
        PreparedStatement pstatement = null;
        HttpSession s=request.getSession();
        ResultSet rs=null;
        try {
                      String acno=s.getAttribute("username").toString();
                    Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");

            String queryString = "select * from cusinfo where acno=?";


            pstatement = connection.prepareStatement(queryString);
            pstatement.setString(1,acno);
             rs= pstatement.executeQuery();

             while(rs.next()){

                 add=rs.getString("address");
                 branch=rs.getString(3);
                 bal=Double.parseDouble(rs.getString("balance"));
             }
       if(pamount>=bal){
           msg="Your balance is insufficient to apply FD.";
          
       }
 else{
              bal=bal-pamount;
               total=pamount+(pamount*(Double.parseDouble(period))*8.25)/1200;
               total1=Double.toString(total);

              queryString = "insert into fixeddeposit (fullname,acno,nominee,relnominee,typeofFD,principle,total,dateFD,period) values(?,?,?,?,?,?,?,?,?)";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,name);
             pstatement.setString(2,acno);
             pstatement.setString(3,nominee);
             pstatement.setString(4,relnominee);
             pstatement.setString(5,type);
             pstatement.setString(6,Double.toString(pamount));
             pstatement.setString(7,total1);
             pstatement.setString(8,testinput);
             pstatement.setString(9,period);
             pstatement.executeUpdate();
             
            queryString = "update cusinfo set balance=? where acno=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,Double.toString(bal));
             pstatement.setString(2,acno);
             pstatement.executeUpdate();

          msg1="Fixed Deposit issued, amount withdrawl Rs. "+pamount;

             queryString = "INSERT INTO transactions (acno,timedate,activity,balance) VALUES(?,?,?,?)";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,acno);
              pstatement.setString(2,date1);
             pstatement.setString(3,msg1);
             pstatement.setString(4,Double.toString(bal));
             pstatement.executeUpdate(); 
         
        }}
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
if(pamount>bal)
     response.sendRedirect("/NewBank/Pages/messagesRED.jsp?msg="+msg);
else
 response.sendRedirect("/NewBank/Pages/fdRED.jsp?name="+name+"&add="+add+"&branch="+branch+"&type="+type1+"&dep="+pamount+"&period="+period+"&total="+total1+"&date="+testinput);
}


public void destroy() {


}


}
