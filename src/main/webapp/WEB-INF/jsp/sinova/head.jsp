<%@ page pageEncoding="UTF-8"%>

        <!--newsletter_popup_wrap start-->
        <div class="newsletter_popup_wrap newsletter">
            <div class="newsletter_content">
                <button type="button" class="close" data-dismiss="newsletter">&times;</button>
                <div class="d-flex flex-row align-items-center justify-content-start">
                    <div class="ns_image">
                        <img class="img-fluid" src="${ctx}/static/fixfellow/images/ns-img.jpg" alt="" />
                    </div>
                    <div class="ns_text-content">
                        <div class="ttm-icon ttm-icon_element-border ttm-icon_element-color-skincolor ttm-icon_element-size-md ttm-icon_element-style-round"> 
                            <i class="fa fa-envelope-open"></i>
                        </div>
                        <h4>Join Our Newsletter</h4>
                        <p>Subscribe The Fixfellow</p>
                        <!--subscribe_form start-->
                        <form id="subscribe_form" class="subscribe_form" method="post" action="#" data-mailchimp="true">
                            <div class="newsletter_main" id="subscribe_content"> 
                                <div class="form-row">
                                    <input type="email" name="email" placeholder="Your Email Address.." value="">
                                </div>
                                <div class="form-row">
                                    <input type="submit" value="Subscribe Now" class="ttm-btn ttm-btn-size-md ttm-btn-shape-square ttm-btn-style-border ttm-btn-color-skincolor">
                                </div>
                                <div class="form-row">
                                    <input type="checkbox"> <span class="ttm-textcolor-darkgrey">Don’t show this popup again</span>
                                </div>
                            </div>
                            <div id="subscribe-massage"></div>
                        </form>
                        <!--subscribe_form end-->
                    </div>
                </div>
            </div>
        </div>
        <!--newsletter_popup_wrap end-->

        <!--header start-->
        <header id="masthead" class="header ttm-header-style-01">
            <!-- header_main -->
            <div class="header_main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-sm-3 col-3 order-1">
                            <!-- site-branding -->
                            <div class="site-branding">
                                <a class="home-link" href="index.html" title="Fixfellow" rel="home">
                                    <img id="logo-img" class="img-center" src="${ctx}/static/fixfellow/images/logo-img.png" alt="logo-img">
                                </a>
                            </div><!-- site-branding end -->
                        </div>
                        <div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
                        </div>
                        <div class="col-lg-3 col-9 order-lg-3 order-2 text-lg-left text-right">
                            <!-- header_extra -->
                            <div class="header_extra d-flex flex-row align-items-center justify-content-end">
                                <div class="account dropdown">
                                    <div class="d-flex flex-row align-items-center justify-content-start">
                                        <div class="account_icon">
                                            <i class="fa fa-user"></i>
                                        </div>
                                        <div class="account_content">
                                      <c:if test="${not empty  username}">
                                            <div class="cart_price">${username}</div>
                                      </c:if>
                                       <c:if test="${empty username}">
                                            <div class="account_text"><a href="page?page=login">Login</a></div>
                                            <div class="account_text"><a href="page?page=register">Register</a></div>
                                      </c:if>
                                        </div>
                                    </div>
                                </div>
                                <div class="cart dropdown">
                                    <div class="dropdown_link d-flex flex-row align-items-center justify-content-end" data-toggle="dropdown">
                                        <div class="cart_icon">
                                            <i class="fa ti-truck"></i>
                                        </div>
                                        <div class="cart_content">
                                            <div class="cart_text"><a href="#">Logistics</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- header_extra end -->
                        </div>
                    </div>
                </div>
            </div><!-- haeder-main end -->
            <!-- site-header-menu -->
            <div id="site-header-menu" class="site-header-menu ttm-bgcolor-white clearfix">
                <div class="site-header-menu-inner stickable-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="main_nav_content d-flex flex-row">
                                    <div class="cat_menu_container">
                                        <a href="#" class="cat_menu d-flex flex-row align-items-center">
                                            <div class="cat_icon"><i class="fa fa-bars"></i></div>
                                            <div class="cat_text"><span>Products by</span><h4>Categories</h4></div>
                                        </a>
                                        <ul class="cat_menu_list menu-vertical">
                                            <li><a href="#" class="close-side"><i class="fa fa-times"></i></a></li>
											<li class="parent"><a href="#">Pellet Mill Spares</a>
												<div class="sub-menu megamenu column3">
													<ul class="list-unstyled childs_1">
														<li class="title"><a href="product?product=dies">Dies</a></li>
														<li class="title"><a href="product?product=rollerShells">Roller Shells</a></li>
													</ul>
												</div>
											</li>
                                            <li class="parent"><a href="#">Extruder Spares</a>
												<div class="sub-menu megamenu column3">
													<ul class="list-unstyled childs_1">
														<li class="title"><a href="product?product=screw">Screw</a></li>
														<li class="title"><a href="product?product=dischargingDiePlate">Discharging Die Plate</a></li>
														<li class="title"><a href="product?product=extrudingChamber">Extruding Chamber</a></li>
													</ul>
												</div>
											</li>
                                            <li class="parent"><a href="#">Hammer Mill Spares</a>
												<div class="sub-menu megamenu column3">
													<ul class="list-unstyled childs_1">
														<li class="title"><a href="product?product=hammer">Hammer(Tungsten Carbide Enhanced)</a></li>
														<li class="title"><a href="product?product=highIntensityHammer">High Intensity Hammer</a></li>
														<li class="title"><a href="product?product=screenSheet">Screen Sheet</a></li>
													</ul>
												</div>
											</li>
                                            <li class="parent"><a href="#">Pulverizer Spares</a>
												<div class="sub-menu megamenu column3">
													<ul class="list-unstyled childs_1">
														<li class="title"><a href="product?product=beater">Beater</a></li>
														<li class="title"><a href="product?product=atomizerBeater">Atomizer Beater</a></li>
														<li class="title"><a href="product?product=toothRing">Tooth Ring</a></li>
													</ul>
												</div>
											</li>
                                            <li class="parent"><a href="#">Bucket Elevator Spares</a>
												<div class="sub-menu megamenu column3">
													<ul class="list-unstyled childs_1">
														<li class="title"><a href="product?product=bucket">Bucket</a></li>
														<li class="title"><a href="product?product=belt">Belt</a></li>
														<li class="title"><a href="product?product=">Bolt</a></li>
													</ul>
												</div>
											</li>
                                            <li class="parent"><a href="#">Conveyor Spares</a>
												<div class="sub-menu megamenu column3">
													<ul class="list-unstyled childs_1">
														<li class="title"><a href="product?product=flight">Flight</a></li>
														<li class="title"><a href="product?product=">Chain</a></li>
														<li class="title"><a href="product?product=">Imperial Roller Chain</a></li>
														<li class="title"><a href="product?product=">Integral Attachment Roller Chain F Series</a></li>
														<li class="title"><a href="product?product=drag">Drag</a></li>
													</ul>
												</div>
											</li>
                                            <li class="parent"><a href="#">Supplements</a>
												<div class="sub-menu megamenu column3">
													<ul class="list-unstyled childs_1">
														<li class="title"><a href="#">Gearbox</a></li>
														<li class="title"><a href="#">Level Indicator Rotary Paddle Level Switch</a></li>
														<li class="title"><a href="#">Photoelectric Level Switch</a></li>
													</ul>
												</div>
											</li>
                                        </ul>
                                    </div>
                                    <!--site-navigation -->
                                    <div id="site-navigation" class="site-navigation">
                                        <div class="btn-show-menu-mobile menubar menubar--squeeze">
                                            <span class="menubar-box">
                                                <span class="menubar-inner"></span>
                                            </span>
                                        </div>
                                        <!-- menu -->
                                        <nav class="menu menu-mobile" id="menu">
                                            <ul class="nav">
                                                <li class="mega-menu-item">
                                                    <a href="sd?id=about-us">About Us</a>
                                                </li>
                                                <li><a href="sd?id=contact">Contact Us</a></li>
                                                <li class="mega-menu-item">
                                                    <a href="sd?id=news" >Industry News</a>
                                                </li>
                                                <li class="mega-menu-item">
                                                    <a href="#" class="mega-menu-link">Service</a>
                                                    <ul class="mega-submenu">
                                                        <li class=""><a href="#">Delivery Trace</a></li>
                                                        <li class=""><a href="#">Processing & Maintenance Consulting</a></li>
                                                        <li class=""><a href="#">Complaints</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </nav>  
                                    </div><!-- site-navigation end-->
									<div
										class="user_zone_block d-flex flex-row align-items-center justify-content-end ml-auto">
										<div class="icon">
											<a href="sd?id=contact"><i class="fa fa-volume-control-phone"></i></a>
										</div>
										<h6 class="text"><a href="sd?id=contact">联系我们</a></h6>
									</div>
								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- site-header-menu end -->
        </header><!--header end-->