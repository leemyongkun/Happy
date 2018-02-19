<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="${contextRoot}/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextRoot}/assets/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.css">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/themes/base/jquery-ui.css" type="text/css" />
    <link rel="stylesheet" href="${contextRoot}/custom/js/plupload/jquery.ui.plupload/css/jquery.ui.plupload.css" type="text/css" />
    



	
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Gallery</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li class="active">Gallery</li>
            </ul>
        </div><!--/container-->
    </div><!--/end breadcrumbs-->

    <!--=== Container Part ===-->
    <div class="content">
        <div class="fusion-portfolio wrapper-portfolio-no-space cbp-6-col">
            <div id="filters-container" class="cbp-l-filters-alignCenter">
                <div data-filter="*" class="cbp-filter-item-active cbp-filter-item">All</div>
                <div data-filter=".motion" class="cbp-filter-item">Motion</div>
                <div data-filter=".design" class="cbp-filter-item">Design</div>
                <div data-filter=".illustration" class="cbp-filter-item">Illustration</div>
            </div>

            <div id="grid-container" class="cbp-l-grid-gallery">
                <ul  id="galleryList">
	
                </ul>
            </div>
        </div><!--/End Wrapper Portfolio-->

        <!-- <div class="text-center">
            <ul class="pagination">
                <li><a href="#">«</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li class="active"><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">»</a></li>
            </ul>                                                            
        </div> -->
    </div>
 
<%-- 	<script type="text/javascript" src="${contextRoot}/assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<script type="text/javascript" src="${contextRoot}/assets/js/plugins/cube-portfolio-10.js"></script> --%>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
	<script type="text/javascript" src="${contextRoot}/custom/js/plupload/plupload.full.min.js"></script>
	<script type="text/javascript" src="${contextRoot}/custom/js/plupload/jquery.ui.plupload/jquery.ui.plupload.js"></script>

<script type="text/javascript">


function galleryList(){
	
	var tag = "";

	$.ajax({
		url:'${contextRoot}/gallery/list',
		type:"GET",
		//data: $("#storyForm").serialize() ,
		dataType : "json",
		success : function(data) {
			console.log(data.data);
			
			$.each(data.data, function (index, item) {
				
				if(item.img_url != ''){
					tag ="<li class='cbp-item motion design'>"+
					"<a href='portfolio_item.html' class='cbp-caption'>"+
					"<div class='cbp-caption-defaultWrap'>"+
					"<img src='"+item.img_url+"' style='width:255px;height:152px;'>"+
					"</div><div class='cbp-caption-activeWrap'>"+
					"<div class='cbp-l-caption-alignCenter'>"+
					"<div class='cbp-l-caption-body'>"+
					"<div class='cbp-l-caption-text'>"+item.description+"</div>"+
					"<p class='cbp-l-caption-desc'>"+item.reg_date+"</p>"+
					"</div></div></div></a></li>";	
				}
				
				$('#galleryList').append(tag);
			})
			
			
			console.log(tag);
			 
		},
		error:function(data){
 			console.log("Connection ERROR");
 		}
	});
}





$(document).ready(function(){
	galleryList();
	
}) 

$(window).load(function(){
	window.setTimeout(loadScript,500);
})

function loadScript(){
	$.getScript('${contextRoot}/assets/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js');
	$.getScript('${contextRoot}/assets/js/plugins/cube-portfolio-0.js');
}
	
//})
</script>	

 
 <%-- <c:forEach var="gallery" items="${galleryList}" varStatus="status">
                
                	<li class="cbp-item">
                        
                        <a href="attach/images/gallery/${gallery.MD5_FILE_NAME}" class="cbp-caption cbp-lightbox" data-title="Title ${status.index }">
                            <div class="cbp-caption-defaultWrap">
                                <img src="attach/images/gallery/thumbnail/${gallery.MD5_FILE_NAME}" alt="" width="100%">
                            </div>
                            <div class="cbp-caption-activeWrap">
                                <div class="cbp-l-caption-alignCenter">
                                    <div class="cbp-l-caption-body">
                                        <div class="cbp-l-caption-icon"><i class="fa fa-search"></i></div>
                                    </div>
                                </div>
                            </div>
                        </a>
	                    <div class="product-description">
	                            <h3><a href="portfolio_item.html">${gallery.USERID} ( ${gallery.REG_DATE} )</a></h3>
	                            <span>${gallery.ORIGINAL_FILE_NAME}</span>
	                        </div>
	                    </li>
                    
                </c:forEach> --%>