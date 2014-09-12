
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
          <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title>Royal Bank | The Bank For A Changing World</title>
        
       <link rel="stylesheet" href="<%=request.getContextPath()%>/css/global.css" type="text/css" media="all" />

       <script type="text/javascript">
        
           function validate(){
               var name=document.myform.user.value;
               var pass1=document.myform.pass1.value;
            
            
               if(name.match(/^[0-9]+$/))
                  {if(pass1.length)
                      return true;
               else{
                  alert("Please Enter Correct password.");
                   return false;}
            }
               else{
                   alert("Please Enter Correct username.");
                   return false;
               }
            
             
           }
              
           </script>
        <!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->
       <script src="<%=request.getContextPath()%>/js/jquery-1.3.2.min.js" type="text/javascript"></script>         <script type="text/javascript">             function formReset()       { document.getElementById("form").reset(); return false;          }</script>
        <script type="text/javascript">
            function formReset()
      {
document.getElementById("form").reset();
return false;
         }</script>
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
                            <span class="fl"><% HttpSession s=request.getSession();
              try {
                  if(s.getAttribute("username")==null)
                      {out.println("Welcome Guest,");}
                  else{
                out.println("Welcome "+s.getAttribute("name").toString()+","); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
                out.print("<a href='/NewBank/logout'>Logout</a>");}}
            catch (Exception ex) {

                }
                %></span> <span class="sep notext">&nbsp;</span> <a href="<%=request.getContextPath()%>/Pages/sitemap.jsp" class="sitemap">Sitemap</a>
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
                            <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp">Buy Online</a></li>
                            <li><a href="<%=request.getContextPath()%>/Pages/gallery.jsp">Gallery</a></li>
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

                                <center>
                                    <br/><br/>
                                    
                                    <br/><br/>

                                    <table class="design5">
                                        <tr><thead><th class="Corner">Please Enter your Username and Password &nbsp;&nbsp;&nbsp;</th></thead>
                                        <td><img alt=""  src="images/logo_icon.jpg" /> </td> </tr>
                                    </table></center> <br /><br />
                                    <center>
                                        <form id="form" name="myform" action="/NewBank/login" method="post">
                                        <table cellspacing='0' class="Design5">
                                            <tr><thead><th class="Corner">Login</th></thead></tr>
                                             <tr>  <td colspan="2">
                                                <% String msg=request.getParameter("msg"); %>
                                    <% if(msg==null) msg=""; %>
                                    <font color="Red" size="2.5"><b>
                                        <% out.print(msg); %>
                                        </b>    </font></td></tr>
                                            <tr>
                                            <td>User Name:</td>
                                            <td><div id="textf"><input type="text" name="user" title="LOGIN ID" value="LOGIN ID" class="field blink" /></div></td></tr>
                                            
                                            <tr>
                                            <td>Password:</td>
                                            <td><div id="textf"><input type="password" name="pass1" title="PASSWORD" value="PASSWORD"class="field blink" /></div></td></tr>
                                            
                                           
                                                <% String image=request.getParameter("image");
                                                if(image!=null) {
                                               %>  <tr><td colspan="2" ><center>
                                                           <img alt=""  src="captcha/<%=image%>" /></center>
                                                            <input type="hidden" value="<%=image%>" name="imagename" />
                                            </td>
                                        </tr>
                                               <tr>
                                                   <td colspan="2"><center>
                                                           <div id="textf"><input type="text" name="capval" class="field blink" /></div></center>
                                                           
                                                   </td>
                                               </tr>
                                                  <% } %>
                                            <tr>
                                                <td colspan="2" class="but">
                                                    <input type="image" value="submit" onclick="return validate()" src="images/submit.gif"/>
                                                    <input type="image" src="images/reset.gif" onclick="return formReset()" />
                                                    </td></tr>
                                         
                                       
                                        </table>
                                                
                                    </form> </center><br /><br />
                                   
                                    <center><p>Account not created yet?<br />
                                            <a href="createaccount.jsp">click here</a> to create</p></center>




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