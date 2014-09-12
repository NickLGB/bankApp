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
                            <li><a href="<%=request.getContextPath()%>/Pages/aboutus.jsp"  class="active">About Us</a></li>
                            <li><a href="/NewBank/services">Services</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp">Buy Online</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/gallery.jsp">Gallery</a></li>
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
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img alt=""  src="images/royal_bank.JPG" />
                                <br /><br />
                                <h2><span>About</span> Us</h2>
                                <p align="justify">Royal Bank was the first of the new private banks to have begun operations in 1994, after the Government of India allowed new private banks to be established. The Bank was promoted jointly by the Administrator of the specified undertaking of the Unit Trust of India (UTI - I), Life Insurance Corporation of India (LIC) and General Insurance Corporation of India (GIC) and other four PSU insurance companies, i.e. National Insurance Company Ltd., The New India Assurance Company Ltd., The Oriental Insurance Company Ltd. and United India Insurance Company Ltd.</p>

                                <p align="justify">The Bank today is capitalized to the extent of Rs. 407.44 crores with the public holding (other than promoters and GDRs) at 54.51%.</p>

                                <p align="justify">The Bank's Registered Office is at Ahmedabad and its Central Office is located at Mumbai. The Bank has a very wide network of more than 1042 branches (including 56 Service Branches/CPCs as on 30th June 2010). The Bank has a network of over 4474 ATMs (as on 30th June 2010) providing 24 hrs a day banking convenience to its customers. This is one of the largest ATM networks in the country.</p>

                                <p align="justify">The Bank has strengths in both retail and corporate banking and is committed to adopting the best industry practices internationally in order to achieve excellence.</p><hr />
                            </div>
                            <div class="post">
                                <h2><span>Corporate</span> Profile</h2>
                                <p align="justify">Royal Bank is India's second-largest bank with total assets of Rs. 3,634.00 billion (US$ 81 billion) at March 31, 2010 and profit after tax Rs. 40.25 billion (US$ 896 million) for the year ended March 31, 2010. The Bank has a network of 2,035 branches and about 5,518 ATMs in India and presence in 18 countries. Royal Bank offers a wide range of banking products and financial services to corporate and retail customers through a variety of delivery channels and through its specialised subsidiaries and affiliates in the areas of investment banking, life and non-life insurance, venture capital and asset management. The Bank currently has subsidiaries in the United Kingdom, Russia and Canada, branches in United States, Singapore, Bahrain, Hong Kong, Sri Lanka, Qatar and Dubai International Finance Centre and representative offices in United Arab Emirates, China, South Africa, Bangladesh, Thailand, Malaysia and Indonesia. Our UK subsidiary has established branches in Belgium and Germany.</p>

                                <p align="justify">Royal Bank's equity shares are listed in India on Bombay Stock Exchange and the National Stock Exchange of India Limited and its American Depositary Receipts (ADRs) are listed on the New York Stock Exchange (NYSE).</p><hr />
                            </div>


                            <div class="post">
                                <h2><span>Awards</span></h2>
                                <p align="justify">Our single-minded focus on product quality and service excellence has helped us garner the appreciation of both national and international organizations.<br />Time and again our innovative banking services has been recognized and rewarded world over.<br /><br /><br />
                                    <a href="<%=request.getContextPath()%>/Pages/awards.jsp"> know more>></a><br />
                                    <hr /></p></div>

                            <div class="post">
                                <h2><span>Board of Directors</span></h2>
                                <p align="justify">Royal Bank's Board members include eminent individuals with a wealth of experience in international business, management consulting, banking and financial services.<br /><br /><br />
                                    <a href="<%=request.getContextPath()%>/Pages/boardOfDirectors.jsp"> know more>></a><br />
                                    <hr /></p></div>


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