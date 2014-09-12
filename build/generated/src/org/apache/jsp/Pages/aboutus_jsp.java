package org.apache.jsp.Pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class aboutus_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>Royal Bank | The Bank For A Changing World</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/css/global.css\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <!--[if IE 6]><link rel=\"stylesheet\" href=\"css/ie6.css\" type=\"text/css\" media=\"all\" /><![endif]-->\n");
      out.write("        <script src=\"");
      out.print(request.getContextPath());
      out.write("/js/jquery-1.3.2.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"");
      out.print(request.getContextPath());
      out.write("/js/jquery-fns.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/js/jquery-1.2.3.pack.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/js/jquery.jcarousel.pack.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            jQuery(document).ready(function() {\n");
      out.write("                jQuery('#mycarousel').jcarousel({\n");
      out.write("                    scroll: 1,\n");
      out.write("                    animation: \"slow\",\n");
      out.write("                    wrap: \"both\"\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Shell -->\n");
      out.write("        <div class=\"shell\">\n");
      out.write("            <!-- Box -->\n");
      out.write("            <div class=\"box\">\n");
      out.write("                <div class=\"top\">&nbsp;</div>\n");
      out.write("\n");
      out.write("                <div class=\"cnt\">\n");
      out.write("                    <!-- Header -->\n");
      out.write("                    <div id=\"header\">\n");
      out.write("                        <div class=\"cl\">&nbsp;</div>\n");
      out.write("                        <div class=\"a-side-header\">\n");
      out.write("                            <span class=\"fl\">Language:</span> <a href=\"#\" class=\"lang\">English</a> <span class=\"sep notext\">&nbsp;</span> <a href=\"#\" class=\"sitemap\">Sitemap</a>\n");
      out.write("                            <div id=\"buttons\">\n");
      out.write("                                <a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/index.jsp\"><img src=\"");
      out.print(request.getContextPath());
      out.write("/css/images/home.jpg\" alt=\"Home\" /></a>\n");
      out.write("                                <a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/contactus.html\"><img src=\"");
      out.print(request.getContextPath());
      out.write("/css/images/mail.jpg\" alt=\"Mail\" /></a>\n");
      out.write("                                <a href=\"login.html\"><img src=\"");
      out.print(request.getContextPath());
      out.write("/css/images/secure.jpg\" alt=\"Secure Login\" /></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- Logo -->\n");
      out.write("                        <h1 id=\"logo\"><a href=\"#\">Business Company</a></h1>\n");
      out.write("                        <!-- END Logo -->\n");
      out.write("                        <div class=\"cl\">&nbsp;</div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- END Header -->\n");
      out.write("                    <!-- Navigation -->\n");
      out.write("                    <div id=\"navigation\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/index.jsp\">Home</a></li>\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/aboutus.jsp\"  class=\"active\">About Us</a></li>\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/services.jsp\">Services</a></li>\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/applyol.jsp\">Buy Online</a></li>\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/gallery.jsp\">Gallery</a></li>\n");
      out.write("                            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/contact.jsp\">Contact</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                        <div id=\"search\">\n");
      out.write("                            <form action=\"#\" method=\"post\">\n");
      out.write("                                <input type=\"text\" class=\"field blink\" title=\"SEARCH\" value=\"SEARCH\" />\n");
      out.write("                                <input type=\"submit\" class=\"btn notext\" value=\"search\" />\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- END Navigation -->\n");
      out.write("                    <!-- Content -->\n");
      out.write("                    <div id=\"content\">\n");
      out.write("                        <div class=\"cl\">&nbsp;</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <!-- Column -->\n");
      out.write("                        <!-- END Column -->\n");
      out.write("                        <!-- Column -->\n");
      out.write("                        <div class=\"column2 middle-col\">\n");
      out.write("\n");
      out.write("                            <!-- Carousel -->\n");
      out.write("\n");
      out.write("                            <!-- End Carousel -->\n");
      out.write("                            <div class=\"post\">\n");
      out.write("                                <br />\n");
      out.write("                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                                <img alt=\"\"  src=\"images/royal_bank.JPG\" />\n");
      out.write("                                <br /><br />\n");
      out.write("                                <h2><span>About</span> Us</h2>\n");
      out.write("                                <p align=\"justify\">Royal Bank was the first of the new private banks to have begun operations in 1994, after the Government of India allowed new private banks to be established. The Bank was promoted jointly by the Administrator of the specified undertaking of the Unit Trust of India (UTI - I), Life Insurance Corporation of India (LIC) and General Insurance Corporation of India (GIC) and other four PSU insurance companies, i.e. National Insurance Company Ltd., The New India Assurance Company Ltd., The Oriental Insurance Company Ltd. and United India Insurance Company Ltd.</p>\n");
      out.write("\n");
      out.write("                                <p align=\"justify\">The Bank today is capitalized to the extent of Rs. 407.44 crores with the public holding (other than promoters and GDRs) at 54.51%.</p>\n");
      out.write("\n");
      out.write("                                <p align=\"justify\">The Bank's Registered Office is at Ahmedabad and its Central Office is located at Mumbai. The Bank has a very wide network of more than 1042 branches (including 56 Service Branches/CPCs as on 30th June 2010). The Bank has a network of over 4474 ATMs (as on 30th June 2010) providing 24 hrs a day banking convenience to its customers. This is one of the largest ATM networks in the country.</p>\n");
      out.write("\n");
      out.write("                                <p align=\"justify\">The Bank has strengths in both retail and corporate banking and is committed to adopting the best industry practices internationally in order to achieve excellence.</p><hr />\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"post\">\n");
      out.write("                                <h2><span>Corporate</span> Profile</h2>\n");
      out.write("                                <p align=\"justify\">Royal Bank is India's second-largest bank with total assets of Rs. 3,634.00 billion (US$ 81 billion) at March 31, 2010 and profit after tax Rs. 40.25 billion (US$ 896 million) for the year ended March 31, 2010. The Bank has a network of 2,035 branches and about 5,518 ATMs in India and presence in 18 countries. Royal Bank offers a wide range of banking products and financial services to corporate and retail customers through a variety of delivery channels and through its specialised subsidiaries and affiliates in the areas of investment banking, life and non-life insurance, venture capital and asset management. The Bank currently has subsidiaries in the United Kingdom, Russia and Canada, branches in United States, Singapore, Bahrain, Hong Kong, Sri Lanka, Qatar and Dubai International Finance Centre and representative offices in United Arab Emirates, China, South Africa, Bangladesh, Thailand, Malaysia and Indonesia. Our UK subsidiary has established branches in Belgium and Germany.</p>\n");
      out.write("\n");
      out.write("                                <p align=\"justify\">Royal Bank's equity shares are listed in India on Bombay Stock Exchange and the National Stock Exchange of India Limited and its American Depositary Receipts (ADRs) are listed on the New York Stock Exchange (NYSE).</p><hr />\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <div class=\"post\">\n");
      out.write("                                <h2><span>Awards</span></h2>\n");
      out.write("                                <p align=\"justify\">Our single-minded focus on product quality and service excellence has helped us garner the appreciation of both national and international organizations.<br />Time and again our innovative banking services has been recognized and rewarded world over.<br /><br /><br />\n");
      out.write("                                    <a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/awards.jsp\"> know more>></a><br />\n");
      out.write("                                    <hr /></p></div>\n");
      out.write("\n");
      out.write("                            <div class=\"post\">\n");
      out.write("                                <h2><span>Board of Directors</span></h2>\n");
      out.write("                                <p align=\"justify\">Royal Bank's Board members include eminent individuals with a wealth of experience in international business, management consulting, banking and financial services.<br /><br /><br />\n");
      out.write("                                    <a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/boardOfDirectors.jsp\"> know more>></a><br />\n");
      out.write("                                    <hr /></p></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <!-- END Column -->\n");
      out.write("                        <!-- Column -->\n");
      out.write("                        <div class=\"column\">\n");
      out.write("                            <div class=\"latest-news\">\n");
      out.write("                                <div class=\"latest-bottom\">\n");
      out.write("                                    <div class=\"latest-top\">\n");
      out.write("                                        <div class=\"post\">\n");
      out.write("                                            <ul>\n");
      out.write("                                                <h2><span>Online</span> Services</h2>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/services.jsp\">Funds Transfer</a></li>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/services.jsp\">Bill Payment</a></li>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/services.jsp\">Quick Pay</a></li>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/services.jsp\">Receive Funds</a></li>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/services.jsp\">Prepaid Mobile Recharge</a></li>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#\">More</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("\n");
      out.write("                                            <ul>\n");
      out.write("                                                <h2><span>Apply</span> Online</h2>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#\">Savings Account</a></li>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#\">Fixed Deposit.</a></li>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/carinsurance.jsp\">Car Insurance</a></li>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#\">Health Insurance</a></li>\n");
      out.write("                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#\">Travel Insurance</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div></div></div></div>\n");
      out.write("                        <!-- END Column -->\n");
      out.write("                        <div class=\"cl\">&nbsp;</div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- END Content -->\n");
      out.write("                </div>\n");
      out.write("                <div class=\"bottom\">&nbsp;</div>\n");
      out.write("            </div>\n");
      out.write("            <!-- END Box -->\n");
      out.write("\n");
      out.write("            <!-- Box -->\n");
      out.write("            <div class=\"box\">\n");
      out.write("                <div class=\"top\">&nbsp;</div>\n");
      out.write("\n");
      out.write("                <div class=\"cnt\">\n");
      out.write("                    <!-- Footer -->\n");
      out.write("                    <div id=\"footer\">\n");
      out.write("                        <div class=\"cl\">&nbsp;</div>\n");
      out.write("                        <p class=\"fl\"><a href=\"");
      out.print(request.getContextPath());
      out.write("/Pages/index.jsp\">Home</a> | <a href=\"contactus.html\">Contact Us</a></p>\n");
      out.write("                        <p class=\"fr\">&copy; royalbank.co.in. | Design by <a href=\"http://www.terna.org\" target=\"_blank\">Terna Engineering College</a></p>\n");
      out.write("                        <div class=\"cl\">&nbsp;</div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- END Footer -->\n");
      out.write("                </div>\n");
      out.write("                <div class=\"bottom\">&nbsp;</div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <!-- END Box -->\n");
      out.write("        </div>\n");
      out.write("        <!-- END Shell -->\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
