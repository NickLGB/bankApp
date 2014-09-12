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

 var name = document.myform.name.value;
  var conno = document.myform.conno.value;
var add = document.myform.add.value;
var product = document.myform.product.value;
var complain = document.myform.complain.value;




if(isAlphabet(name,"Please Enter leters in Your name.")){
    if(isAlphanumeric(add,"Enter letters and numbers in address")){
        if(isNumeric(conno,"Enter only 10digit number"))     {
         if(selectCheck(product,"Please select Product to complain.")){
                 if(isAlphanumeric(complain,"Enter letters and numbers in complain")){
                     
               return true;
         }

     }
}

    }
}
return false;
}
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


function isNumeric1(elem,msg){
       var numericExpression = /^[0-9]+$/;
 if(((elem.match(numericExpression) && elem.length==6) || elem.length==0)) {
  return true;
 }else{
  alert(msg);

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

function isNumeric(elem, helperMsg){
 var numericExpression = /^[0-9]+$/;
 if((elem.match(numericExpression) && elem.length==10)) {
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
 var alphaExp = /^[a-zA-Z ]+$/;
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
                                <br/><br/>

                                <center>
                                    <table class="design5"  cellspacing='0'>
                                        <tr>
                                            <td height="40" align="center">
                                                <b> Query Form</b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <form id="form" name="myform" action="/NewBank/query" method="post">
                                                <table  class="Design5" cellspacing='0'>
                                                    <%
                                                   if(s.getAttribute("username")!=null){
                                                    String name=s.getAttribute("name").toString();
                                                    String add=s.getAttribute("add").toString();
                                                    String mob = s.getAttribute("mob").toString();    %>
                                                    <tr>
                                                        <td align="right" height="30" width="50%">Name:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"><div id="textf">
                                                            <% out.print("<input type='text' name='name1' value='"+name+"' disabled=disabled class='field blink' />");
                                                           out.print("<input type='hidden' name='name' value='"+name+"' />");  %> </div></td></tr>
                                                             <tr>
                                                        <td align="right" height="30" width="50%">Address:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2">
                                                            <% out.print("<textarea cols=20 rows=3 name=add1 disabled=disabled >"+add+"</textarea>");
                                                           out.print("<input type='hidden' name='add' value='"+add+"' />");  %></td></tr>
                                                    <tr>
                                                        <td align="right" height="30" width="50%">Mobile:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"><div id="textf">
                                                            <% out.print("<input type='text' name='mob1' value='"+mob+"' disabled=disabled class='field blink' />");
                                                             out.print("<input type='hidden' name='conno' value='"+mob+"'/>");  %> </div> </td></tr><%

                                                    }
                                              else{
                                                    %>
                                                        
                                                    <tr>
                                                        <td align="right" height="30" width="50%"><font color="red">*</font>Name:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"><div id="textf"><input type="text" name="name" class="field blink" /></div> </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="30" align="right"><font color="Red">*</font>Address:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"><textarea cols = "20" rows = "3" name="add"></textarea></td>
                                                    </tr>

                                                    <tr>
                                                        <td align="right" height="30" width="50%"><font color="red">*</font>Mobile No.:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"><div id="textf"><input type="text" name="conno" class="field blink" /></div> </td>
                                                    </tr>

                                                    <tr>
                                                         <% } %>
                                                        <td align="right" height="30" width="50%"><font color="Red">*</font>Query about:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"><select name="product">
                                               
                                                                <option value="-1">Select Product</option>

                                                                <option value="NRI_Services" >NRI Services</option>

                                                                <option value="Credit_Cards" >Credit Cards</option>

                                                                <option value="NetBanking" >NetBanking</option>

                                                                <option value="Bill_Pay" >Bill Pay</option>

                                                                <option value="PhoneBanking" >PhoneBanking</option>

                                                                <option value="MobileBanking" >MobileBanking</option>

                                                                <option value="Savings_Account" >Savings Account</option>

                                                                <option value="Current_Account" >Current Account</option>

                                                                <option value="Demat_Account" >Demat Account</option>


                                                                <option value="Fixed_Deposits" >Fixed Deposits</option>

                                                            </select></td>
                                                    </tr>
                                                    <tr>
                                                        <td height="30" align="right"><font color="Red">*</font>Your Query:&nbsp;&nbsp;&nbsp;</td>
                                                        <td colspan="2"><textarea cols = "20" rows = "6" name="complain"></textarea></td>
                                                    </tr>
                                                   

                                                    <tr>
                <td height="30" align="center"><input type="image" src="images/reset.gif" onclick="return formReset()"/></td>
                <td colspan="2"><input type="image" value="SUBMIT" onClick="return Validator()" src="images/submit.gif" /></td>
            </tr>

                                                </table></form>
                                            </td>
                                        </tr>
                                    </table>
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