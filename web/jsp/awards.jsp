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
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp">Buy Online</a></li>
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

                                <br /><br />

<p>ROYAL Bank began operations in 1995 with a simple mission: to be a "World-class Indian Bank". We realised that only a single-minded focus on product quality and service excellence would help us get there. Today, we are proud to say that we are well on our way towards that goal.</p>

<p>It is extremely gratifying that our efforts towards providing customer convenience have been appreciated both nationally and internationally.</p>

<br /><br />
<table width="100%" border="0" cellspacing="0" cellpadding="10">
              <tbody> <tr>
                <td bgcolor="#e5e5e5"> <table width="100%" border="0" cellpadding="20">
				<tbody><tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">Institutional Investor Magazine Poll</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">
                        <strong> ROYAL Bank MD, Mr. Aditya Puri among "Asian Captains
                        of Finance 2010" </strong></td>
                    </tr>
				<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">IDRBT Technology 2009 Awards</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">
                       <strong>Winner - 1) IT Infrastructure  2) Use of IT within the Bank <br />
Runners-up -  IT Governance (Large Banks)
</strong></td>
                    </tr>
					<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">ACI Excellence Awards 2010 </td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">

                        <strong>Highly Commended - Asia Pacific ROYAL Bank</strong></td>
                    </tr>
					<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">FE-EVI Green Business Leadership Award</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">
                        <strong>Best performer in the Banking category</strong></td>
                    </tr>
					<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">Celent's 2010 Banking Innovation Award</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">

                        <strong>Model Bank Award</strong></td>
                    </tr>
				<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">Avaya Global
                        Connect 2010</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">

                        <strong>Customer Responsiveness Award - Banking &amp; Financial Services category</strong></td>
                    </tr>
					<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">Forbes Top 2000 Companies</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">

                        <strong>Our Bank at 632nd position and among 130 Global High Performers</strong></td>
                    </tr>
				<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">Financial Express - Ernst &amp; Young Survey 2009-10</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">

                        <strong><li>Best New Private Sector Bank
</li><li>Best in Growth
</li></strong><li><strong>Best in strength</strong></li></td>
                    </tr>
				<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">Asian Banker Excellence Awards 2009</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">

                        <strong><li>Best Retail Bank in India
                        </li><li>Excellence in Automobile Lending
						</li><li>Bank M&amp;A Integration </li></strong><li><strong>Technology Implementation</strong></li></td>
                    </tr>
					<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">The Asset Triple A Awards</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">

                        <strong>Best Cash Management Bank in India</strong></td>
                    </tr>
			<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">Euromoney Private Banking and Wealth Management Poll 2010</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9">

                        <strong>1) Best Local Bank in India (second year in a row)
                         &nbsp;2) Best Private Banking Services overall (moved up from
                        No. 2 last year)</strong></td>
                    </tr>
				<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">Financial Insights Innovation Awards 2010</td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9"><strong>Innovation in Branch Operations  - Server Consolidation Project</strong></td>
                    </tr>
				<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">Global Finance Award </td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9"><strong>Best Trade Finance Provider in India for 2010</strong></td>
                    </tr>
				<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">2 Banking Technology Awards 2009  </td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9"><strong>1) Best Risk Management Initiative and 2) Best Use of Business Intelligence.</strong></td>
                    </tr>

					<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">SPJIMR Marketing Impact Awards (SMIA) 2010  </td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9"><strong>2nd Prize</strong></td>
                    </tr>
				<tr class="txt_body">
                      <td width="140" valign="top" bgcolor="#FFFFFF" height="40">Business Today Best Employer Survey </td>
                      <td valign="top" bgcolor="#FFFFFF" height="40" class="txtbd_9"><strong>Listed in top 10 Best Employers in the country</strong></td>
                    </tr>
                                    	</tbody></table> </td></tr> </tbody> </table><br/><br/>

<center><a href="javascript:history.go(-1)"><img alt=""  src="images/back.gif" /></a></center>
<br/><br/>

        
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