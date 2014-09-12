<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Royal Bank</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" type="text/css" media="all" />
	<!--[if IE 6]><link rel="stylesheet" href="../css/ie6.css" type="text/css" media="all" /><![endif]-->
	<script src="<%=request.getContextPath()%>/js/jquery-1.3.2.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/js/jquery-fns.js" type="text/javascript"></script>
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
                            <span class="fl"> <% HttpSession s=request.getSession();
              try {
                  if(s.getAttribute("username")==null)
                      {out.println("Welcome Guest,");}
                  else{
                out.println("Welcome "+s.getAttribute("name").toString()+","); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
                out.print("<a href='/NewBank/logout'>Logout</a>");}}
            catch (Exception ex) {

                }
                            %></span><span class="sep notext">&nbsp;</span> <a href="<%=request.getContextPath()%>/Pages/sitemap.jsp" class="sitemap">Sitemap</a>
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
					    <li><a href="<%=request.getContextPath()%>/Pages/index.jsp" class="active">Home</a></li>
                                             <li><a href="<%=request.getContextPath()%>/Pages/aboutus.jsp">About Us</a></li>
					    <li><a href="/NewBank/services">Services</a></li>
					    <li><a href="<%=request.getContextPath()%>/Pages/applyol.jsp">Buy Online</a></li>
					    <li><a href="<%=request.getContextPath()%>/Pages/gallery.jsp">Gallery</a></li>
					     <li><a href="<%=request.getContextPath()%>/Pages/contact.jsp">Contact</a></li>
					</ul>
					<div id="search">
                                            <form action="/NewBank/Pages/search.jsp" method="post">
							<input type="text" class="field blink" title="SEARCH" value="SEARCH" name="search"/>
                                                        <input type="submit" class="btn notext" value="search"  />
						</form>
					</div>
				</div>
				<!-- END Navigation -->
				<!-- Content -->
				<div id="content">
					<div class="cl">&nbsp;</div>
					<!-- Column -->
					<div class="column">
						<div class="service red-box">
							<h2><span class="notext">Personal Banking</span></h2>
							<p>Royal Bank has designed cater to your unique banking needs. Add this to our extensive branch & ATM network and facilities like mobile, phone, internet and doorstep banking, and experience banking at its best.</p>
							<a href="#" class="more">Learn more</a>
						</div>
						<div class="latest-news">
							<div class="latest-bottom">
								<div class="latest-top">
									<a href="#" class="fr"><img src="<%=request.getContextPath()%>/css/images/icon-rss.gif" alt="" /></a>
									<h2>Latest News</h2>
                                                                        <marquee direction="up" scrolldelay="200" height="350">
									<div class="news">
									<small>22.09.2010</small>
										<p align="justify">* HDFC Bank launches New Rural Campaign</p>
									</div>
									<div class="news">
									<small>08.09.2010</small>
										<p align="justify">* Financial Results for the first quarter ended June 30, 2010</p>
									</div>
									<div class="news">
									<small>21.08.2010</small>
										<p align="justify">* Mr. Aditya Puri nominated Asian Captain of Finance 2010</p>
									</div>
									<div class="news">
									<small>05.08.2010</small>
										<p align="justify">* First bank ever to retail silver bars in India</p>
									</div>
									<div class="news">
									<small>15.07.2010</small>
										<p align="justify">* Best New Private Sector Bank - Financial Express - Ernst & Young survey</p>
									</div>
									<div class="news">
									<small>02.07.2010</small>
										<p align="justify">* Rates and Service Charges at a quick glance</p>
									</div>
                                                                        </marquee>
									<div class="cl">&nbsp;</div>
									<a href="#" class="actions">Archives</a><a href="#" class="actions">See All</a>
									<div class="cl">&nbsp;</div>
								</div>
							</div>
						</div>
					</div>
					<!-- END Column -->
					<!-- Column -->
					<div class="column middle-col">
						<div class="service orange-box">
							<h2><span class="notext">Business Banking</span></h2>
							<p>Corporate Banking reflects Royal Bank's strengths in providing our corporate clients in India, a wide array of commercial, transactional and electronic banking products.</p>
							<a href="<%=request.getContextPath()%>/Pages/businessbanking.jsp" class="more">Learn more</a>
						</div>
						<div class="post">
							<h2><span>About</span> Us</h2>
                                                        <p align="justify">Royal Bank was the first of the new private banks to have begun operations in 1994, after the Government of India allowed new private banks to be established. The Bank was promoted jointly by the Administrator of the specified undertaking of the Unit Trust of India (UTI - I), Life Insurance Corporation of India (LIC) and General Insurance Corporation of India (GIC) and other four PSU insurance companies, i.e. National Insurance Company Ltd., The New India Assurance Company Ltd., The Oriental Insurance Company Ltd. and United India Insurance Company Ltd.</p>

							<p align="justify">The Bank today is capitalized to the extent of Rs. 407.44 crores with the public holding (other than promoters and GDRs) at 54.51%.</p>

							<a href="<%=request.getContextPath()%>/Pages/aboutus.jsp" class="more">Read More</a>
						</div>
						<div class="post">
							<h2><span>Farmer</span> Welfare</h2>
							<p align="justify">We are introducing new schemes for farmers just show your certificate that you are working as a farmer more than five years and you will get special benefit from our bank.... .</p>
							<a href="<%=request.getContextPath()%>/Pages/agri.jsp" class="more">Read More</a>
						</div>
					</div>
					<!-- END Column -->
					<!-- Column -->
					<div class="column">
						<div class="service green-box">
							<h2><span class="notext">Agri & Rural Banking</span></h2>
							<p>Royal Bank recognizes your key role in the Agricultural supply chain. Royal Bank offers you financing options designed to service your specific requirements. Speedy and hasale free way of approvals.</p>
							<a href="<%=request.getContextPath()%>/Pages/agri.jsp" class="more">Learn more</a>
						</div>
						<div class="post">
							<h2><span>Project</span> Logic</h2>
							<p align="justify">Here we are explaining which logic we used to implement a bank website so that you can judge this website better and suggest point to improve.</p>
							<a href="<%=request.getContextPath()%>/Pages/projectlogic.jsp" class="more">Read More</a>
						</div>
						<div class="post">
							<h2><span>Gold</span> Investments</h2>
							<p align="justify">Gold has been traditionally the most favoured form of investment for Indians. In fact, India, even today is amongst the highest consumers of Gold in the world.</p>
							<a href="<%=request.getContextPath()%>/Pages/goldInvesment.jsp" class="more">Read More</a>



							<ul>
							<h2><span>Our </span> Services</h2>
							    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/Pages/donate.jsp">Donate Money</a></li>
							    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/Pages/branches.jsp">Royal Bank Branches</a></li>
                                                            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/Pages/Pdf/foreignExchange.pdf" target="_blank">Foreign Exchange Form</a></li>
							    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/Pages/applysavingaccount.jsp">Apply saving account</a></li>
                                                            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/Pages/Pdf/debitform.pdf" target="_blank">Card Holder Dispute form</a></li>
							</ul>
						</div>
					</div>
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
					<p class="fl"><a href="#">Terms of Use</a> | <a href="#">Privacy Policy</a></p>
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