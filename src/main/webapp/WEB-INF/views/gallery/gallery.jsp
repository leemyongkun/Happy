<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!-- CSS Implementing Plugins -->

<link rel="stylesheet" href="${contextRoot}/assets/css/blueimp/blueimp-gallery.css">
<link rel="stylesheet" href="${contextRoot}/assets/css/blueimp/blueimp-gallery-indicator.css">
<link rel="stylesheet" href="${contextRoot}/assets/css/blueimp/blueimp-gallery-video.css">

 <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Gallery</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li class="active">Gallery</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    
<div class="container" style="width:100%">

<div class="fusion-portfolio wrapper-portfolio-no-space cbp-6-col"></div>

<!-- The container for the list of example images -->
<div id="links" class="links"></div>
<!-- The Gallery as lightbox dialog, should be a child element of the document body -->
<div id="blueimp-gallery" class="blueimp-gallery">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>


</div>
 
<script src="${contextRoot}/assets/js/blueimp/blueimp-helper.js"></script>
<script src="${contextRoot}/assets/js/blueimp/blueimp-gallery.js"></script>
<script src="${contextRoot}/assets/js/blueimp/blueimp-gallery-fullscreen.js"></script>
<script src="${contextRoot}/assets/js/blueimp/blueimp-gallery-indicator.js"></script>
<script src="${contextRoot}/assets/js/blueimp/blueimp-gallery-video.js"></script>
<script src="${contextRoot}/assets/js/blueimp/blueimp-gallery-vimeo.js"></script>
<script src="${contextRoot}/assets/js/blueimp/blueimp-gallery-youtube.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
/*jslint evil: true */
/*global window, document*/
// Including jQuery via the protocol relative url above works for both http and https.
// Explicitly including jQuery via https allows running the Gallery demo as local file:
if (!window.jQuery) {
    document.write(
        '<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"><\/script>'
    );
}
</script>
<script src="${contextRoot}/assets/js/blueimp/jquery.blueimp-gallery.js"></script>
<!-- script src="${contextRoot}/assets/js/blueimp/demo.js"></script -->

	
<script type="text/javascript">

function galleryList(){
	
	var tag = "";

	$.ajax({
		url:'${contextRoot}/gallery/list',
		type:"GET",
		//data: $("#storyForm").serialize() ,
		dataType : "json",
		success : function(data) {
			
			
			var carouselLinks = [],
	            linksContainer = $('#links'),
	            baseUrl;
	        // Add the demo images as links with thumbnails to the page:
	        $.each(data.data, function (index, item) {
	            baseUrl = item.img_url;
	            
	            $('<a/>')
	                .append(  $('<img>').prop('src', baseUrl).attr('style','width:160px;height:160px;')   )
	                .prop('href', baseUrl)
	                .prop('title', item.description)
	                .attr('data-gallery', '')
	                .appendTo(linksContainer);
	            
	            carouselLinks.push({
	                href: baseUrl,// + '_c.jpg'
	                title: item.description
	            });
	            
	            
	        });
	        // Initialize the Gallery as image carousel:
	        blueimp.Gallery(carouselLinks, {
	            container: '#blueimp-image-carousel',
	            carousel: true
	        });
			  
			 
		},
		error:function(data){
 			console.log("Connection ERROR");
 		}
	});
}





$(document).ready(function(){
	galleryList();
	
}) 
</script>	

