/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package src.java.servlet;

import java.io.File;
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
public class logout extends HttpServlet {
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

String acno=s.getAttribute("username").toString();
File file=new File("c:\\Pdf\\"+acno+".pdf");

if(file.exists()){
    file.delete();
}

s.removeAttribute("username");
s.removeAttribute("name");
s.removeAttribute("mob");
s.removeAttribute("add");
s.removeAttribute("lname");
s.removeAttribute("email");
String msg="You have logout successfully.";
response.sendRedirect("/NewBank/Pages/services.jsp?msg="+msg);




    }


public void destroy() {


}
@Override
    public String getServletInfo() {
        return "Short description";
    }// 


}
