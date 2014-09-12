<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title>Royal Bank | The Bank For A Changing World</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/global.css" type="text/css" media="all" />
        <!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
       <script src="<%=request.getContextPath()%>/js/jquery-1.3.2.min.js" type="text/javascript"></script>         <script type="text/javascript">             function formReset()       { document.getElementById("form").reset(); return false;          }</script>
        <script src="<%=request.getContextPath()%>/js/jquery-fns.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.2.3.pack.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.jcarousel.pack.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function() {
                jQuery('#mycarousel').jcarousel({
                    scroll: 1,
                    animation: "slow",
                    wrap: "both"
                });
            });
        </script>
    </head>
    <body>
        <!-- Shell -->
        <div class="shell">
            <!-- Box -->
            <div class="box">
                <div class="top">&nbsp;</div>

                <div class="cnt">
                    <!-- Header -->
                    <div id="header">
                        <div class="cl">&nbsp;</div>
                        <div class="a-side-header">
                            <span class="fl"><% HttpSession s=request.getSession();               try {                   if(s.getAttribute("username")==null)                       {out.println("Welcome Guest,");}                   else{                 out.println("Welcome "+s.getAttribute("name").toString()+","); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%                 out.print("<a href='/NewBank/logout'>Logout</a>");}}             catch (Exception ex) {                  }                 %></span> <span class="sep notext">&nbsp;</span> <a href="<%=request.getContextPath()%>/Pages/sitemap.jsp" class="sitemap">Sitemap</a>
                            <div id="buttons">
                                <a href="<%=request.getContextPath()%>/Pages/index.jsp"><img src="<%=request.getContextPath()%>/css/images/home.jpg" alt="Home" /></a>
                                <a href="<%=request.getContextPath()%>/Pages/contact.jsp"><img src="<%=request.getContextPath()%>/css/images/mail.jpg" alt="Mail" /></a>
                                <a href="<%=request.getContextPath()%>/Pages/services.jsp"><img src="<%=request.getContextPath()%>/css/images/secure.jpg" alt="Secure Login" /></a>
                            </div>
                        </div>
                        <!-- Logo -->
                        <h1 id="logo"><a href="#">Business Company</a></h1>
                        <!-- END Logo -->
                        <div class="cl">&nbsp;</div>
                    </div>
                    <!-- END Header -->
                    <!-- Navigation -->
                    <div id="navigation">
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/Pages/index.jsp">Home</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/aboutus.jsp"  class="active">About Us</a></li>
                            <li><a href="/NewBank/services">Services</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp">buy online</a></li>
                            <li><a href="gallery.html">Gallery</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/contact.jsp">Contact</a></li>
                        </ul>
                        <div id="search">
                            <form action="/NewBank/Pages/search.jsp" method="post">
                                <input type="text" class="field blink" title="SEARCH" value="SEARCH" name="search"  />
                                <input type="submit" class="btn notext" value="search" />
                            </form>
                        </div>
                    </div>
                    <!-- END Navigation -->
                    <!-- Content -->
                    <div id="content">
                        <div class="cl">&nbsp;</div>


                        <!-- Column -->
                        <!-- END Column -->
                        <!-- Column -->
                        <div class="column2 middle-col">

                            <!-- Carousel -->

                            <!-- End Carousel -->
                            <div class="post">

                                <p><b><font color="Red">MR K.M. PATIL: </font></b><br /><br />

                                    <img alt=""  src="images/patil.jpg" class="left" /> <br /><br />
                                            <p align="justify">Mr. K. Malhar Patil is the non-executive Chairman of the Board of Directors of ROYAL Bank Limited, India's second largest bank. Mr. Patil has a degree in mechanical engineering and did his management studies at the Indian Institute of Management, Ahmedabad. </p><br /><br /><p>He started his career in 1971 at ROYAL, an Indian financial institution that founded ROYAL Bank and merged with it in 2002. In 1988, he moved to the Asian Development Bank and spent several years in South-East Asia before returning to ROYAL as its Managing Director & CEO in 1996. Under his leadership, the ROYAL Group transformed itself into a diversified, technology-driven financial services group that has leadership positions across banking, insurance and asset management in India, and an international presence. He retired as Managing Director & CEO in April 2009, and took up his present position effective May 1, 2009. Mr. Patil was conferred with the Padma Bhushan, one of India's highest civilian honours, in 2008. He has received widespread recognition internationally and in India, including being named "Businessman of the Year" by Forbes Asia and "Business Leader of the Year" by The Economic Times, India in 2007 and CNBC's "Asian Business Leader of the Year" in 2001. Mr. Patil was the President of the Confederation of Indian Industry for the year 2008-09. He is also an independent Director on the Board of Directors of Infosys Technologies Limited, Lupin Limited and Schlumberger Limited. He has been a co-chair of the World Economic Forum's Annual Meeting in Davos and is a member of the Board of the Institute of International Finance.</p>
                                                    <br /><br /><br /><br /><br />
                                                                        <a href="<%=request.getContextPath()%>/Pages/boardOfDirectors.jsp"><font color="Blue">Board Members</font></a>
                                                                        <hr /></p>




                                                                            </div>


                                                                            </div>
                                                                            <!-- END Column -->
                                                                            <!-- Column -->
                                                                            <div class="column">
                                                                                <div class="latest-news">
                                                                                    <div class="latest-bottom">
                                                                                        <div class="latest-top">
                                                                                            <div class="post">
                                                                                                <ul>
                                                                                                    <h2><span>Online</span> Services</h2>
                                                                                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/NewBank/services">Funds Transfer</a></li>
                                                                                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/NewBank/services">Bill Payment</a></li>
                                                                                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/NewBank/services">Quick Pay</a></li>
                                                                                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/NewBank/services">Receive Funds</a></li>
                                                                                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/NewBank/services">Prepaid Mobile Recharge</a></li>
                                                                                                   
                                                                                                </ul>

                                                                                                <ul>
                                                                                                    <h2><span>Apply</span> Online</h2>
                                                                                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/Pages/applysavingaccount.jsp">Apply saving account</a></li>
                                                                                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Fixed Deposit.</a></li>
                                                                                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/Pages/healthinsurance.jsp">Health Insurance</a></li>
                                                                                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/Pages/homeloan.jsp">Home Loan</a></li>
                                                                                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Pdf/blockdebitform.pdf" target="_blank">Block ATM and DEBIT card form</a></li>
                                                                                                </ul>
                                                                                            </div>
                                                                                        </div></div></div></div>
                                                                            <!-- END Column -->
                                                                            <div class="cl">&nbsp;</div>
                                                                            </div>
                                                                            <!-- END Content -->
                                                                            </div>
                                                                            <div class="bottom">&nbsp;</div>
                                                                            </div>
                                                                            <!-- END Box -->

                                                                            <!-- Box -->
                                                                            <div class="box">
                                                                                <div class="top">&nbsp;</div>

                                                                                <div class="cnt">
                                                                                    <!-- Footer -->
                                                                                    <div id="footer">
                                                                                        <div class="cl">&nbsp;</div>
                                                                                        <p class="fl"><a href="<%=request.getContextPath()%>/Pages/index.jsp">Home</a> | <a href="<%=request.getContextPath()%>/Pages/contact.jsp">Contact Us</a></p>
                                                                                        <p class="fr">&copy; royalbank.co.in. | Design by <a href="http://www.terna.org" target="_blank">Terna Engineering College</a></p>
                                                                                        <div class="cl">&nbsp;</div>
                                                                                    </div>
                                                                                    <!-- END Footer -->
                                                                                </div>
                                                                                <div class="bottom">&nbsp;</div>

                                                                            </div>
                                                                            <!-- END Box -->
                                                                            </div>
                                                                            <!-- END Shell -->
                                                                            </body>
                                                                            </html>