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
public class GoldenCard extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/
String firstname = request.getParameter("firstname");
 String lastname=request.getParameter("lastname");
   String annualIncome = request.getParameter("annualIncome");
   String sex = request.getParameter("sex");
    String add =request.getParameter("add");
	String mob = request.getParameter("mob");
	String docSub = request.getParameter("docSub");

        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
         Date date = new Date();
         String date1=dateFormat.format(date);

        String name1=null,msg=null,acno1=null,msg1=null;
        double bal=0;
        if(annualIncome.equalsIgnoreCase("belowtwolack"))
            annualIncome="Below 2 lacks.";
        if(annualIncome.equalsIgnoreCase("betTwoSix"))
            annualIncome="Between 2 Lacks-6 Lacks.";
        if(annualIncome.equalsIgnoreCase("betSixTen"))
            annualIncome="Between 6 Lacks-10 Lacks.";
        if(annualIncome.equalsIgnoreCase("betTenThirty"))
            annualIncome="Between 10 Lacks-30 Lacks.";
        if(annualIncome.equalsIgnoreCase("abovethirtyLacks"))
            annualIncome="Above 30 Lacks.";


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

            String queryString = "select * from golden where acno=?";


            pstatement = connection.prepareStatement(queryString);
            pstatement.setString(1,acno);
             rs= pstatement.executeQuery();

             while(rs.next()){

                 acno1=rs.getString(4);
             }
             if(acno.equals(acno1)){
                     msg="<br>Sorry <br><br>For this account Golden Card already issued.<br><br>";
             }
 else{
                 acno=s.getAttribute("username").toString();
            queryString = "select * from cusinfo where acno=?";


            pstatement = connection.prepareStatement(queryString);
            pstatement.setString(1,acno);
             rs= pstatement.executeQuery();

             while(rs.next()){
                 name1=rs.getString(1);
                 bal=Double.parseDouble(rs.getString(7));
             }
             if(bal<15000){
                 msg="Dear "+name1+",<br>Your balance is not sufficient to apply this card.<br>";
             }
 else{
             bal=bal-15000;
            queryString = "insert into golden(firstname,lastname,acno,aincome,sex,address,mob,docsub) values (?,?,?,?,?,?,?,?)";

            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, firstname);
             pstatement.setString(2, lastname);
             pstatement.setString(3, acno);
             pstatement.setString(4, annualIncome);
             pstatement.setString(5, sex);
             pstatement.setString(6, add);
             pstatement.setString(7, mob);
             pstatement.setString(8, docSub);
           
            pstatement.executeUpdate();

            queryString = "update cusinfo set balance=? where acno=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,Double.toString(bal));
             pstatement.setString(2,acno);

             pstatement.executeUpdate();
          msg="Dear "+name1+",<br><br>You will get Royal bank's golden card in 15 days by post.<br><br>Thank you for aplying for this service.";

           msg1="Golden card issued, amount withdrawl Rs. 15000";

             queryString = "INSERT INTO transactions (acno,timedate,activity,balance) VALUES(?,?,?,?)";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,acno);
              pstatement.setString(2,date1);
             pstatement.setString(3,msg1);
             pstatement.setString(4,Double.toString(bal));
             pstatement.executeUpdate();
            }
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
 response.sendRedirect("/NewBank/Pages/messagesRED.jsp?msg="+msg);
}


public void destroy() {


}


}
