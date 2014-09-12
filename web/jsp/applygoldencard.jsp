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
 var firstname = document.myform.firstname.value;
 var lastname=document.myform.lastname.value;
  var annualIncome = document.myform.annualIncome.value;
   var sex = document.myform.sex.value;
    var add = document.myform.add.value;
	var mob = document.myform.mob.value;
	var docSub = document.myform.docSub.value;

 // Check each input in the order that it appears in the form!
 if(isAlphabet(firstname, "Please enter only letters for your First name")){
 if(isAlphabet(lastname, "Please enter only letters for your Last name")){
  if (selectCheck(annualIncome,"Please select Annual Income.")) {
 if (selectCheck(sex,"Please select Sex.")) {
 if(isAlphanumeric(add,"Numbers and Letters Only for Address")){
 if(isNumeric(mob, "Please enter a valid mobile no")){
  if(lengthRestriction(mob,10,"Please enter 10 digits in mobile no")){
 if (selectCheck(docSub,"Please Select Document to be Submited."))
 {



       return true;
	   }
   }
 }
 }
 }}}}
 return false;
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

function isNumeric(elem,helperMsg){
 var numericExpression = /^[0-9]+$/;
 if(elem.match(numericExpression)){
  return true;
 }else{
  alert(helperMsg);
 
  return false;
 }
}

function lengthRestriction(elem, min, helperMsg){
 var uInput = elem;
 if(uInput.length == min){
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
                            <span class="fl"><% HttpSession s=request.getSession();               try {                   if(s.getAttribute("username")==null)                       {out.println("Welcome Guest,");}                   else{                 out.println("Welcome "+s.getAttribute("name").toString()+","); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%                 out.print("<a href='/NewBank/logout'>Logout</a>");}}             catch (Exception ex) {                  }                 %></span> <span class="sep notext">&nbsp;</span> <a href="#" class="sitemap">Sitemap</a>
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
                            <li><a href="/NewBank/services"  class="active">Services</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp">buy online</a></li>
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

                                <ul><li>
                                        <p><b> Apply For ROYAL BANK's Golden Card: </b></p><br /><br /></li><li>
				<p>Just fill up online form and you will get your Golden Card within 15 days.</p></li><li>
				<p>You have to maintain minimum balance Rs.15,000/- to use this card.</p></li><li>
                                    <p>Fill Your Details:</p></li></ul>

                                <center>	<form id="form" name="myform" action="/NewBank/applygoldencard" method="post" >
<table  cellspacing='0' class="Design5">
<tr></tr><tr></tr>
<tr>
<td><b>First Name:</b></td>
	<td colspan="2"><div id="textf"><input type="text" name="firstname" class="field blink" /></div></td>
</tr><tr></tr><tr></tr>

<tr><td><b>Last Name:</b></td>
    <td colspan="2"><div id="textf"><input type="text" name="lastname" class="field blink"/></div> </td>
</tr><tr></tr><tr></tr>


<tr><td><b>branch:</b></td>
    <td colspan="2"><div id="textf"><input type="text" name="branch" class="field blink"/></div> </td>
</tr><tr></tr><tr></tr>

<tr>
	<td><b>Annual Income:</b></td>
	<td colspan="2"><select name="annualIncome">
      <option value="-1" selected="selected" />select
      <option value="belowtwolack" />Below 2Lacks
	  <option value="betTwoSix" />2 Lacks-6 Lacks
	  <option value="betSixTen" />6 Lacks-10 Lacks
	  <option value="betTenThirty" />10 Lacks-30 Lacks
	  <option value="abovethirtyLacks" />Above 30 Lacks

	  </select></td></tr><tr></tr><tr></tr>

<tr>
	<td><b>SEX</b></td>
	<td colspan="2"><select name="sex">
      <option value="-1" selected="selected" />Select
	  <option value="male" />Male
      <option value="female" />Female</select>

	 </td></tr><tr></tr><tr></tr>

<tr>
<td><b>Address:</b></td>
	<td colspan="2"><textarea cols = "20" rows = "3" name="add"></textarea></td>
</tr><tr></tr><tr></tr>

<tr>
<td><b>Mobile:</b></td>
<td colspan="2"><div id="textf"><input type="text" name="mob" class="field blink" /></div> </td>
</tr><tr></tr><tr></tr>

<tr>
	<td><b>Document Submitted:</b></td>
	<td colspan="2"><select name="docSub">
      <option value="-1" selected="selected" />Pick up Any one
      <option value="pancard" />Pan Card
	  <option value="passport" />Pass-Port
	  <option value="ration" />Ration Card

	  </select></td></tr><tr></tr><tr></tr>


<tr></tr><tr></tr><tr></tr><tr>
<td align="center"><input type="image" src="images/reset.gif" onclick="return formReset()"/></td>
<td colspan="2"><input type="image" value="SUBMIT" onClick="return formValidator()" src="images/submit.gif" /></td>
</tr>
</table></form>
<br /><br /></center>
<p><font color="Red">Selected Document Submit in nearest branch within 2 days.</font></p>


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
                                                <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">More</a></li>
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