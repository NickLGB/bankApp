package src.java.servlet;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.logging.Logger;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class PDFGenerate extends HttpServlet {

    //Initialize global variables
    String fileName="";

    private static final Logger log = Logger.getLogger(getpdf.class.getName());

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    //Process the HTTP Get request
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        doPost(request,response);
    }

    //Process the HTTP Post request
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletOutputStream outStream = response.getOutputStream();
        HttpSession s=request.getSession();
        String acno=s.getAttribute("username").toString();
        System.out.print(acno);
        fileName=acno+".pdf";

        String filePath = "C:\\Pdf\\";
        File f=new File(filePath, fileName);



     response.setContentType( "application/pdf" );

        response.setContentLength((int)f.length());
      //   response.setHeader("Content-Disposition","attachment; filename=\"SecurityPatterns.pdf\"");

     //   response.setHeader("Cache-Control", "no-cache");
        byte[] buf = new byte[8192];
        FileInputStream inStream = new FileInputStream(f);
        int sizeRead = 0;
        while ((sizeRead = inStream.read(buf, 0, buf.length)) > 0) {

            outStream.write(buf, 0, sizeRead);
        }
        inStream.close();
        outStream.close();

    }

    //Get Servlet information
    public String getServletInfo() {
        return "DownloadServlet Information";
    }
}