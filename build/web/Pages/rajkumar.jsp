<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title>Royal Bank | The Bank For A Changing World</title>
        <link rel="stylesheet" href="../css/global.css" type="text/css" media="all" />
        <!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
        <script src="../js/jquery-1.3.2.min.js" type="text/javascript"></script>
        <script src="../js/jquery-fns.js" type="text/javascript"></script>
        <script type="text/javascript" src="../js/jquery-1.2.3.pack.js"></script>
        <script type="text/javascript" src="../js/jquery.jcarousel.pack.js"></script>
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
                                <a href="<%=request.getContextPath()%>/Pages/index.jsp"><img src="../css/images/home.jpg" alt="Home" /></a>
                                <a href="<%=request.getContextPath()%>/Pages/contact.jsp"><img src="../css/images/mail.jpg" alt="Mail" /></a>
                                <a href="<%=request.getContextPath()%>/Pages/services.jsp"><img src="../css/images/secure.jpg" alt="Secure Login" /></a>
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
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp">Buy online</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/gallery.html">Gallery</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/contact.jsp">Contact</a></li>
                        </ul>
                        <div id="search">
                            <form action="/NewBank/Pages/search.jsp" method="post">
                                <input type="text" class="field blink" title="SEARCH" value="SEARCH" name="search" />
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

<p><b><font color="Red">Mr. Raj Kumar: </font></b><br /><br />

            <img alt=""  src="images/rajkumar.jpg" width="200" height="250"/> <br /><br />
                <p align="justify">Mr. Raj Kumar is the Executive Director and Chief Financial Officer of ROYAL Bank. In addition to Finance, Taxation and Communications, his responsibilities include Compliance, Internal Audit, Corporate Legal and Global Treasury operations.<br /><br />

Prior to the current assignment, Mr. Kannan was the Executive Director of ROYAL Prudential Life Insurance Company. He looked after the Corporate Centre including the Finance and accounts functions, Investor/analyst relations, Investment Management, Corporate Strategy, Corporate Communications, Human Resources and Business Intelligence. Prior to shifting to ROYAL Prudential, Mr. Kannan was the Chief Financial Officer and Treasurer of ROYAL Bank.<br /><br />

Mr. Kannan has been with the ROYAL group for over 18 years. He joined the ROYAL group in 1991 as a project officer. During his tenure at ROYAL group, he has handled project finance operations, infrastructure financing, structured finance and treasury operations.<br /><br />

Mr. Kannan is a postgraduate in management from the Indian Institute of Management, Bangalore with a gold medal for best all-round performance. He is also a Chartered Financial Analyst from the Institute of Chartered Financial Analysts of India and an Honours graduate in Mechanical Engineering.  </p>
				<br /><br /><br /><br /><br />
                  <a href="boardOfDirectors.jsp"><font color="Blue">Board Members</font></a>
					</p>




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