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
        <script type="text/javascript">

function writeText(txt)
{
document.getElementById("desc").innerHTML=txt;
}
function writeText1(txt)
{
document.getElementById("desc1").innerHTML=txt;
}
function writeText2(txt)
{
document.getElementById("desc2").innerHTML=txt;
}
function writeText3(txt)
{
document.getElementById("desc3").innerHTML=txt;
}
function writeText4(txt)
{
document.getElementById("desc4").innerHTML=txt;
}
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

                                <p><b>Buy Online Insurance: </b><br /><br /></p>

                                <p><a href="<%=request.getContextPath()%>/Pages/carinsurance.jsp" onMouseOver="writeText2('Buy insurance policy online with your ROYAL Bank Credit Card and pay premium in EMIS with no additional interest. A comprehensive policy for your four-wheeler that covers you against third party as well as accidents, damage, injury and much more. ROYAL Lombard br /ings to you a comprehensive Policy for your Car, which covers Third Party Liability (TPL) for bodily injury and/or death, Personal Accident cover for owner-driver and loss or damage to the vehicle insured (Own Damage or OD).')" onMouseOut="writeText2('')"><font color="Red">Car Insurance</font></a></p>

				<p id="desc2"></p>

				<p><a href="<%=request.getContextPath()%>/Pages/travelinsurance.jsp" onMouseOver="writeText('With ROYAL Lombard?s Individual Overseas Travel Insurance, all unexpected and unplanned medical and non-medical expenses are covered when you are abr /oad. ROYAL Lombard overseas travel gold plan is the most preferred travel insurance because you also get covered for pre-existing disease in life-threatening emergency situations.')" onMouseOut="writeText('')"><font color="Red">Travel Inasurance</font></a></p>

				<p id="desc"></p>


				<p><a href="<%=request.getContextPath()%>/Pages/healthinsurance.jsp" onMouseOver="writeText1('Health Advantage Plus - A unique policy that covers hospitalisation and Outpatient Department Expenses (including Dental treatment, cost of medicines and drugs) and enables optimum tax savings of up to Rs. 5,099 u/s 80D. Buy insurance policy online with your ROYAL Bank or Citibank Credit Card and pay premium at interest free installments.')" onMouseOut="writeText1('')"><font color="Red">Health Insurance</font></a></p>

				<p id="desc1"></p>


				


				<p><a href="<%=request.getContextPath()%>/Pages/twowheelerinsurance.jsp" onMouseOver="writeText3('Buy insurance policy online with your ROYAL Bank Credit Card and pay premium in EMIS with no additional interest. A complete package for your two-wheeler that protects you against unfortunate accidents, third party liability, injuries and damages. Two wheeler riding calls for a constant alertness from theft and accidents. Two-wheeler policy guarantees safety for your vehicle and yourself, thereby making your ride stress- free.')" onMouseOut="writeText3('')"><font color="Red">Two Wheeler Insurance</font></a></p>

				<p id="desc3"></p>


				<p><a href="<%=request.getContextPath()%>/Pages/cardproplan.jsp" onMouseOver="writeText4(' CICI Bank introduces Card Protection Plan (CPP), India?s first comprehensive card protection service. It can be used in the event of card loss, theft, any related fraud and emergencies. You can safe guard all financial and non-financial cards including Credit, Debit, Loyalty and Membership Cards with CPP. In case of card loss or theft that may have occurred anywhere in the world, you would only need to call CPP?s 24-hour helpline, to report the loss ')" onMouseOut="writeText4('')"><font color="Red">Card Protection Plan</font></a></p>





<p id="desc4"></p>




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