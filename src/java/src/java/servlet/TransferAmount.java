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
public class TransferAmount extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/
String msg="",msg1="",msg2="";
String fname1=null,lname1=null,payer=null,Amt=null,Amt1=null;
double amt=0,amt1=0;
String fname = request.getParameter("firstname");
String lname=request.getParameter("lastname");
double amount=Double.parseDouble(request.getParameter("amount"));
String acno=request.getParameter("acno");

        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
         Date date = new Date();
         String date1=dateFormat.format(date);

response.setContentType("text/html");

PrintWriter out = response.getWriter();


String connectionURL = "jdbc:mysql://localhost:3306/bank";
        Connection connection = null;
        PreparedStatement pstatement = null;
        ResultSet rs=null;
        HttpSession s=request.getSession();
        try {
                   payer=s.getAttribute("username").toString();
                    Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");
            String queryString = "select * from cusinfo where acno=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, acno);
             rs=pstatement.executeQuery();

 while(rs.next()){
           fname1=rs.getString(1);
           lname1=rs.getString(2);
           amt=Double.parseDouble(rs.getString(7));
           }
            queryString = "select * from cusinfo where acno=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,payer);
             rs=pstatement.executeQuery();

             while(rs.next()){
                 amt1=Double.parseDouble(rs.getString(7));
             }
             if(fname1==null || lname1==null)
                 msg="<br/>No such account is present.<br>check Payee's account number.<br/>";
             else{
                 if(!fname1.equalsIgnoreCase(fname))
                     msg=msg+"<br/>First name of payee is not matched with our database.<br/>";
                 
                 if(!lname1.equalsIgnoreCase(lname))
                     msg=msg+"<br/>Last name of payee is not matched with our database.<br/>";

                 
                 if(lname1.equalsIgnoreCase(lname) && fname1.equalsIgnoreCase(fname) && amt1>=amount){
                     amt1=amt1-amount;
                     amt=amt+amount;
                     
                     Amt1=Double.toString(amt1);
                     
                   
                     Amt=Double.toString(amt);


                     queryString = "update cusinfo set balance=? where acno=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,Amt1);
             pstatement.setString(2,payer);

             pstatement.executeUpdate();


                     queryString = "update cusinfo set balance=? where acno=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,Amt);
             pstatement.setString(2,acno);
             pstatement.executeUpdate();

             msg="<br/>Your amount is successfully transfered.<br/>";
             msg1="Rs."+amount+"/- transfered to "+acno;
             msg2="Rs."+amount+"/- received from "+payer;


             queryString = "INSERT INTO transactions (acno,timedate,activity,balance) VALUES(?,?,?,?)";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,acno);
              pstatement.setString(2,date1);
             pstatement.setString(3,msg2);
             pstatement.setString(4,Amt);
             pstatement.executeUpdate();

             queryString = "INSERT INTO transactions (acno,timedate,activity,balance) VALUES(?,?,?,?)";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,payer);
             pstatement.setString(2,date1);
             pstatement.setString(3,msg1);
             pstatement.setString(4,Amt1);
             pstatement.executeUpdate();
                 }
                 
               if(amt1<amount){
                     msg=msg+"<br/>Your amount is not sufficient to transfer.";
 }
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

  response.sendRedirect("/NewBank/Pages/messagesRED.jsp?msg="+msg);

}


public void destroy() {


}


}
