<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags" %>

<c:set var="contextRoot" scope="session" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title><mvc:message code="menu.title" /></title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="${contextRoot }/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${contextRoot }/assets/css/style.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="${contextRoot }/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="${contextRoot }/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextRoot }/assets/plugins/flexslider/flexslider.css">  
    <link rel="stylesheet" href="${contextRoot }/assets/plugins/parallax-slider/css/parallax-slider.css">

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="${contextRoot }/assets/css/theme-colors/default.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="${contextRoot }/assets/css/custom.css">
</head>	

<body>
<div class="wrapper">
    <!--=== Header ===-->    
    <div class="header">
        <!-- Topbar -->
        <div class="topbar">
            <div class="container">
                <!-- Topbar Navigation -->
                <ul class="loginbar pull-right">
                    <li>
                        <i class="fa fa-globe"></i>
                        <a>Languages</a>
                        <ul class="languages">
                            <li class="active">
                                <a href="?language=en">English <i class="fa fa-check"></i></a> 
                            </li>
                            <li><a href="?language=kr">Korea</a></li>
                        </ul>
                    </li>
                    <li class="topbar-devider"></li>   
                    <li><a href="page_faq.html">Help</a></li>  
                    <li class="topbar-devider"></li>   
                    <li><a href="page_login.html">Login</a></li>   
                </ul>
                <!-- End Topbar Navigation -->
            </div>
        </div>
        <!-- End Topbar -->
    
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
                        <li class="dropdown active">
                            <a href="/" class="dropdown-toggle" data-toggle="dropdown">
                                <mvc:message code="menu.main" />
                            </a>
                            <!-- <ul class="dropdown-menu">
                                <li class="active"><a href="index.html">Option 1: Default Page</a></li>

                                One Page
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Option 2: One Page</a>
                                    <ul class="dropdown-menu">
                                        <li><a target="_blank" href="One-Page/index.html">- One Page Template</a></li>                                
                                        <li><a target="_blank" href="One-Page/dark-page-example.html">- One Page Dark Theme</a></li>                                
                                    </ul>                                
                                </li>
                                End One Page
                                
                                Shop UI Page
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Option 3: Shop UI</a>
                                    <ul class="dropdown-menu">
                                        <li><a target="_blank" href="Shop-UI/index.html">- Home Page</a></li>
                                        <li><a target="_blank" href="Shop-UI/shop-ui-inner.html">- Product Page</a></li>
                                        <li><a target="_blank" href="Shop-UI/shop-ui-filter-grid.html">- Filter Grid Page</a></li>
                                        <li><a target="_blank" href="Shop-UI/shop-ui-filter-list.html">- Filter List Page</a></li>                   
                                        <li><a target="_blank" href="Shop-UI/shop-ui-add-to-cart.html">- Checkout Page</a></li>                            
                                        <li><a target="_blank" href="Shop-UI/shop-ui-login.html">- Login Page</a></li>                               
                                        <li><a target="_blank" href="Shop-UI/shop-ui-register.html">- Registration Page</a></li>
                                    </ul>                                
                                </li>
                                End Shop UI

                                <li><a href="page_home8.html">Option 4: Home Discover</a></li>
                                <li><a href="page_home9.html">Option 5: Home Creative</a></li>
                                <li><a href="page_home10.html">Option 6: Home Inspire</a></li>
                                <li><a href="page_home11.html">Option 7: Home Desire</a></li>
                                <li><a href="page_jobs.html">Option 8: Home Jobs</a></li>
                                <li><a href="page_home3.html">Option 9: Amazing Content</a></li>
                                <li><a href="page_home6.html">Option 10: Home Magazine</a></li>
                                <li><a href="page_home4.html">Option 11: Home Sidebar</a></li>
                                <li><a href="page_home7.html">Option 12: Home Portfolio</a></li>
                                <li><a href="page_home1.html">Option 13: Home Default v1</a></li>
                                <li><a href="page_home2.html">Option 14: Home Default v2</a></li>
                                <li><a href="page_home5.html">Option 15: Home Default v3</a></li>

                                Misc Pages
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Options: Misc Pages</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_misc_blank.html">- Blank page</a></li>
                                        <li><a href="page_misc_boxed.html">- Boxed Page</a></li>
                                        <li><a href="page_misc_boxed_img.html">- Boxed Image Page</a></li>
                                        <li><a href="page_misc_boxed_fixed_header.html">- Boxed Fixed Menu</a></li>
                                        <li><a href="page_misc_fixed_header.html">- Fixed Menu</a></li>
                                        <li><a href="page_misc_dark.html">- Dark Page</a></li>
                                        <li><a href="page_misc_dark_boxed.html">- Dark Boxed Page</a></li>
                                        <li><a href="page_misc_dark_other_color.html">- Dark Page With Different Theme Color</a></li>
                                    </ul>                                
                                </li>
                                End Misc Pages                                
                            </ul> -->
                        </li>
                        <!-- End Home -->

                        <!-- Pages -->                        
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                <mvc:message code="menu.first" />
                            </a>
                            <ul class="dropdown-menu">
                                <!-- About Pages -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">About Pages</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_about1.html">About Us</a></li>
                                        <li><a href="page_about.html">About Basic</a></li>
                                        <li><a href="page_about_me.html">About Me</a></li>
                                        <li><a href="page_about_our_team.html">About Our Team</a></li>
                                    </ul>                                
                                </li>
                                <!-- End About Pages -->

                                <!-- Profile Pages -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Profile Dashboard Pages</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="profile.html">Profile Main Page</a></li>
                                        <li><a href="profile_me.html">Profile Overview</a></li>
                                        <li><a href="profile_users.html">Profile Users</a></li>
                                        <li><a href="profile_projects.html">Profile Projects</a></li>
                                        <li><a href="profile_comments.html">Profile Comments</a></li>
                                        <li><a href="profile_history.html">Profile History</a></li>
                                        <li><a href="profile_settings.html">Profile Settings</a></li>
                                    </ul>                                
                                </li>
                                <!-- End Profile Pages -->

                                <!-- Job Pages -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Job Pages</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_jobs.html">Jobs Main Page</a></li>                                
                                        <li><a href="page_jobs_inner.html">Jobs Description Default</a></li>                                
                                        <li><a href="page_jobs_inner1.html">Jobs Description Basic</a></li>                                
                                        <li><a href="page_jobs_inner2.html">Jobs Description Min</a></li>                                
                                    </ul>                                
                                </li>
                                <!-- End Job Pages -->

                                <!-- Email Tempaltes -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Email Templates</a>
                                    <ul class="dropdown-menu">
                                        <li class="dropdown-submenu">
                                            <a href="javascript:void(0);">Email Corporate</a>
                                            <ul class="dropdown-menu">
                                                <li><a target="_blank" href="Email-Templates/corporate/email_corporate_aqua.html">Corporate Aqua Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/corporate/email_corporate_blue.html">Corporate Blue Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/corporate/email_corporate_brown.html">Corporate Brown Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/corporate/email_corporate_dark_blue.html">Corporate Dark Blue Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/corporate/email_corporate_green.html">Corporate Green Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/corporate/email_corporate_light_green.html">Corporate Light Green Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/corporate/email_corporate_grey.html">Corporate Grey Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/corporate/email_corporate_orange.html">Corporate Orange Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/corporate/email_corporate_purple.html">Corporate Purple Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/corporate/email_corporate_red.html">Corporate Red Color</a></li>
                                            </ul>                                
                                        </li>
                                        <li class="dropdown-submenu">
                                            <a href="javascript:void(0);">Email Flat</a>
                                            <ul class="dropdown-menu">
                                                <li><a target="_blank" href="Email-Templates/flat/email_flat_aqua.html">Flat Aqua Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/flat/email_flat_blue.html">Flat Blue Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/flat/email_flat_brown.html">Flat Brown Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/flat/email_flat_dark_blue.html">Flat Dark Blue Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/flat/email_flat_green.html">Flat Green Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/flat/email_flat_light_green.html">Flat Light Green Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/flat/email_flat_grey.html">Flat Grey Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/flat/email_flat_orange.html">Flat Orange Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/flat/email_flat_purple.html">Flat Purple Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/flat/email_flat_red.html">Flat Red Color</a></li>
                                            </ul>                                
                                        </li>
                                        <li class="dropdown-submenu">
                                            <a href="javascript:void(0);">Email Modern</a>
                                            <ul class="dropdown-menu">
                                                <li><a target="_blank" href="Email-Templates/modern/email_modern_aqua.html">Modern Aqua Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/modern/email_modern_blue.html">Modern Blue Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/modern/email_modern_brown.html">Modern Brown Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/modern/email_modern_dark_blue.html">Modern Dark Blue Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/modern/email_modern_green.html">Modern Green Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/modern/email_modern_light_green.html">Modern Light Green Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/modern/email_modern_grey.html">Modern Grey Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/modern/email_modern_orange.html">Modern Orange Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/modern/email_modern_purple.html">Modern Purple Color</a></li>
                                                <li><a target="_blank" href="Email-Templates/modern/email_modern_red.html">Modern Red Color</a></li>
                                            </ul>                                
                                        </li>
                                    </ul>                                
                                </li>

                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Service Pages</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_services.html">Our Services</a></li>
                                        <li><a href="page_services1.html">Our Services Basic</a></li>
                                    </ul>                                
                                </li>
                                <!-- End Email Tempaltes -->

                                <!-- Funny Boxes -->
                                <li><a href="page_funny_boxes.html">Funny Boxes</a></li>
                                <!-- End Funny Boxes -->

                                <!-- Pricing Tables -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Pricing Tables</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_pricing_colorful.html">Colorful Pricing Tables</a></li>       
                                        <li><a href="page_pricing_flat.html">Flat Pricing Tables</a></li>
                                        <li><a href="page_pricing_light.html">Light Pricing Tables</a></li>
                                        <li><a href="page_pricing_mega.html">Mega Pricing Tables</a></li>
                                        <li><a href="page_pricing.html">Default Pricing Tables</a></li>
                                    </ul>                                
                                </li>
                                <!-- End Pricing Tables -->

                                <!-- Invoice Page -->
                                <li><a href="page_invoice.html">Invoice Page</a></li>
                                <!-- End Invoice Page -->

                                <!-- Search Results -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Search Results</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_search_inner.html">Default Search Results</a></li>
                                        <li><a href="page_search_table.html">Search Result Tables</a></li>
                                    </ul>                                
                                </li>
                                <!-- End Search Results -->

                                <!-- Coming Soon -->
                                <li><a href="page_coming_soon.html">Coming Soon</a></li>
                                <!-- End Coming Soon -->

                                <!-- FAQs Pages -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">FAQs Pages</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_faq1.html">FAQs Page</a></li>
                                        <li><a href="page_faq.html">FAQs Basic</a></li>
                                    </ul>                                
                                </li>
                                <!-- End FAQs Pages -->

                                <!-- Gallery Page -->
                                <li><a href="page_gallery.html">Gallery Page</a></li>
                                <!-- End Gallery Page -->

                                <!-- Login and Registration -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Login and Registration</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_registration.html">Registration Page</a></li>
                                        <li><a href="page_login.html">Login Page</a></li>
                                        <li><a href="page_registration1.html">Registration Option</a></li>
                                        <li><a href="page_login1.html">Login Option</a></li>
                                    </ul>                                
                                </li>
                                <!-- End Login and Registration -->

                                <!-- Error Pages -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Error Pages</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_404_error.html">404 Error Default</a></li>
                                        <li><a href="page_404_error1.html">404 Error Option 1</a></li>
                                        <li><a href="page_404_error2.html">404 Error Option 2</a></li>
                                        <li><a href="page_404_error3.html">404 Error Option 3</a></li>
                                    </ul>                                
                                </li>
                                <!-- End Error Pages -->

                                <!-- Clients Page -->
                                <li><a href="page_clients.html">Clients Page</a></li>
                                <!-- End Clients Page -->

                                <!-- Column Pages -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Column Pages</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="page_2_columns_left.html">2 Columns Page Left</a></li>
                                        <li><a href="page_2_columns_right.html">2 Columns Page Right</a></li>
                                        <li><a href="page_3_columns.html">3 Columns Page</a></li>
                                    </ul>                                
                                </li>
                                <!-- End Column Pages -->

                                <!-- Privacy Policy -->
                                <li><a href="page_privacy.html">Privacy Policy</a></li>
                                <!-- End Privacy Policy -->

                                <!-- Terms Of Service -->
                                <li><a href="page_terms.html">Terms Of Service</a></li>
                                <!-- End Terms Of Service -->

                                <!-- Sub Level Menu -->
                                <li class="dropdown-submenu">
                                    <a href="javascript:void(0);">Sub Level 1</a>
                                    <ul class="dropdown-menu no-bottom-space">
                                        <li><a href="index.hmtl">Sub Level 2</a></li>
                                        <li class="dropdown-submenu">
                                            <a href="javascript:void(0);">Sub Level 2</a>
                                            <ul class="dropdown-menu">
                                                <li><a href="index.hmtl">Sub Level 3</a></li>
                                                <li><a href="index.hmtl">Sub Level 3</a></li>
                                                <li><a href="index.hmtl">Sub Level 3</a></li>
                                                <li><a href="index.hmtl">Sub Level 3</a></li>
                                            </ul>                                
                                        </li>
                                        <li><a href="index.hmtl">Sub Level 2</a></li>
                                        <li class="dropdown-submenu">
                                            <a href="javascript:void(0);">Sub Level 2</a>
                                            <ul class="dropdown-menu no-bottom-space">
                                                <li><a href="index.hmtl">Sub Level 3</a></li>
                                                <li><a href="index.hmtl">Sub Level 3</a></li>
                                                <li><a href="index.hmtl">Sub Level 3</a></li>
                                            </ul>                                
                                        </li>
                                    </ul>                                
                                </li>                            
                                <!-- End Sub Level Menu -->
                            </ul>
                        </li>
                        <!-- End Pages -->

                        <!-- Features -->
                        <li class="dropdown mega-menu-fullwidth">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                Features
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="mega-menu-content disable-icons">
                                        <div class="container">
                                            <div class="row equal-height">
                                                <div class="col-md-3 equal-height-in">
                                                    <ul class="list-unstyled equal-height-list">
                                                        <li><h3>Typography &amp; Components</h3></li>

                                                        <!-- Typography -->
                                                        <li><a href="feature_typo_general.html"><i class="fa fa-sort-alpha-asc"></i> General Typography</a></li>
                                                        <li><a href="feature_typo_headings.html"><i class="fa fa-magic"></i> Headings Options</a></li>
                                                        <li><a href="feature_typo_dividers.html"><i class="fa fa-ellipsis-h"></i> Dividers</a></li>
                                                        <li><a href="feature_typo_blockquote.html"><i class="fa fa-quote-left"></i> Blockquote Blocks</a></li>
                                                        <li><a href="feature_typo_boxshadows.html"><i class="fa fa-asterisk"></i> Box Shadows</a></li>
                                                        <li><a href="feature_typo_testimonials.html"><i class="fa fa-comments"></i> Testimonials</a></li>
                                                        <li><a href="feature_typo_tagline_boxes.html"><i class="fa fa-tasks"></i> Tagline Boxes</a></li>
                                                        <li><a href="feature_typo_grid.html"><i class="fa fa-align-justify"></i> Grid Layouts</a></li>
                                                        <!-- End Typography -->
                                                        
                                                        <!-- Components -->
                                                        <li><a href="feature_compo_messages.html"><i class="fa fa-comment"></i> Alerts &amp; Messages</a></li>
                                                        <li><a href="feature_compo_labels.html"><i class="fa fa-tags"></i> Labels &amp; Badges</a></li>
                                                        <li><a href="feature_compo_media.html"><i class="fa fa-volume-down"></i> Audio/Videos &amp; Images</a></li>
                                                        <li><a href="feature_compo_pagination.html"><i class="fa fa-arrows-h"></i> Paginations</a></li>
                                                        <!-- End Components -->
                                                    </ul>
                                                </div>
                                                <div class="col-md-3 equal-height-in">
                                                    <ul class="list-unstyled equal-height-list">
                                                        <li><h3>Header &amp; Footers</h3></li>
                                                   
                                                        <!-- Header & Footer -->
                                                        <li><a href="feature_headers.html"><i class="fa fa-navicon"></i> Headers</a></li>
                                                        <li><a href="feature_footers.html"><i class="fa fa-navicon"></i> Footers</a></li>
                                                        <!-- End Header & Footer -->

                                                        <li class="big-screen-space"></li>
                                                        
                                                        <li><h3>Buttons &amp; Icons</h3></li>
                                                    
                                                        <!-- Buttons -->
                                                        <li><a href="feature_btn_general.html"><i class="fa fa-flask"></i> General Buttons</a></li>
                                                        <li><a href="feature_btn_brands.html"><i class="fa fa-html5"></i> Brand &amp; Social Buttons</a></li>
                                                        <li><a href="feature_btn_effects.html"><i class="fa fa-bolt"></i> Loading &amp; Hover Effects</a></li>
                                                        <!-- End Buttons -->
                                                        
                                                        <!-- Icons -->
                                                        <li><a href="feature_icon_general.html"><i class="fa fa-chevron-circle-right"></i> General Icons</a></li>
                                                        <li><a href="feature_icon_fa.html"><i class="fa fa-chevron-circle-right"></i> Font Awesome Icons</a></li>
                                                        <li><a href="feature_icon_line.html"><i class="fa fa-chevron-circle-right"></i> Line Icons</a></li>
                                                        <li><a href="feature_icon_glyph.html"><i class="fa fa-chevron-circle-right"></i> Glyphicons Icons (Bootstrap)</a></li>
                                                        <li><a href="feature_icon_glyph_pro.html"><i class="fa fa-chevron-circle-right"></i> Glyphicons Icons Pro</a></li>  
                                                        <!-- End Icons -->
                                                    </ul>                                
                                                </div>
                                                <div class="col-md-3 equal-height-in">
                                                    <ul class="list-unstyled equal-height-list">
                                                        <li><h3>Common elements</h3></li>

                                                        <!-- Content Boxes -->
                                                        <li><a href="feature_box_general.html"><i class="fa fa-cog"></i> General Content Boxes</a></li>
                                                        <li><a href="feature_box_colored.html"><i class="fa fa-align-center"></i> Colored Boxes</a></li>
                                                        <li><a href="feature_box_funny.html"><i class="fa fa-bars"></i> Funny Boxes</a></li>
                                                        <li><a href="feature_thumbails.html"><i class="fa fa-image"></i> Thumbnails</a></li>
                                                        <li><a href="feature_accordion_and_tabs.html"><i class="fa fa-list-ol"></i> Accordion &amp; Tabs</a></li>
                                                        <li><a href="feature_timeline1.html"><i class="fa fa-dot-circle-o"></i> Timeline Option 1</a></li>
                                                        <li><a href="feature_timeline2.html"><i class="fa fa-dot-circle-o"></i> Timeline Option 2</a></li>
                                                        <li><a href="feature_table_general.html"><i class="fa fa-table"></i> Tables</a></li>
                                                        <li><a href="feature_compo_progress_bars.html"><i class="fa fa-align-left"></i> Progress Bars</a></li>
                                                        <li><a href="feature_compo_panels.html"><i class="fa fa-columns"></i> Panels</a></li>
                                                        <!-- End Common Elements -->
                                                    </ul>    
                                                </div>
                                                <div class="col-md-3 equal-height-in">
                                                    <ul class="list-unstyled equal-height-list">
                                                        <li><h3>Forms &amp; Infographics</h3></li>

                                                        <!-- Forms -->
                                                        <li><a href="feature_form_general.html"><i class="fa fa-bars"></i> Common Bootstrap Forms</a></li>
                                                        <li><a href="feature_form_general1.html"><i class="fa fa-bars"></i> General Unify Forms</a></li>
                                                        <li><a href="feature_form_advanced.html"><i class="fa fa-bars"></i> Advanced Forms</a></li>
                                                        <li><a href="feature_form_layouts.html"><i class="fa fa-bars"></i> Form Layouts</a></li>
                                                        <li><a href="feature_form_layouts_advanced.html"><i class="fa fa-bars"></i> Advanced Layout Forms</a></li>
                                                        <li><a href="feature_form_states.html"><i class="fa fa-bars"></i> Form States</a></li>
                                                        <li><a href="feature_form_sliders.html"><i class="fa fa-bars"></i> Form Sliders</a></li>
                                                        <li><a href="feature_form_modals.html"><i class="fa fa-bars"></i> Modals</a></li>
                                                        <!-- End Forms -->
                                                        
                                                        <!-- Infographics -->
                                                        <li><a href="feature_carousels.html"><i class="fa fa-sliders"></i> Carousel Examples</a></li>
                                                        <li><a href="feature_compo_charts.html"><i class="fa fa-pie-chart"></i> Charts &amp; Countdowns</a></li>
                                                        <li><a href="feature_maps_google.html"><i class="fa fa-map-marker"></i> Google Maps</a></li>
                                                        <li><a href="feature_maps_vector.html"><i class="fa fa-align-center"></i> Vector Maps</a></li>
                                                        <!-- End Infographics -->
                                                    </ul>                                
                                                </div>
                                            </div>
                                        </div>    
                                    </div>    
                                </li>
                            </ul>
                        </li>
                        <!-- End Features -->

                        <!-- Portfolio -->
                      <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                GALLERY
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="gallery?num=1">MENU 1</a></li>
                                <li><a href="gallery?num=2">MENU 2</a></li>
                            </ul>
                        </li>
                        <!-- Ens Portfolio -->

                        <!-- Blog -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                Blog
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="blog_page.html">Blog Page</a></li>
                                <li><a href="blog_large.html">Blog Large</a></li>
                                <li><a href="blog_medium.html">Blog Medium</a></li>
                                <li><a href="blog_full_width.html">Blog Full Width</a></li>
                                <li><a href="blog_timeline.html">Blog Timeline</a></li>
                                <li><a href="blog_masonry_3col.html">Masonry Grid Blog</a></li>
                                <li><a href="blog_right_sidebar.html">Blog Right Sidebar</a></li>
                                <li><a href="blog_left_sidebar.html">Blog Left Sidebar</a></li>
                                <li><a href="blog_item_option1.html">Blog Item Option 1</a></li>
                                <li><a href="blog_item_option2.html">Blog Item Option 2</a></li>
                            </ul>
                        </li>
                        <!-- End Blog -->

                        <!-- Contacts -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                                Contacts
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="page_contact1.html">Contacts Default</a></li>
                                <li><a href="page_contact_advanced.php">Contacts Advanced</a></li>
                                <li><a href="page_contact2.html">Contacts Option 1</a></li>
                                <li><a href="page_contact3.html">Contacts Option 2</a></li>
                                <li><a href="page_contact4.html">Contacts Option 3</a></li>
                            </ul>
                        </li>                    
                        <!-- End Contacts -->

                        <!-- Search Block -->
                        <li>
                            <i class="search fa fa-search search-btn"></i>
                            <div class="search-open">
                                <div class="input-group animated fadeInDown">
                                    <input type="text" class="form-control" placeholder="Search">
                                    <span class="input-group-btn">
                                        <button class="btn-u" type="button">Go</button>
                                    </span>
                                </div>
                            </div>    
                        </li>
                        <!-- End Search Block -->
                    </ul>
                </div><!--/navbar-collapse-->
            </div>    
        </div>            
        <!-- End Navbar -->
    </div>
    <!--=== End Header ===-->    

    <!--=== Slider ===-->
    <div class="slider-inner">
        <div id="da-slider" class="da-slider">
            <div class="da-slide">
                <h2><i>저기요 잠깐만요2!</i> <br /> <i> 100원 있어요?</i> <br /> <i>DESIGN</i></h2>
                <p><i>Lorem ipsum dolor amet</i> <br /> <i>tempor incididunt ut</i> <br /> <i>veniam omnis </i></p>
                <div class="da-img"><img class="img-responsive" src="${contextRoot }/assets/plugins/parallax-slider/img/1.png" alt=""></div>
            </div>
            
        </div>
    </div><!--/slider-->
    <!--=== End Slider ===-->

    <!--=== Purchase Block ===
    <div class="purchase">
        <div class="container">
            <div class="row">
                <div class="col-md-9 animated fadeInLeft">
                    <span>Unify is a clean and fully responsive incredible Template.</span>
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi  vehicula sem ut volutpat. Ut non libero magna fusce condimentum eleifend enim a feugiat corrupti quos.</p>
                </div>            
                <div class="col-md-3 btn-buy animated fadeInRight">
                    <a href="#" class="btn-u btn-u-lg"><i class="fa fa-cloud-download"></i> Download Now</a>
                </div>
            </div>
        </div>
    </div>/row-->
    <!-- End Purchase Block -->

    <!--=== Content Part ===-->
    <div class="container content">	
    	<!-- Recent Works -->
        <div class="headline"><h2>Recent Works</h2></div>
        <div class="row margin-bottom-20">
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
                	<div class="thumbnail-img">
                        <div class="overflow-hidden">
                            <img class="img-responsive" src="${contextRoot }/custom/images/1.jpg" alt="">
                        </div>
                        <a class="btn-more hover-effect" href="#">read more +</a>					
                    </div>
                    <div class="caption">
                        <h3><a class="hover-effect" href="#">Project One</a></h3>
                        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
                    <div class="thumbnail-img">
                        <div class="overflow-hidden">
                            <img class="img-responsive" src="${contextRoot }/custom/images/2.jpg" alt="">
                        </div>
                        <a class="btn-more hover-effect" href="#">read more +</a>                   
                    </div>
                    <div class="caption">
                        <h3><a class="hover-effect" href="#">Project Two</a></h3>
                        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
                    <div class="thumbnail-img">
                        <div class="overflow-hidden">
                            <img class="img-responsive" src="${contextRoot }/custom/images/3.jpg" alt="">
                        </div>
                        <a class="btn-more hover-effect" href="#">read more +</a>                   
                    </div>
                    <div class="caption">
                        <h3><a class="hover-effect" href="#">Project Three</a></h3>
                        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6">
                <div class="thumbnails thumbnail-style thumbnail-kenburn">
                    <div class="thumbnail-img">
                        <div class="overflow-hidden">
                            <img class="img-responsive" src="${contextRoot }/custom/images/4.jpg" alt="">
                        </div>
                        <a class="btn-more hover-effect" href="#">read more +</a>                   
                    </div>
                    <div class="caption">
                        <h3><a class="hover-effect" href="#">Project Four</a></h3>
                        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
                    </div>
                </div>
            </div>
        </div>
    	<!-- End Recent Works -->
	<!-- Service Blocks -->
    	<!-- <div class="row margin-bottom-30">
        	<div class="col-md-4">
        		<div class="service">
                    <i class="fa fa-compress service-icon"></i>
        			<div class="desc">
        				<h4>Fully Responsive</h4>
                        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus etiam sem...</p>
        			</div>
        		</div>	
        	</div>
        	<div class="col-md-4">
        		<div class="service">
                    <i class="fa fa-cogs service-icon"></i>
        			<div class="desc">
        				<h4>HTML5 + CSS3</h4>
                        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus etiam sem...</p>
        			</div>
        		</div>	
        	</div>
        	<div class="col-md-4">
        		<div class="service">
                    <i class="fa fa-rocket service-icon"></i>
        			<div class="desc">
        				<h4>Launch Ready</h4>
                        <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus etiam sem...</p>
        			</div>
        		</div>	
        	</div>			    
    	</div> -->
    	<!-- End Service Blokcs -->
    	<!-- Info Blokcs -->
    	<div class="row margin-bottom-30">
        	<!-- Welcome Block -->
    		<div class="col-md-8 md-margin-bottom-40">
    			<div class="headline"><h2>Welcome To HappyPoor</h2></div>
                <div class="row">
                    <div class="col-sm-4">
                        <img class="img-responsive margin-bottom-20" src="${contextRoot }/custom/images/poor.jpg" alt="">
                    </div>
                    <div class="col-sm-8">
                        <p>남미 희망꽃 학교 운영위원이 되어 주셔서 감사합니다.
학교 운영회비는 농협 302-0814-5516-11 한영준
으로 5년 정기이체 부탁드립니다.</p>
                        <ul class="list-unstyled margin-bottom-20">
                            <li><i class="fa fa-check color-green"></i> 100원 거지임.</li>
                            <li><i class="fa fa-check color-green"></i> 지독하게 뻔뻔함.</li>
                            <li><i class="fa fa-check color-green"></i> 잘생긴걸 지가 앎.</li>
                        </ul>                    
                    </div>
                </div>

                <blockquote class="hero-unify">
                    <p>구걸중</p>
                    <small>Youngjun Han</small>
                </blockquote>
            </div><!--/col-md-8-->        

            <!-- Latest Shots -->
            <div class="col-md-4">
    			<div class="headline"><h2>Latest Shots</h2></div>
    			<div id="myCarousel" class="carousel slide carousel-v1">
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="${contextRoot }/custom/images/last1.jpg" style="height:270px;" alt="">
                            <div class="carousel-caption">
                                <p>이미지 페북에서 퍼옴.</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="${contextRoot }/custom/images/last2.jpg" style="height:270px;" alt="">
                            <div class="carousel-caption">
                                <p>이미지 페북에서 퍼옴.</p>
                            </div>
                            </div>
                        <div class="item">
                            <img src="${contextRoot }/custom/images/last3.jpg" style="height:270px;" alt="">
                            <div class="carousel-caption">
                                <p>이미지 페북에서 퍼옴.</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="carousel-arrow">
                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
    			</div>
            </div><!--/col-md-4-->
    	</div>	
    	<!-- End Info Blokcs -->

        <!-- Our Clients -->
       <!--  <div id="clients-flexslider" class="flexslider home clients">
            <div class="headline"><h2>Our Clients</h2></div>    
            <ul class="slides">
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/hp_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/hp.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/igneus_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/igneus.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/vadafone_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/vadafone.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/walmart_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/walmart.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/shell_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/shell.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/natural_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/natural.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/aztec_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/aztec.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/gamescast_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/gamescast.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/cisco_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/cisco.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/everyday_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/everyday.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/cocacola_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/cocacola.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/spinworkx_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/spinworkx.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/shell_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/shell.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/natural_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/natural.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/gamescast_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/gamescast.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/everyday_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/everyday.png" class="color-img" alt="">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="${contextRoot }/assets/img/clients/spinworkx_grey.png" alt=""> 
                        <img src="${contextRoot }/assets/img/clients/spinworkx.png" class="color-img" alt="">
                    </a>
                </li>
            </ul>
        </div> --><!--/flexslider-->
        <!-- End Our Clients -->
    </div><!--/container-->		
    <!-- End Content Part -->

    <!--=== Footer Version 1 ===-->
    <div class="footer-v1">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <a href="index.html"><img id="logo-footer" class="footer-logo" src="${contextRoot }/assets/img/logo2-default.png" alt=""></a>
                        <p>About Unify dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero tincidunt sodales.</p>
                        <p>Duis eleifend fermentum ante ut aliquam. Cras mi risus, dignissim sed adipiscing ut, placerat non arcu.</p>    
                    </div><!--/col-md-3-->
                    <!-- End About -->

                    <!-- Latest -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="posts">
                            <div class="headline"><h2>Latest Posts</h2></div>
                            <ul class="list-unstyled latest-list">
                                <li>
                                    <a href="#">Incredible content</a>
                                    <small>May 8, 2014</small>
                                </li>
                                <li>
                                    <a href="#">Best shoots</a>
                                    <small>June 23, 2014</small>
                                </li>
                                <li>
                                    <a href="#">New Terms and Conditions</a>
                                    <small>September 15, 2014</small>
                                </li>
                            </ul>
                        </div>
                    </div><!--/col-md-3-->  
                    <!-- End Latest --> 
                    
                    <!-- Link List -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2>Useful Links</h2></div>
                        <ul class="list-unstyled link-list">
                            <li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Community</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
                        </ul>
                    </div><!--/col-md-3-->
                    <!-- End Link List -->                    

                    <!-- Address -->
                    <div class="col-md-3 map-img md-margin-bottom-40">
                        <div class="headline"><h2>Contact Us</h2></div>                         
                        <address class="md-margin-bottom-40">
                            25, Lorem Lis Street, Orange <br />
                            California, US <br />
                            Phone: 800 123 3456 <br />
                            Fax: 800 123 3456 <br />
                            Email: <a href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
                        </address>
                    </div><!--/col-md-3-->
                    <!-- End Address -->
                </div>
            </div> 
        </div><!--/footer-->

        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">                     
                        <p>
                            2014 &copy; All Rights Reserved.
                           <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                        </p>
                    </div>

                    <!-- Social Links -->
                    <div class="col-md-6">
                        <ul class="footer-socials list-inline">
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
                                    <i class="fa fa-skype"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
                                    <i class="fa fa-pinterest"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Dribbble">
                                    <i class="fa fa-dribbble"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- End Social Links -->
                </div>
            </div> 
        </div><!--/copyright-->
    </div>
    <!--=== End Footer Version 1 ===-->
</div><!--/wrapper-->

<!-- JS Global Compulsory -->			
<script type="text/javascript" src="${contextRoot }/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${contextRoot }/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${contextRoot }/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="${contextRoot }/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${contextRoot }/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="${contextRoot }/assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="${contextRoot }/assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${contextRoot }/assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="${contextRoot }/assets/js/app.js"></script>
<script type="text/javascript" src="${contextRoot }/assets/js/plugins/parallax-slider.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        App.initSliders();      
        ParallaxSlider.initParallaxSlider();
    });
</script>
<!--[if lt IE 9]>
    <script src="${contextRoot }/assets/plugins/respond.js"></script>
    <script src="${contextRoot }/assets/plugins/html5shiv.js"></script>
    <script src="${contextRoot }/assets/js/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>