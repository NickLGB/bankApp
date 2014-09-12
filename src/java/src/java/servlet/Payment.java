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
public class Payments extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/
        String name1=null,msg=null,amt=null,msg1=null;
        double balance=0,bill=0;
String ser = request.getParameter("ser");
String cusno = request.getParameter("cusno");
String amount= request.getParameter("amount");
String code = request.getParameter("code");
String resno = request.getParameter("resno");
String sertype = request.getParameter("sertype");

if(sertype!=null)
    ser=sertype;


DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
         Date date = new Date();
         String date1=dateFormat.format(date);

if(code==null)
    resno="";
else
    resno=code+"-"+resno;

bill=Double.parseDouble(amount);


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

                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                    String acno=s.getAttribute("username").toString();

            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");
            String queryString = "select * from cusinfo where acno=?";


            pstatement = connection.prepareStatement(queryString);
            pstatement.setString(1,acno);
             rs= pstatement.executeQuery();

             while(rs.next()){
                 name1=rs.getString(1);
                 msg=rs.getString(7);
             }

             balance=Double.parseDouble(msg);
             msg="";
             if(bill<balance){

                 balance=balance-bill;
                 amt=Double.toString(balance);
             
                 queryString = "insert into paybill (acno,typeser,cusno,amount,stdno) values(?,?,?,?,?)";

                 pstatement = connection.prepareStatement(queryString);
                 pstatement.setString(1,acno);
                 pstatement.setString(2,ser);
                 pstatement.setString(3,cusno);
                 pstatement.setString(4,amount);
                 pstatement.setString(5,resno);
                 pstatement.executeUpdate();
            
                 msg="<br>Mr."+name1+"<br><br/>Your amount received sucessfully.";
                 if(sertype==null)
                    msg=msg+"<br><br>your bill will be paid in 12hours.";
                 else
                     msg=msg+"<br><br>your recharge will be available in 12hours.";

                 connection = DriverManager.getConnection(connectionURL, "root", "Prasad");
                 queryString = "update cusinfo set balance=? where acno=?";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,amt);
             pstatement.setString(2,acno);

             pstatement.executeUpdate();
             if(sertype==null)
                  msg1=ser+" bill paid of amount Rs."+amount;
             else
                 msg1=ser+" Recharge done of amount Rs."+amount;

             queryString = "INSERT INTO transactions (acno,timedate,activity,balance) VALUES(?,?,?,?)";
            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,acno);
              pstatement.setString(2,date1);
             pstatement.setString(3,msg1);
              pstatement.setString(4,amt);
             pstatement.executeUpdate();
             }
 else
     msg="<br>SORRY<br><br>Your balance is insufficient to pay bill.";



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
