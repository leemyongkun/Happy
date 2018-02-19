<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<!-- Navbar -->
        <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars"></span>
                    </button>
                    <a class="navbar-brand" href="/">
                        <img id="logo-header" src="${contextRoot}/custom/logo/logo_hope.png" alt="Logo 들어갈곳" style="height:30px;">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <ul class="nav navbar-nav">
                        <!-- Home -->
                        <li class="dropdown">
                            <a href="/">
                                HOME<!-- <mvc:message code="menu.main" /> -->
                            </a>
                        </li>
                        <!-- End Home -->


						<!-- About US-->
                        <li class="dropdown">
                            <a href="javascript:void(0);">
                                About Us<!-- <mvc:message code="menu.main" /> -->
                            </a>
                            
                            
                            <ul class="dropdown-menu">
                            	<li>
                            		<a href="${contextRoot}/staff">
                            			<i class="fa  fa-user"></i>
                            			Staff
                            		</a>
                            	</li>
                            	<li>
                            		<a href="${contextRoot}/sponsor">
										<i class="fa  fa-users"></i>
                            			Sponsor
                            		</a>
                            	</li>
                            </ul>
                        </li>
                        <!-- About US-->
                        
                        
                        <!-- Pages -->                        
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                PAGES<!-- <mvc:message code="menu.first" /> -->
                            </a>
                            <ul class="dropdown-menu">
                            	<!-- Story Pages -->
                            	<li>
                            		<a href="${contextRoot}/story">
                            			<i class="fa  fa-paper-plane-o"></i>
                            			Story
                            		</a>
                            	</li>
                            	<li>
                            		<a href="${contextRoot}/travel">
                            			<i class="fa fa-plane"></i>
                            			Travel
                            		</a>
                            	
                            	</li>
                            </ul>
                        </li>
                        <!-- End Pages -->

    					<!-- GALLERY -->
                      <li class="dropdown">
                            <a href="${contextRoot}/gallery"><!-- class="dropdown-toggle" data-toggle="dropdown" -->
                                GALLERY
                            </a>
                            <!-- <ul class="dropdown-menu">
                                <li><a href="gallery?num=1">MENU 1</a></li>
                                <li><a href="gallery?num=2">MENU 2</a></li>
                            </ul> -->
                        </li>
                        <!-- End GALLERY -->
                        
                        <!-- SUPPORT -->
                        <li class="dropdown">
                            <a href="/">
                                SUPPORT<!-- <mvc:message code="menu.main" /> -->
                            </a>
                        </li>
                        <!-- End SUPPORT -->
                        
                        
                         <!-- Contacts -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                Contacts
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="${contextRoot}/qna">자주 하는 질문 </a></li>
                                <li><a href="page_contact1.html">후원방법</a></li>
                            </ul>
                        </li>                    
                        <!-- End Contacts -->
                        
                        
                      
                       

                        <!-- Search Block -->
                       <!--  <li>
                            <i class="search fa fa-search search-btn"></i>
                            <div class="search-open">
                                <div class="input-group animated fadeInDown">
                                    <input type="text" class="form-control" placeholder="Search">
                                    <span class="input-group-btn">
                                        <button class="btn-u" type="button">Go</button>
                                    </span>
                                </div>
                            </div>    
                        </li> -->
                        <!-- End Search Block -->
                    </ul>
                </div><!--/navbar-collapse-->
            </div>    
        </div>            
        <!-- End Navbar -->