
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
          <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title>Royal Bank | The Bank For A Changing World</title>

        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/global.css" type="text/css" media="all" />
       <script src="<%=request.getContextPath()%>/js/jquery-1.3.2.min.js" type="text/javascript"></script>         <script type="text/javascript">             function formReset()       { document.getElementById("form").reset(); return false;          }</script>
        <script src="<%=request.getContextPath()%>/js/jquery-fns.js" type="text/javascript"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.2.3.pack.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.jcarousel.pack.js"></script>

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
                                <a href="index.jsp"><img src="<%=request.getContextPath()%>/css/images/home.jpg" alt="Home" /></a>
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
                            <li><a href="<%=request.getContextPath()%>/Pages/aboutus.jsp">About Us</a></li>
                            <li><a href="/NewBank/services">Services</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp">Buy Online</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/gallery.jsp">Gallery</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/contact.jsp"   class="active">Contact</a></li>
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
<table border=0 cellspacing=1 cellpadding=4 width="100%">
                                <tr>
                                    <td colspan="3" bgcolor="#7E88B7" align="center" class="txt_body" height="40"><font color="#FFFFFF"><strong>Call
                              Center Numbers</strong></font></td>

                          </tr>
                          <tr>
                              <td bgcolor="#EEF0F7" align="center" class="txt_body" height="35"><strong>City</strong></td>
                            <td bgcolor="#EEF0F7" align="center" class="txt_body" height="35"><strong>Call
                              Center STD code</strong></td>
                              <td bgcolor="#EEF0F7" align="center" class="txt_body" height="35"><strong>Call
                              Center Tel Number</strong></td>
                          </tr>
                          <tr  bgcolor="#EEF0F7" >
                            <td height="25" class="txt" align="center">Ahmedabad </td>

                            <td class="txt" align="center">079</td>
                            <td class="txt" align="center">66004332</td>
                          </tr>
                          <!--<tr  bgcolor="#EEF0F7" >
                            <td  class="txt" align="center">Rest of Gujarat</td>
                            <td class="txt" align="center"></td>
                            <td class="txt" align="center">97255 04332</td>
                          </tr>-->
                          <tr  bgcolor="#EEF0F7" >
                            <td height="25" class="txt" align="center">Bangalore</td>
                            <td class="txt" align="center">080</td>

                            <td class="txt" align="center">66224332</td>
                          </tr>
                          <tr  bgcolor="#EEF0F7" >
                            <td height="25" class="txt" align="center">Bhopal</td>
                            <td class="txt" align="center">0755</td>
                            <td class="txt" align="center">4004332</td>
                          </tr>

                          <tr  bgcolor="#EEF0F7" >
                            <td height="25" class="txt" align="center">Chandigarh</td>
                            <td class="txt" align="center">0172</td>
                            <td class="txt" align="center">4694332</td>
                          </tr>
                          <tr  bgcolor="#EEF0F7" >
                            <td height="25"  class="txt" align="center">Chennai</td>
                            <td class="txt" align="center">044</td>

                            <td class="txt" align="center">66004332</td>
                          </tr>
                          <tr  bgcolor="#EEF0F7" >
                            <td height="25"  class="txt" align="center">Cochin</td>
                            <td class="txt" align="center">0484</td>
                            <td class="txt" align="center">4084332</td>
                          </tr>

                          <!--<tr  bgcolor="#EEF0F7" >
                            <td  class="txt" align="center">Rest of Kerala</td>
                            <td class="txt" align="center">&nbsp;</td>
                            <td class="txt" align="center">99957 64332</td>
                          </tr>

                          <tr  bgcolor="#EEF0F7" >
                            <td  class="txt" align="center">Rest of Punjab</td>
                            <td class="txt" align="center"></td>
                            <td class="txt" align="center">97791 54332</td>
                          </tr>-->
                          <tr  bgcolor="#EEF0F7" >
                            <td height="25"  class="txt" align="center">Coimbatore</td>
                            <td class="txt" align="center">0422</td>
                            <td class="txt" align="center">4384332</td>
                          </tr>
                          <tr  bgcolor="#EEF0F7" >
                            <td height="25"  class="txt" align="center">Delhi</td>

                            <td class="txt" align="center">011</td>
                            <td class="txt" align="center">41514332</td>
                          </tr>
                          <tr  bgcolor="#EEF0F7" >
                            <td  height="25" class="txt" align="center">Hyderabad</td>
                            <td class="txt" align="center">040</td>
                            <td class="txt" align="center">66624332</td>

                          </tr>
                          <!--<tr  bgcolor="#EEF0F7" >
                            <td  class="txt" align="center">Rest of Andhra Pradesh</td>
                            <td class="txt" align="center"></td>
                            <td class="txt" align="center">99086 64332 </td>
                          </tr>-->
                          <tr  bgcolor="#EEF0F7" >
                            <td  height="25" class="txt" align="center">Indore</td>
                            <td class="txt" align="center">0731</td>
                            <td class="txt" align="center">4074332</td>
                          </tr>
                          <tr  bgcolor="#EEF0F7" >
                            <td  height="25" class="txt" align="center">Jaipur</td>

                            <td class="txt" align="center">0141</td>
                            <td class="txt" align="center">4004332</td>
                          </tr>
                         <!-- <tr  bgcolor="#EEF0F7" >
                            <td  class="txt" align="center">Rest of Madhya Pradesh</td>
                            <td class="txt" align="center"></td>
                            <td class="txt" align="center">97525 04332</td>
                          </tr>-->

                          <tr  bgcolor="#EEF0F7" >
                            <td  height="25" class="txt" align="center">Kolkata</td>
                            <td class="txt" align="center">033</td>

                            <td class="txt" align="center">22104332</td>
                          </tr>
                          <tr  bgcolor="#EEF0F7" >
                            <td  height="25" class="txt" align="center">Lucknow</td>
                            <td class="txt" align="center">0522</td>
                            <td class="txt" align="center">4004332</td>
                          </tr>

                          <tr  bgcolor="#EEF0F7" >
                            <td  height="25" class="txt" align="center">Mumbai</td>
                            <td class="txt" align="center">022</td>
                            <td class="txt" align="center">28564332</td>
                          </tr>
                          <tr  bgcolor="#EEF0F7" >
                            <td  height="25" class="txt" align="center">Pune</td>
                                  <td class="txt" align="center">020</td>

                                  <td class="txt" align="center">66034332</td>
                          </tr>
                          <!--<tr  bgcolor="#EEF0F7" >
                            <td  class="txt" align="center">Rest of Maharashtra</td>
                                  <td class="txt" align="center">&nbsp;</td>
                                  <td class="txt" align="center">95610 94332</td>
                          </tr>-->

                          <tr  bgcolor="#EEF0F7" >
                            <td  height="25" class="txt" align="center">Raipur</td>
                            <td class="txt" align="center">0771</td>
                            <td class="txt" align="center">4084332</td>

                          </tr>
                          <tr>
                              <td colspan="3" bgcolor="#7E88B7" align="center" class="txt_body" height="40"><font color="#FFFFFF"><strong>Other
                              Locations</strong></font></td>
                          </tr>
                          <tr>
                            <td bgcolor="#EEF0F7" align="center" class="txt_body" colspan="3" height="40">
                              <p align="justify"><b>Toll Free Number: 1800 425
                                4332</b><br /><br/>
                                Agra/ Ajmer/ Allahabad/  Bareily/ Bhubaneshwar/
                                Bokaro/ Cuttack/ Dhanbad/ Dehradun/ Erode/ Guwahati/
                                Hissar/ Jammu & Srinagar/ Jamshedpur/ Jhansi/
                                Jodhpur/ Karnal/ Kanpur/ Madurai/ Mangalore/  Mathura/ Meerut/ Moradabad/ Muzaffarpur
                                / Mysore/  Pali/  Patiala/
                                Patna/  Rajkot/ Ranchi/ / Rourkela/ Salem/

                                Shimla/ Siliguri/ Silvassa / Surat/ Trichy/
                                Udaipur/ Varanasi</p></td>

                          </tr>
                        </table>


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
