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
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletConfig;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class Login extends HttpServlet {
    @Override
public void init(ServletConfig config) throws ServletException {
super.init(config);
}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/*
* Get the value of form parameter
*/
String name = request.getParameter("user");
String pass = request.getParameter("pass1");
String imagename = request.getParameter("imagename");
String capval = request.getParameter("capval");
String status=null,pass1=null,msg="",name1=null,add=null,capval1=null;
String lastname=null,mobile=null,email=null,image=null;
int c=-1,z=-1;
Random r=new Random();
int p=(r.nextInt(10)+1);
/*String welcomeMessage = "Welcome "+name;*/
/*
* Set the content type(MIME Type) of the response.
*/
response.setContentType("text/html");

PrintWriter out = response.getWriter();

String connectionURL = "jdbc:mysql://localhost:3306/bank";
        Connection connection = null;
        PreparedStatement pstatement = null;
        ResultSet rs=null;
        HttpSession s=request.getSession(true);
        try {

                    Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");
            String queryString = "select * from cusinfo where acno=?";

            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, name);
             rs= pstatement.executeQuery();
            while(rs.next())
            {
            pass1=rs.getString(6);
            status=rs.getString(8);
            name1=rs.getString(1);
            add=rs.getString("address");
            mobile=rs.getString("mobile");
            lastname=rs.getString("lastname");
            email=rs.getString("email");
            c=Integer.parseInt(rs.getString("count"));
            }
           if(c<=2){
            if(pass1!=null && status.equalsIgnoreCase("y") && pass.equals(pass1))
            {
                s.setAttribute("username",name);
                s.setAttribute("name", name1);
                s.setAttribute("add", add);
                s.setAttribute("mob", mobile);
                s.setAttribute("lname",lastname);
                s.setAttribute("email",email);
                c=0;
                queryString = "update cusinfo set count=? where acno=?";

            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, Integer.toString(c));
             pstatement.setString(2,name);
            pstatement.executeUpdate();
                response.sendRedirect("/NewBank/Pages/resultRED.jsp?name1="+name1);
            }
            else
            {
                msg="Username or Pasword incorrect";
                c=c+1;
                queryString = "update cusinfo set count=? where acno=?";

            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, Integer.toString(c));
             pstatement.setString(2,name);
            pstatement.executeUpdate();
             response.sendRedirect("/NewBank/Pages/services.jsp?msg="+msg);
            }
            }
 else{
         if(imagename !=null){
             queryString = "select * from captcha where imgname=?";

            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1,imagename);
           rs=pstatement.executeQuery();
           while(rs.next()){
               capval1=rs.getString("imgcode");
           }
           z=1;
         }
          else
             z=0;
         if(pass1!=null && status.equalsIgnoreCase("y") && pass.equals(pass1) && capval.equalsIgnoreCase(capval1) && imagename !=null){
             z=1;
         }
 else
     z=0;
         if(z==1){
                s.setAttribute("username",name);
                s.setAttribute("name", name1);
                s.setAttribute("add", add);
                s.setAttribute("mob", mobile);
                s.setAttribute("lname",lastname);
                s.setAttribute("email",email);
                c=0;
                queryString = "update cusinfo set count=? where acno=?";

            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, Integer.toString(c));
             pstatement.setString(2,name);
            pstatement.executeUpdate();
                response.sendRedirect("/NewBank/Pages/resultRED.jsp?name1="+name1);
         }
 else{
        msg="Username or Pasword incorrect";
              queryString = "select * from captcha where id=?";

            pstatement = connection.prepareStatement(queryString);
             pstatement.setString(1, Integer.toString(p));
                 rs=pstatement.executeQuery();
                 while(rs.next()){
                     image=rs.getString("imgname");
                 }
             response.sendRedirect("/NewBank/Pages/services.jsp?msg="+msg+"&image="+image);
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
                pstatement.close();
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(leavenohi.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
 
}


public void destroy() {


}


}
