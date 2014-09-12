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
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp">buy online</a></li>
                            <li><a href="gallery.html">Gallery</a></li>
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


                                <p><b><font color="Red">Ms. Neeta Kochhar: </font></b><br /><br />

                                    <img alt=""  src="images/neetakochar.gif" width="200" height="250" class="left" /> <br /><br />
                                    <p align="justify">Ms. Neeta Kochhar is the Managing Director and Chief Executive Officer of ROYAL Bank Limited. She began her career with ROYAL as a Management Trainee in 1984 and has thereon successfully risen through the ranks by handling multidimensional assignments and heading all the major functions in the Bank at various points in time.</p><p>

                                        In 1993 when ROYAL decided to enter commercial banking, she was deputed to ROYAL Bank as a part of the core team to set up the bank. When ROYAL set up the Infrastructure Industry Group in 1996 to create dedicated industry expertise in the areas of Power, Telecom and Transportation sector, she was handpicked and made incharge of the Infrastructure Industry Group. Further in 1998, when ROYAL created the "Major Client Group" to handle the relationships with the top 200 clients of ROYAL, she was promoted as General Manager and was made the head of the Major Clients Group. In the year 1999 she simultaneously started handling the strategy and E-commerce divisions of ROYAL.</p><p>

                                        In July 2000, she was chosen to head the Retail Finance division of ROYAL and has been instrumental in scaling up the business. In April 2001, she was promoted as an Executive Director, heading the retail business in the Bank. Having joined it during its nascent stage, her strategic thinking and skills to convert challenges into opportunities ensured that within a short span of around 5 years ROYAL Bank emerged as the largest retail financer in India. In the process of transforming a small bank into the largest private sector bank in the country, within a decade of its inception, the various steps taken by her also shaped the retail finance industry in India.</p><p>

                                        In April 2006, she was appointed as the Deputy Managing Director of ROYAL Bank, with responsibility for both Corporate and Retail banking business of ROYAL Bank and from October 2006 to October 2007, she handled the International and Corporate businesses of ROYAL Bank. Once again under her leadership, International banking was the fastest growing businesses within the Bank aiming to cater to the cross-border needs of clients.</p><p>

                                        In October 2007, she was appointed as the Joint Managing Director & CFO. She was heading the Corporate Centre, was the Chief Financial Officer (CFO) and was also the official spokesperson for ROYAL Bank. In addition to finance, planning and communications; her responsibilities included the global treasury, principal investments & trading, risk management and legal functions. She was also responsible for day-to-day guidance and administrative matters relating to the compliance and internal audit functions.</p><p>

                                     <br /><br />   <b>Awards</b><br />

                                        Under the leadership of Ms. Kochhar ROYAL Bank had won The Asian Banker - "Best Retail Bank in India"award for five consecutive years from the year 2001 to 2005. As recognition of her contribution to establish ROYAL Bank as a leading player in the banking industry Ms. Kochhar has also been:<br /><br />

                                        - Ranked 20th in the Forbe's list of Most Powerful Women in the World, 2009.<br /><br />

                                        - Ranked 25th in the Fortune's List of Most Powerful Women in Business, 2008.<br /><br />

                                        - Featured in the list of 25 most powerful women leaders in Business Today, 2008.<br /><br />

                                        - Selected as 'Rising Star Award' for Global Awards 2006 by Retail Banker International.<br /><br />

                                        - Awarded Business Woman of the Year 2005 by The Economic Times of India.<br /><br />

                                        - Selected as Retail Banker of the Year 2004 (Asia-Pacific region) by The Asian Banker from amongst prominent retail bankers in the Asia Pacific region<br /><br />

                                        <b>Education & Certifications</b><br /><br />

                                        Mrs. Kochhar joined Jaihind College for a Bachelors Degree in Arts and after graduating in 1982, completed her MBA and Cost Accountancy. She did her Masters in Management Studies (Finance) from the Jamnalal Bajaj Institute of Management Studies, Mumbai and topped her batch and received the Wockhardt Gold Medal for Excellence in Management Studies. In Cost Accountancy, she received the J. N. Bose Gold Medal for highest marks in that year.  </p>
                                    <br /><br /><br /><br /><br />
                                    <a href="<%=request.getContextPath()%>/Pages/boardOfDirectors.jsp"><font color="Blue">Board Members</font></a>
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