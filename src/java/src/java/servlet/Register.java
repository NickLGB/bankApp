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
public class register extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
         * Get the value of form parameter
         */
        String msg = "";
        String fname1 = null, lname1 = null, dob1 = null, flag = null ,vcode1 = null;
        String fname = request.getParameter("firstname");
        String lname = request.getParameter("lastname");
        String dob = request.getParameter("testinput");
        String pass = request.getParameter("pass");
        String acno = request.getParameter("acno");
        String vcode = request.getParameter("vcode");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();


        String connectionURL = "jdbc:mysql://localhost:3306/bank";
        Connection connection = null;
        PreparedStatement pstatement = null;
        ResultSet rs = null;
        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            connection = DriverManager.getConnection(connectionURL, "root", "Prasad");
            String queryString = "select * from cusinfo where acno=?";
            pstatement = connection.prepareStatement(queryString);
            pstatement.setString(1, acno);
            rs = pstatement.executeQuery();

            while (rs.next()) {
                fname1 = rs.getString(1);
                lname1 = rs.getString(2);
                dob1 = rs.getString(5);
                flag = rs.getString(8);
                vcode1=rs.getString("vcode");
            }
            if (fname1 == null) {
                msg = "<br>No Such Account.<br>";
            } else {
                if (flag.equalsIgnoreCase("n")) {
                    if (fname.equalsIgnoreCase(fname1)) {
                    } else {
                        msg = msg + "First name not matched with database<br/><br/>";
                    }

                    if (lname.equalsIgnoreCase(lname1)) {
                    } else {
                        msg = msg + "Last name not matched with database<br/><br/>";
                    }

                    if (dob.equalsIgnoreCase(dob1)) {
                    } else {
                        msg = msg + "Date of Birth not matched with database<br/><br/>";
                    }

                    if (vcode.equals(vcode1)) {
                    } else {
                        msg = msg + "Please check verification code.<br/><br/>";
                    }

                    if (fname.equalsIgnoreCase(fname1) && lname.equalsIgnoreCase(lname1) && dob.equalsIgnoreCase(dob1) && vcode.equals(vcode1)) {
                        msg = "Your account successfully created.<br><br>Now you can use Royal Bank's E-banking Service.<br/>";
                        queryString = "UPDATE cusinfo SET pass=?,accre=? WHERE acno=?;";
                        pstatement = connection.prepareStatement(queryString);
                        pstatement.setString(1, pass);
                        pstatement.setString(2, "y");
                        pstatement.setString(3, acno);
                        pstatement.executeUpdate();
                    }
                } else {
                    msg = "Your have already created your account.<br><br>For any query visit our nearest branch.<br/>";
                }

            }

        } catch (SQLException ex) {
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

        response.sendRedirect("/NewBank/Pages/messagesRED.jsp?msg=" + msg);

    }

    public void destroy() {
    }
}
