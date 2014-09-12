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
                                <a href="<%=request.getContextPath()%>/Pages/contactus.html"><img src="<%=request.getContextPath()%>/css/images/mail.jpg" alt="Mail" /></a>
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
                            <li><a href="<%=request.getContextPath()%>/Pages/aboutus.jsp">About Us</a></li>
                            <li><a href="/NewBank/services">Services</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp"   class="active">buy online</a></li>
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
                                <b><br /><font size="4" color="Blue">Health Insurance: </font></b><br /><br />
                                <img alt=""  src="images/hd_health.jpg" /><br /><br />
                                <p>With the increase in the shift towards lifestyle diseases, healthcare today is at its all-time-high when it comes to treatment costs. In the event of an unforeseen illness, you may have no option but to utilize your hard earned savings steadily built throughout your life time.<br /><br />

                                    With HDFC ERGO's Health Suraksha, you're provided an optimal coverage for your treatments including all pre and post hospitalization costs. Now make sure that you use your hard-earned savings for the real reasons - Be it your child's higher education or his/her dream wedding, a well deserved family vacation or just about anything you dreamt of all your life! </p>
                                <br /><br />

                                <table cellpadding="10">
                                    <tr>
                                        <td><font size="3">Benefit</font></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <ul>
                                                <li>Optimal Coverage at an affordable price</li>
                                                <li>Option to cover on Individual or Family Floater Basis</li>
                                                <li>Option to opt for an annual or two year policy</li>
                                                <li>Cumulative Bonus for each claim free year</li>
                                                <li>Provides Cost of Health Check up after 4 claim free years </li>
                                                <li>Cashless Claims Service across India at 4,200+ network hospital</li>
                                                <li>Income Tax Benefit Under Section 80D of the Income Tax Act </li>
                                                <li>Hassle free Claims Process with minimum documentation and turn around times</li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>&nbsp;</tr><tr>&nbsp;</tr><tr></tr><tr></tr>
                                    <tr>
                                        <td>
                                           <font size="3">Coverage:</font>
                                        </td>
                                    </tr> <tr></tr><tr></tr><tr></tr><tr></tr>
                                    <tr>
                                        <td>

                                            <table  cellpadding="10" border="1">
                                                <tr bgcolor="rgb(165,142,250)">
                                                    <td colspan="3" height="40" align="center">Health Suraksha - Individual & Family Floater Sum Insured</td>

                                                </tr>
                                                <tr bgcolor="rgb(165,142,250)">
                                                    <td height="35"><div align="center">Plan</div></td>
                                                    <td colspan="2" height="35"><div align="center">Silver</div></td>
        </tr>
        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">Basic Sum Insured
              per Insured Person per Policy Year</div></td>
          <td  valign="top"><div align="left">100000;200000; 300000</div></td>

          <td  valign="top"> <div align="left">400000;</div></td>
        </tr><hr />
        <tr bgcolor="rgb(165,142,250)">
          <td  valign="top" colspan="3" height="35"><div align="left">Section
              1: Benefits below will subject to Basic Sum Insured and any claim
              under them will affect entitlement to Renewal Incentive</div></td>
        </tr>
        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">1.1     In-patient
              Treatment</div></td>
          <td  valign="top" colspan="2"><div align="left">Covered</div></td>

        </tr>
        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">1.2     Pre-hospitalization</div></td>
          <td  valign="top"><div align="left">60 days</div></td>
          <td  valign="top"><div align="left">60 days</div></td>
        </tr>
        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">1.3     Post-hospitalization</div></td>

          <td  valign="top"><div align="left">90 days</div></td>
          <td  valign="top"><div align="left">90 days</div></td>
        </tr>
        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">1.4     Day Care
              Procedures</div></td>
          <td  valign="top" colspan="2"><div align="left">Covered
            </div></td>
        </tr>

        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left" >1.5     Domiciliary
              Treatment</div></td>
          <td  valign="top"colspan="2"><div align="left">Covered</div></td>
        </tr>
        <tr bgcolor="rgb(165,142,250)">
          <td  valign="top"colspan="3" height="35"><div align="left">Section
              2: Additional Benefits, will subject to Basic Sum Insured and any
              claim under them will affect entitlement to Renewal Incentive</div></td>
        </tr>
        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">2.1     Organ Donor</div></td>

          <td  valign="top" colspan="2"><div align="left">Covered</div></td>
        </tr>
        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">2.2     Emergency
              Ambulance</div></td>
          <td rowspan="2" valign="top" ><div align="left">&nbsp;</div>
            <div align="left">Rs. 2,000</div></td>
          <td rowspan="2" valign="top" ><div align="left">&nbsp;</div>
            <div align="left">Rs. 2,000</div></td>

        </tr>
        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">Limit per hospitalisation</div></td>
        </tr>
        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">2.3     Ayurvedic
              / Homeopathic</div></td>
          <td  valign="top"><div align="left">20% of Sum Insured;
              Maximum Rs. 20,000</div></td>
          <td  valign="top"><div align="left">20% of Sum Insured;
              Maximum Rs. 25,000</div></td>

        </tr>
        <tr bgcolor="rgb(165,142,250)">
          <td  valign="top" colspan="3" height="35"><div align="left">Section
              3: Renewal Incentive</div></td>
        </tr>
        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">3.1     Cumulative
              Bonus </div></td>
          <td  valign="top" colspan="2"><div align="left">5% of
              Sum Insured; Maximum 50% [Reduced by 10% in the event of claim]</div></td>
        </tr>

        <tr bgcolor="#FFFFFF">
          <td  valign="top" height="30"><div align="left">3.2     Health checkup
            </div></td>
          <td  valign="top" colspan="2"><div align="left">Upto
              1% of Sum Insured; Max Rs. 5000</div></td>
        </tr>

                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <br />
                                <ul><li>
                                        <p><a href="leavenoforhlthins.jsp">click here</a> to leave your number.</p></li><br/>
                                    <li><p><a href="applyCarloan.jsp">click here</a> to apply Health insurance.</p></li>
                                </ul>


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
                        <p class="fl"><a href="<%=request.getContextPath()%>/Pages/index.jsp">Home</a> | <a href="<%=request.getContextPath()%>/Pages/contactus.jsp">Contact Us</a></p>
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