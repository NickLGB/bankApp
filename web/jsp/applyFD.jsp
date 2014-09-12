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

            function formValidator(){
                // Make quick references to our fields
                var name = document.myform.name.value;
                var nominee=document.myform.nominee.value;
                var relnominee = document.myform.relnominee.value;
                var pamount = document.myform.pamount.value;
                var period = document.myform.period.value;
                var type = document.myform.pamount.value;
                var testinput = document.myform.period.value;

                if(isAlphabet(name,"Enter only alphabets in name.")){
                    if(isAlphabet(nominee,"Enter only alphabets in nominee name.")){
                        if(isSelect(relnominee,"Please select relation of nominee.")){
                            if(isSelect(pamount,"Please select principal amount.")){
                                if(isSelect(period,"Please select period for FD.")){
                                    if(isSelect(type,"Please select type of FD.")){
                                        if(checkDate(testinput,"Please select Proper Date."))
                                            return true;
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }

            function isAlphabet(elem, helperMsg){
                var alphaExp = /^[a-zA-Z ]+$/;
                if(elem.match(alphaExp)){
                    return true;
                }else{
                    alert(helperMsg);

                    return false;
                }
            }
            function selectCheck(elem,helperMsg){
                if(elem == "-1")
                {
                    alert(helperMsg);

                    return false;
                }
                else
                    return true;
            }

            function checkDate(elem,msg){
                if(elem.indexOf("/")==2 && elem.lastIndexOf("/")==5 && elem.length==10)
                    return true;
                else{
                    alert(msg);
                    return false;
                }

            }

        </script>
        <script type="text/javascript"  language="JavaScript" src="calendar_us.js"></script>
        <link rel="stylesheet" href="calendar.css"></link>
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
                            <span class="fl"><% HttpSession s = request.getSession();
                                        try {
                                            if (s.getAttribute("username") == null) {
                                                out.println("Welcome Guest,");
                                            } else {
                                                out.println("Welcome " + s.getAttribute("name").toString() + ",");%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%                 out.print("<a href='/NewBank/logout'>Logout</a>");
                                                                }
                                                            } catch (Exception ex) {
                                                            }%></span> <span class="sep notext">&nbsp;</span> <a href="<%=request.getContextPath()%>/Pages/sitemap.jsp" class="sitemap">Sitemap</a>
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
                            <li><a href="<%=request.getContextPath()%>/Pages/aboutus.jsp">About Us</a></li>
                            <li><a href="/NewBank/services">Services</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp"   class="active">buy online</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/gallery.html">Gallery</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/contact.jsp">Contact</a></li>
                        </ul>
                        <div id="search">
                            <form action="/NewBank/Pages/search.jsp" method="post" target="_blank">
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


                                <br/><br/>
                                <p>Fill online application for fixed deposit.</p>
                                <p>Make sure that your balance is sufficient for transaction.</p>

                                <center><br/>
                                    <form id="form" name="myform" action="/NewBank/applyFD" method="post">
                                        <table cellspacing='0' class="Design5">
                                            <tr><td colspan="3">Apply For FD</td></tr>

                                            <tr>
                                                <td>Full Name of<br/>FD holder</td>
                                                <td colspan="2"><div id="textf"><input type="text" name="name" title="Name of Holder" value="Name of Holder" class="field blink"/></div></td>
                                            </tr>
                                            <tr>
                                                <td>Name of Nominee:</td>
                                                <td colspan="2"><div id="textf"><input type="text" name="nominee" title="Nominee" value="Nominee"class="field blink"/></div></td>
                                            </tr>
                                            <tr>
                                                <td>Relation of nominee<br/>with FD holder:</td>
                                                <td colspan="2"><select name="relnominee">
                                                        <option value="-1" />&nbsp;&nbsp;&nbsp;-- SELECT --&nbsp;&nbsp;&nbsp;
                                                        <option value="sonOrDaughter" />Son/Daughter
                                                        <option value="husband" />husband
                                                        <option value="wife" />wife
                                                        <option value="broOrSis" />Brother/Sister
                                                    </select> </td></tr><tr>
                                                <td>Principle Amount:</td>
                                                <td colspan="2"><select name="pamount">
                                                        <option value="-1" />&nbsp;&nbsp;&nbsp;-- SELECT --&nbsp;&nbsp;&nbsp;
                                                        <option value="10000" />10,000
                                                        <option value="20000" />20,000
                                                        <option value="25000" />25,000
                                                        <option value="50000" />50,000
                                                        <option value="75000" />75,000
                                                        <option value="1lack" />1 Lacks
                                                    </select> </td></tr>
                                            <tr>
                                                <td>Interest Rate:</td>
                                                <td colspan="2">8.25%</td></tr>
                                            <tr>
                                                <td>Period of FD:</td>
                                                <td colspan="2"><select name="period">
                                                        <option value="-1" />&nbsp;&nbsp;&nbsp;-- SELECT --&nbsp;&nbsp;&nbsp;
                                                        <option value="8" />8 Months
                                                        <option value="12" />12 Months
                                                        <option value="18" />18 Months
                                                        <option value="24" />24 Months
                                                        <option value="30" />30 Months

                                                    </select> </td></tr>

                                            <tr>
                                                <td>FD Type:</td>
                                                <td colspan="2"><select name="type">
                                                        <option value="-1" />&nbsp;&nbsp;&nbsp;-- SELECT --&nbsp;&nbsp;&nbsp;
                                                        <option value="once" />One time
                                                        <option value="renew" />Renew type

                                                    </select> </td></tr>
                                                            <tr>
                                            <td>Start Date of FD:</td>
                                            <td><div id="textf"><input type="text" name="testinput" class="field blink"/></div</td>
                                                    <td><script type="text/javascript"  language="JavaScript">
                                                new tcal ({
                                                    // form name
                                                    'formname': 'myform',
                                                    // input name
                                                    'controlname': 'testinput'
                                                });

                                                </script></td>
                                        </tr>
                                            <tr>
                                                <td  colspan="3" class="but"><input type="image" value="SUBMIT" onClick="return formValidator()" src="images/submit.gif" />
                                                <input type="image" src="images/reset.gif" onclick="return formReset()"/></td>
                                            </tr>


                                        </table>
                                    </form>
                                </center><br/><br/>


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