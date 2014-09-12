
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

                                <table><tr>
                                  <td colspan="3" class="txt_bd"><a name="pb"></a><table width="88%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td class="txt_bd"><br />
                                    You can call anytime on these numbers to solve your Query.</td>
  </tr>
</table><!-- <br />
                                    Reporting Loss of your ATM / Debit / ForexPlus
                                    Card is available 24 hours. Just call the
                                    PhoneBanking number in your Location. --> </td>
                                </tr>

                                <tr>
                                  <td height="10"></td>
                                </tr>

								 <tr>
                                
                                </tr>
								<tr>
                                  <td height="10"></td>
                                </tr>
                                <tr>
                                  <td ><table cellspacing="1" cellpadding="4" width="95%" border="0" align="left" bgcolor="#a0aad8">
                                      <tr bgcolor="#7e88b7">
                                          <td height="35" class="txt_body" align="middle"><font color="#ffffff"><strong>Location</strong></font></td>

                                        <td height="35" class="txt_body" align="middle" ><font color="#ffffff"><strong>PhoneBanking
                                          Numbers</strong></font></td>
                                        <td height="35" class="txt_body" align="middle" ><font color="#ffffff"><strong>Services
                                          Offered</strong></font></td>
                                      </tr>
                                      <tr bgcolor='#7e88b7' class='txt'>
                                        <td colspan="3" height="40"><div align="center"><strong><font color="#FFFFFF">North</font></strong></div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Delhi & NCR</td>

                                        <td height="25"><div align="center">(011) 4151 4332</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Chandigarh</td>
                                        <td height="25"><div align="center">(0172) 469 3333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>

                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Punjab</td>
                                        <td height="25"><div align="center">98153 31111</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Haryana</td>

                                        <td height="25"><div align="center">99962 43333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Jaipur</td>
                                        <td height="25"><div align="center">(0141) 500 3333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>

                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Rajasthan</td>
                                        <td height="25"><div align="center">98750 03333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Indore</td>

                                        <td height="25"><div align="center">(0731) 407 4332</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Madhya Pradesh / Chhattisgarh</td>
                                        <td height="25"><div align="center">98936 03333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>

                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Lucknow</td>
                                        <td height="25"><div align="center">(0522) 400 3333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Uttar Pradesh / Uttarakhand</td>

                                        <td height="25"><div align="center">99359 03333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Jammu & Kashmir / Himachal Pradesh
                                          <br />
                                        (Toll-free from BSNL landline)</td>

                                        <td height="25"><div align="center">1800 180 4333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            &amp; Demat</div>
                                          <div align="right"></div>
</td>
                                      </tr>
                                      <tr bgcolor='#7e88b7' class='txt'>
                                        <td height="40" colspan="3">
                                          <div align="center"><strong><font color="#FFFFFF"><a name="east"></a>East</font></strong></div></td>

                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Kolkata</td>
                                        <td height="25"><div align="center">(033) 2210 3838</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">West Bengal / Sikkim</td>

                                        <td height="25"><div align="center">98310 73333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Assam</td>
                                        <td height="25"><div align="center">99571 93333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>

                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Orissa</td>
                                        <td height="25"><div align="center">99379 03333</div></td>
                                        <td><div align="center">Banking, Loans
                                            & Demat</div></td height="25">
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Patna / Bihar / Jharkhand</td>

                                        <td height="25"><div align="center">(0612) 250 3333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            &amp; Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Meghalaya / Tripura / Nagaland / Mizoram<br />
                                        (Toll-free from
                                          BSNL landline)</td>

                                        <td height="25"><div align="center">1800 345 3333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div><div align="right"></div>
</td>
                                      </tr>
                                      <tr bgcolor='#7e88b7' class='txt'>
                                        <td height="40" colspan="3">
                                          <div align="center"><strong><font color="#FFFFFF"><a name="west"></a>West</font></strong></div></td>
                                      </tr>

                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Mumbai</td>
                                        <td height="25"><div align="center">(022) 2856 1818</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            , Demat & Mutual Funds</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Pune</td>

                                        <td height="25"><div align="center">(020) 6609 3333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Maharashtra (except Mumbai) / Goa</td>
                                        <td height="25"><div align="center">98906 03333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>

                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Ahmedabad</td>
                                        <td height="25"><div align="center">(079) 6662 3333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Gujarat</td>

                                        <td height="25"><div align="center">98982 71111</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div><div align="right"></div>
</td>
                                      </tr>
                                      <tr bgcolor='#7e88b7' class='txt'>
                                        <td height="40" colspan="3">
                                          <div align="center"><strong><font color="#FFFFFF"><a name="south"></a>South</font></strong></div></td>
                                      </tr>

                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Chennai</td>
                                        <td height="25"><div align="center">(044) 6600 3333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Tamil Nadu / Pondicherry</td>

                                        <td height="25"><div align="center">98406 73333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Bangalore</td>
                                        <td><div align="center">(080) 6600 3333</div></td height="25">
                                        <td><div align="center">Banking, Loans
                                            & Demat</div></td>

                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Karnataka</td>
                                        <td height="25"><div align="center">99458 63333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Hyderabad</td>

                                        <td height="25"><div align="center">(040) 6600 3333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Andhra Pradesh</td>
                                        <td height="25"><div align="center">99494 93333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>

                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Cochin</td>
                                        <td height="25"><div align="center">(0484) 408 3333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div></td>
                                      </tr>
                                      <tr bgcolor='#eef0f7' class='txt'>
                                        <td height="25">Kerala</td>

                                        <td height="25"><div align="center">98956 63333</div></td>
                                        <td height="25"><div align="center">Banking, Loans
                                            & Demat</div><div align="right"></div>
</td>
                                      </tr>
                                      <tr bgcolor="#eef0f7">
                                        <td height="25" class="txt_body" colspan="3"><br />
                                          <span class="txt_bluetitle"><strong>Timings:</strong></span> <table>
                                            <tr>
                                              <td valign="top" width="30" align="right"></td>

                                              <td valign="top"  height="18" class="txt_body" >&nbsp;<b>Banking :</b> Banking services are combination of IVR and Agent offering depending on the type of transaction. All IVR transactions are available 24x7 on all days. Reporting loss of cards is a PhoneBanker-assisted facility and is available 24 hours on all days.
											  </td>
                                            </tr>
											  <tr>
                                              <td height="25" valign="top" width="30" align="right"></td>
                                              <td height="25" valign="top"  height="18" class="txt_body" >&nbsp;
<strong>Loan Services :</strong> Loan services are available between 8:00 am to 8:00 p.m. on all days including Sundays & Bank Holidays for all locations except Bihar & Jharkhand, where agent services are available between 9:30 a.m. to 6:30 p.m. on weekdays & 9:30 a.m. to 1:30 p.m. on Saturdays only (Facility is not available on Sundays & Bank Holidays)  </td>

                                            </tr>
                                            <tr>
                                              <td height="25" valign="top" width="30" align="right"></td>
                                              <td height="25" valign="top" height="18" class="txt_body" >&nbsp;<b>Demat Account Services :</b> Services are available between 8:30 a.m to 5:30 p.m on weekdays & 9:30 a.m to 1:30 p.m on Saturdays (This facility is not available on Sundays & Bank Holidays)
                                              </td>
                                            </tr>
                                          </table>
                                          <br /> <br /> <span class="txt_bluetitle"><strong>Mutual
                                          Fund or Investment Services Account
                                          </strong></span>related services are
                                          offered @ Toll-free number 1800 22 1006
                                          from BSNL / MTNL Landline, anywhere
                                          in India or at (022) 2856 1818 during
                                          agent hours between 9:30 am to 6:30
                                          pm on weekdays &amp; 9:30am to 1:30
                                          pm on Saturdays. (This facility will
                                          not be available on Bank Holidays and
                                          Sundays).</td>

                                      </tr>
                                    </table>

                                  </td></tr></table>




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