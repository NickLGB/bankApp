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
 var email = document.myform.email.value;
var add = document.myform.add.value;
var mob = document.myform.mobile.value;
var code = document.myform.code.value;
var resno = document.myform.resno.value;
var insuranceservice=document.myform.insuranceservice.value;



      if(selectCheck(insuranceservice, "Please select service.")){
       if(isAlphabet(firstname, "Please enter only letters for your First name")){
        if(isAlphabet(lastname, "Please enter only letters for your Last name")){
		   if(isEmail(email, "Please enter correct email id")){
		      if(isAlphanumeric(add,"Numbers and Letters Only for Address")){
			      if(isNumeric(mob,code,resno,"Please enter at least valid no")){

									    return true;
										}}
										}
	}}}

	return false;
	
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
                            <li><a href="<%=request.getContextPath()%>/Pages/aboutus.jsp">About Us</a></li>
                            <li><a href="/NewBank/services">Services</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp"  class="active">buy online</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/gallery.html">Gallery</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/contact.jsp">Contact</a></li>
                        </ul>
                        <div id="search">
                            <form action="/NewBank/search" method="post" target="_blank">
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


 <b><br /><font size="4" color="Blue">Apply Loan: </font></b><br /><br />
 
<br /><b>Don't put the brakes on your ambition</b><br /><br />

<form id="form" name="myform" action="/NewBank/applyCarloan" method="post">
    <center>
      <table cellspacing='0' class="Design5">
                                            <tr><thead><th class="Corner">Apply Now</th></thead></tr>
                                            <tr><td colspan="3">Personal Details:</td></tr>

                                                
                                            <tr>
                                            <td>*Select a Service :</td>
                                            <td colspan="2"><select name="insuranceservice">
                                                 <option value="-1">&nbsp;&nbsp;&nbsp;-- SELECT --&nbsp;&nbsp;&nbsp;</option>
                                                 <option value="car">Car Insurance</option>
                                                 <option value="travel">Travel Insurance</option>
                                                 <option value="health">Health Insurance</option>
                                                 <option value="bike">Bike Insurance</option>

                                             </select></td></tr>
                                        <%
                                                   if(s.getAttribute("username")!=null){
                                                    String name=s.getAttribute("name").toString();
                                                    String add=s.getAttribute("add").toString();
                                                    String mob = s.getAttribute("mob").toString();
                                                    String lname=s.getAttribute("lname").toString();
                                                    String email=s.getAttribute("email").toString();       %>
                                                    <tr>
                                                        <td align="right" height="30" width="50%">First Name:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"><div id="textf">
                                                            <% out.print("<input type='text' name='name1' value='"+name+"' disabled=disabled class='field blink' />");
                                                           out.print("<input type='hidden' name='firstname' value='"+name+"' />");  %> </div></td></tr>
                                                           <tr>
                                                        <td align="right" height="30" width="50%">Last Name:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"><div id="textf">
                                                            <% out.print("<input type='text' name='na' value='"+lname+"' disabled=disabled class='field blink' />");
                                                           out.print("<input type='hidden' name='lastname' value='"+lname+"' />");  %> </div></td></tr>
                                                            <tr>
                                                        <td align="right" height="30" width="50%">Email:&nbsp;&nbsp;&nbsp;</td>
                                                           <td colspan="2"><div id="textf">
                                                            <% out.print("<input type='text' name='nam' value='"+email+"' disabled=disabled class='field blink' />");
                                                           out.print("<input type='hidden' name='email' value='"+email+"' />");  %> </div></td></tr>
                                                         <tr><td colspan="3">*Contact Details:</td></tr> <tr>
                                                        <td align="right" height="30" width="50%">Address:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2">
                                                            <% out.print("<textarea cols=20 rows=3 name=add1 disabled=disabled >"+add+"</textarea>");
                                                           out.print("<input type='hidden' name='add' value='"+add+"' />");  %></td></tr>
                                                    <tr>
                                                        <td align="right" height="30" width="50%">Mobile:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"><div id="textf">
                                                            <% out.print("<input type='text' name='mob1' value='"+mob+"' disabled=disabled class='field blink' />");
                                                             out.print("<input type='hidden' name='mobile' value='"+mob+"' />");
                                                             out.print("<input type='hidden' name='code' value='' />");
                                                              out.print("<input type='hidden' name='resno' value='' />");%> </div> </td></tr><%

                                                    }
                                              else{
                                                    %>

                                         <tr>
                 <td>*First Name:</td>
                 <td colspan="2"><div id="textf"><input type="text" name="firstname" class="field blink" title="First Name" value="First Name"/></div></td></tr>
             <tr>
                 <td>*Last Name:</td>
                 <td colspan="2"><div id="textf"><input type="text" name="lastname" class="field blink" title="Last Name" value="Last Name"/></div></td></tr>

             <tr>
                 <td>*Email:</td>
                 <td colspan="2"><div id="textf"><input type="text" name="email" class="field blink" title="E-Mail ID" value="E-Mail ID"/></div></td></tr>
                           <tr><td colspan="3 ">*Contact Details:</td></tr>
                           <tr><td>Address:</td>
                 <td colspan="2"><textarea cols = "20" rows = "3" name="add"></textarea></td></tr>

			<tr><td colspan="3">*Telephone No.: (At least one mandatory) </td></tr>

			<tr>
                 <td>Mobile:</td>
                 <td colspan="2"><div id="textf"><input type="text" name="mobile" class="field blink" title="Mobile Number" value="Mobile Number"/></div></td></tr>

			 <tr>
                 <td>Residence:</td>
                 <td colspan="2"><div id="textf"><input type="text" name="code" size="15" maxlength="5" class="field blink" title="STD CODE" value="STD CODE"/></div>_<div id="textf"><input type="text" name="resno" class="field blink" title="Telephone Number" value="Telephone Number"/> </div></td> </tr>
                                 <% } %>
                                        <tr>
                                            <td  colspan="2" class="but"><input type="image" value="SUBMIT" onClick="return Validator()" src="images/submit.gif" />
                                                <td> <input type="image" src="images/reset.gif" onclick="return formReset()"/></td>
                                                </td></tr>

                                        </table>
	</center> </form>



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