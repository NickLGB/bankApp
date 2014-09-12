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
         <script type="text/javascript"  language="JavaScript" src="calendar_us.js"></script>
        <link rel="stylesheet" href="calendar.css"></link>

        <script type="text/javascript">

function validator(){

 var firstname = document.myform.firstname.value;
 var lastname=document.myform.lastname.value;
 var acno = document.myform.acno.value;
 var pass = document.myform.pass.value;
var pass1 = document.myform.pass1.value;
var testinput = document.myform.testinput.value;
var vcode=document.myform.vcode.value;



      if(isNum(acno,"Please Enter 6-digit number in Account number.")){
     if(isAlphabet(firstname, "Please enter only letters for your First name")){
        if(isAlphabet(lastname, "Please enter only letters for your Last name")){
            if(checkDate(testinput,"Enter Valid date.")){
                if(checkPass(pass,pass1,"Password do not match or empty")){
                    if(isAlphanumeric(vcode,"Check Verification Code.")){
		   

									    return true;
                    }	}}
										}
	}}

	return false;
	}




// Radio Button Validation
// copyright Stephen Chapman, 15th Nov 2004,14th Sep 2005
// you may copy this function but please keep the copyright notice with it
function checkDate(elem,msg){
       if(elem.indexOf("/")==2 && elem.lastIndexOf("/")==5 && elem.length==10)
           return true;
       else{
           alert(msg);
           return false;
       }

    }

function checkPass(elem,elem1,msg){
    if(elem == elem1 && elem != "")
        return true;
    else
        {alert(msg);

         return false;}
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

function isNum(elem,msg){
    var numericExpression = /^[0-9]+$/;
    if(elem.match(numericExpression) && elem.length==6)
        return true;
    else{
  alert(msg);

  return false;
 }
}


function isAlphanumeric(elem, helperMsg){
 var alphaExp = /^[0-9a-zA-Z ]+$/;
 if(elem.match(alphaExp)){
  return true;
 }else{
  alert(helperMsg);

  return false;
 }
}

function isAlphabet(elem, helperMsg){
 var alphaExp = /^[a-zA-Z]+$/;
 if(elem.match(alphaExp)){
  return true;
 }else{
  alert(helperMsg);

  return false;
 }
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
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp">buy online</a></li>
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


 <b><br /><font size="4" color="Blue">Create Account for E-Banking: </font></b><br /><br />

<br /><b><font size="2" color="Blue">Note:</font></b>
<ul><li>To access this page you should have an account in any Royal Bank branch.</li>
    <li>If you already created online account then you cannot use this page.</li>
    <li>If you forgot your password then visit our Nearest branch to recover it.</li>
    <li>The information filled by you in this form should match with our database.</li> </ul>
<br/><br/>
<center>
<form id="form" name="myform" action="/NewBank/register" method="post">
    <table bgcolor="rgb(255,239,217)" border="1" width="60%">
        <tr><td colspan="2" align="right" height="35"><b>All fields marked with * are mandetory</b></td></tr>
        <tr>
                 <td height="30"><font color="Red">*</font>Royal Bank A/C No.:</td>
                 <td height="30" align="center"><input type="text" name="acno" /></td></tr><tr></tr><tr>
             </tr>
       <tr>
                 <td height="30"><font color="Red">*</font>First Name:</td>
                 <td height="30" align="center"><input type="text" name="firstname" /></td></tr><tr></tr><tr>
             </tr>
             <tr>
                 <td height="30"><font color="Red">*</font>Last Name:</td>
                 <td height="30" align="center"><input type="text" name="lastname" /></td>
             </tr>
                 <tr>
                     <td height="30"><font color="Red">*</font>DOB:</td>
                     <td align="center" height="30"><input type="text" name="testinput" />
                         <script type="text/javascript"  language="JavaScript">
	new tcal ({
		// form name
		'formname': 'myform',
		// input name
		'controlname': 'testinput'
	});

        </script></td>
                 </tr>
                 <tr></tr><tr>
                 <td height="30"><font color="Red">*</font>Enter Password:</td>
                 <td height="30" align="center"><input type="password" name="pass" /></td></tr>

                 <tr>
                 <td height="30"><font color="Red">*</font>Re-enter Password:</td>
                 <td height="30" align="center"><input type="password" name="pass1" /></td></tr>

                 <tr>
                 <td height="30"><font color="Red">*</font>Enter Verification Code:</td>
                 <td height="30" align="center"><input type="text" name="vcode" /></td></tr>
                 <tr>
            <td height="30" align="center"><input type="image" src="images/reset.gif" onclick="return formReset()"/></td>
            <td height="30" align="center"><input type="image" value="SUBMIT" onClick="return validator()" src="images/submit.gif" /></td>
            </tr>
    </table>
</form></center>
<br/><br/>
<p align="justify">For verification code visit Nearest Royal Bank account.         <b>OR</b> </p>
<p align="justify">Call customer care for more information on following number.</p>
<p align="justify">+91-9821853087</p>



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