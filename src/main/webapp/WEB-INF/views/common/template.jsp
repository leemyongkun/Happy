<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<c:set var="contextRoot" scope="session" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title><mvc:message code="menu.title" /></title>
	<tiles:insertAttribute name="include_css" />
</head>	
<tiles:insertAttribute name="include_js" />

<body>
<div class="wrapper">
    <!--=== Header ===-->    
    <div class="header">
    
    
	<!-- Start Topbar -->
	<tiles:insertAttribute name="topbar" />
    <!-- End Topbar -->
   	<!-- Start Navbar -->
	<tiles:insertAttribute name="navbar" />
    <!-- End Navbar -->
    </div>
    <!--=== End Header ===-->
    
    <!--=== Slider ===-->
    <c:if test="${pageStatus=='home' }">
		<tiles:insertAttribute name="slider" />
	</c:if>
    <!--=== End Slider ===-->
   
    <!--=== Content Part ===-->
    <tiles:insertAttribute name="body"/>		
    <!-- End Content Part -->
    
    
    <!--=== Modal Part ===-->
    <tiles:insertAttribute name="modal"/>		
    <!-- End Modal Part -->

    <!--=== Footer Version 1 ===-->
   	<!--  tiles:insertAttribute name="footer"/ -->
    <!--=== End Footer Version 1 ===-->
</div><!--/wrapper-->


<!--[if lt IE 9]>
    <script src="${contextRoot }/assets/plugins/respond.js"></script>
    <script src="${contextRoot }/assets/plugins/html5shiv.js"></script>
    <script src="${contextRoot }/assets/js/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>

<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        App.initSliders();      
        ParallaxSlider.initParallaxSlider();
    });
</script>

</html>