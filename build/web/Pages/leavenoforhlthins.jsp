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

function Validator(){

 var cname = document.myform.cname.value;
 var pin = document.myform.pin.value;
 var email = document.myform.email.value;
var add = document.myform.add.value;
var mob = document.myform.mob.value;
var code = document.myform.code.value;
var resno = document.myform.resno.value;
var fromtiming = document.myform.fromtiming.value;
var totiming = document.myform.totiming.value;
var testinput=document.myform.testinput.value;
  
     if(isAlphabet(cname, "Please enter only letters for your First name")){
          if(isAlphanumeric(add,"Numbers and Letters Only for Address")){
             if(isNum(mob,"Enter Valid mobile No."))   {
                 if(lenRestriction(mob,10,"Enter 10 digits in mobile number")){
                     if(isNumeric(code,resno,"Please enter valid no")){
                         if(isNum(pin,"Enter Correct Pin number.")){
                             if(lenRestriction(pin,6,"Enter 6 digits in Pin Code.")){
		              if(isEmail(email, "Please enter correct email id")){
                       if(selectCheck(fromtiming,"Please select From time.")) {
                            if(selectCheck(totiming,"Please select End time.")) {
                                if(checkDate(testinput,"Enter Valid date.")){
                                    if(checkRange(fromtiming,totiming,"Select valid of timing.")){
									    return true;
										}}
										}
	}}}}}}}}}
	return false;	}

    function checkRange(elem,elem1,msg){
        if(elem==elem1){
            alert(msg);
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

function isEmail(email,helperMsg){
    var apos=email.indexOf("@");
  var dotpos=email.lastIndexOf(".");
  if (apos<1||dotpos-apos<2)
    {alert(helperMsg);return false;}
  else {return true;}
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

function isNumeric(elem1,elem2, helperMsg){
 var numericExpression = /^[0-9]+$/;
 if(((elem1.match(numericExpression) && (elem1.length>=3 && elem1.length<=5)) && (elem2.match(numericExpression) && elem2.length==8)) || (elem1.length==0 && elem2.length==0)) {
  return true;
 }else{
  alert(helperMsg);

  return false;
 }
}

function isNum(elem,msg){
    var numericExpression = /^[0-9]+$/;
    if(elem.match(numericExpression))
        return true;
    else{
  alert(msg);

  return false;
 }
}

function lenRestriction(elem,min,helperMsg){

 if(elem.length == min){
  return true;
 }else{
  alert(helperMsg);

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


 <b><br /><font size="4" color="Blue">Health Loan: </font></b><br /><br />
 <center>
     
    
             <form id="form" name="myform" action="/NewBank/leavenohi" method="post" >
                 <table cellpadding="2" cellspacing="3" bgcolor="rgb(255,239,217)" border="1">
                     <tr bgcolor="rgb(165,142,250)">
                         <td colspan="2" height="40" width="100%" align="right">Fields marked with * are mandatory.</td>
     </tr>
                     <tr><td height="30" align="left"><font color="Red">*</font>Name:</td>
         <td align="left" height="30"><input type="text" name="cname" /></td> </tr>
                     <tr><td align="left"><font color="Red">*</font>Address:</td>
                         <td align="left"><textarea cols="30" rows="3" name="add" > </textarea></td> </tr>
                     <tr><td align="left" height="30"><font color="Red">*</font>Mobile No.:</td>
         <td align="left" height="30"><input type="text" name="mob" /></td> </tr>
                     <tr>
                 <td align="left" height="30">Residence No.:</td>
                 <td align="left" height="30"><input type="text" name="code" size="5" maxlength="5" />-<input type="text" name="resno" /> </td> </tr> <tr> </tr> <tr></tr><tr></tr><tr>
             </tr>
                 <tr><td align="left" height="30"><font color="Red">*</font>Pin Code:</td>
         <td align="left" height="30"><input type="text" name="pin" /></td> </tr>
                 <tr><td align="left" height="30"><font color="Red">*</font>Email:</td>
         <td align="left" height="30"><input type="text" name="email" /></td> </tr>
                 <tr><td align="left" height="30"><font color="Red">*</font>Right Date to Contact:</td>
                     <td align="left" height="30"><input type="text" name="testinput" />
                         <script type="text/javascript"  language="JavaScript">
	new tcal ({
		// form name
		'formname': 'myform',
		// input name
		'controlname': 'testinput'
	});

        </script></td></tr>
                 <tr><td align="left" height="30"><font color="Red">*</font>Right time to Contact:</td>
         <td align="left" height="30"><select name="fromtiming">

									<option value="-1">From</option>
									<option value="9.30" >9:30 AM</option>
									<option value="10.30" >10:30 AM</option>
									<option value="11.30" >11:30 AM</option>
									<option value="12.30" >12:30 PM</option>
									<option value="13.30" >1:30 PM</option>

									<option value="14.30" >2:30 PM</option>
									<option value="15.30" >3:30 PM</option>
									<option value="16.30" >4:30 PM</option>
									<option value="17.30" >5:30 PM</option>

						  </select>
						  <select name="totiming" >
									<option value="-1">To</option>


									<option value="10.30" >10:30 AM</option>
									<option value="11.30" >11:30 AM</option>
									<option value="12.30" >12:30 PM</option>
									<option value="13.30" >1:30 PM</option>
									<option value="14.30" >2:30 PM</option>
									<option value="15.30" >3:30 PM</option>

									<option value="16.30" >4:30 PM</option>
									<option value="17.30" >5:30 PM</option>
									<option value="18.30" >6:30 AM</option>

						  </select>
</td> </tr>
                 <tr></tr><tr></tr><tr></tr><tr>
            <td align="center"><input type="image" src="images/reset.gif" onclick="return formReset()"/></td>
            <td><input type="image" value="SUBMIT" onClick="return validator()" src="images/submit.gif" /></td>
            </tr>

                 </table>
             </form> 

 </center>


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