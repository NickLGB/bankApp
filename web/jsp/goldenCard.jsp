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

function Validator(){

 var firstname = document.myform.firstname.value;
 var lastname=document.myform.lastname.value;
 var title = document.myform.title.value;
 var email = document.myform.email.value;
var add = document.myform.add.value;
var mob = document.myform.mobile.value;
var code = document.myform.code.value;
var resno = document.myform.resno.value;
var btn = valButton(myform.RoyalBC);

if (btn == null) {
	alert("Please select you are custmer or not");
	return false;}
else
  {
  if(selectCheck(title,"Please select title.")) {
     if(isAlphabet(firstname, "Please enter only letters for your First name")){
        if(isAlphabet(lastname, "Please enter only letters for your Last name")){
		   if(isEmail(email, "Please enter correct email id")){
		      if(isAlphanumeric(add,"Numbers and Letters Only for Address")){
			      if(isNumeric(mob,code,resno,"Please enter at least valid no")){

									    return true;
										}
										}
	}}}}

	return false;
	}
}



// Radio Button Validation
// copyright Stephen Chapman, 15th Nov 2004,14th Sep 2005
// you may copy this function but please keep the copyright notice with it
function valButton(btn) {
    var cnt = -1;
    for (var i=btn.length-1; i > -1; i--) {
        if (btn[i].checked) {cnt = i; i = -1;}
    }
    if (cnt > -1)
	return btn[cnt].value;
    else
	return null;
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

function isNumeric(elem,elem1,elem2, helperMsg){
 var numericExpression = /^[0-9]+$/;
 if((elem.match(/^[0-9]+$/) && elem.length==10) || ((elem1.match(numericExpression) && (elem1.length>=3 && elem1.length<=5)) && (elem2.match(numericExpression) && (elem2.length>=7 && elem2.length<=8)))) {
  return true;
 }else{
  alert(helperMsg);

  return false;
 }
}

function lenRestriction(elem,min,max,helperMsg){
 var uInput = elem;
 if(uInput.length >=min){
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
                            <li><a href="<%=request.getContextPath()%>/Pages/aboutus.jsp"  class="active">About Us</a></li>
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


                                <p><b> Golden Card Offer : </b></p><br /><br />

				<b>FEATURES:</b>
                  <br /><br />
				<ul>
            <li><font color="Red"><p>Attractive Reward Points</p></font>
                <p>Your HDFC Bank Platinum Plus Credit Card is now 100% more rewarding!

With effect from 1st July 2010, earn 2 Reward Points for every Rs.150 for spends up to Rs. 20,000 per statement cycle. For incremental spends above Rs. 20,000 in a statement cycle, earn 100% more Reward Points i.e. 4 Reward Points per Rs. 150.</p> </li>
            <li><font color="Red"><p>0% Fuel surcharge</p></font><p>You can now fuel up as and when you want, without worrying about the surcharge - enjoy complete freedom from fuel surcharge when you purchase fuel between Rs 400 and Rs 5000 with your Platinum Plus Credit Card.</p></li>

			 <li><font color="Red"><p>Zero liability on lost card</p></font><p>If you happen to lose your Card, report it immediately to our 24-hour call centre. After reporting the loss, you carry zero liability on any fraudulent transactions on your card.</p></li>

			 <li><font color="Red"><p>Free Add-on card </p></font><p>You can share these wonderful features with your loved ones too. We offer upto 3 life time free add-on cards to your spouse, children (above 18 years of age), parents, br /other or sister.</p></li>

			  <li><font color="Red"><p>Utility bills through your credit card</p></font><p>Register your Platinum Plus Credit Card with SmartPay, HDFC Bank's Utility Bill payment service. Ensure that all your utility bills are paid on time, without any hassle for you.</p></li>
            </ul>

       <br /><br /><p><a href="applygoldencard.jsp"><font color="Blue">Apply Now >>></font></a></p>


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