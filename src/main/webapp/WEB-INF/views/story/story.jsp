<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<link rel="stylesheet" href="${contextRoot }/assets/css/custom.css">
 
 
 <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Story</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li><a href="">Pages</a></li>
                <li class="active">Story</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row blog-page">    
            <!-- Left Sidebar -->
        	<div class="col-md-12 md-margin-bottom-40" id="contents">
             
            </div>
          
        </div><!--/row-->
       
        	
          <form name="storyForm" id="storyForm">
		    	<a class="btn-u btn-u-red" id="moreButton"  onclick="more();" >더보기</a>
		    	
		    	<div class="alert alert-warning" id="alert-warning" style="display:none;">
                	<button type="button" class="close" data-dismiss="alert">×</button>
                	<strong>마지막 게시물입니다.</strong> 
                </div>
                 
		    	<input type="hidden" id="limit" name="limit" value="10"/>
		   		<input type="hidden" id="offset" name="offset" value="0"/>
		   		
		    </form> 
		 
    </div><!--/container-->	
  
      <!-- Large modal -->
       <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-lg-custom">
               <div class="modal-content">
                   <div class="modal-header">
                       <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                       <h4 id="myLargeModalLabel" class="modal-title"></h4>
                   </div>
                   <div class="modal-body" id="contents_body">
                       
                   </div>
               </div>
           </div>
       </div>
       <!-- Large modal -->
       
    <script type="text/javascript" src="${contextRoot }/assets/plugins/jquery/jquery.min.js"></script>
 	<script type="text/javascript" src="${contextRoot }/assets/js/plugins/parallax-slider.js"></script>
 
    <script>
         function more(){
        	 $('#offset').val( parseInt($('#offset').val())  +  parseInt($('#limit').val()) ) ; 
        	 appendHtml();
         }
         function viewContents(idx){
        	 var original_contents = $("#contents_"+idx).html();
	       	 if(original_contents == ''){
	       		original_contents = ' ';
	       	 }
	       	 var title = $('#title_'+idx).html();
	       	 
	       	 $("#myLargeModalLabel").html(title);
	       	 $("#contents_body").html(original_contents);
	       	 $("#contents_body").find('img').attr('style','width:100%;')
	       	 
         }
         function appendHtml(){
        		
        	  $.ajax({
      			url:'${contextRoot}/story/list',
      			type:"GET",
      			data: $("#storyForm").serialize() ,
      			dataType : "json",
      			success:function(data){
      				console.log(data);
      				var offset = data.offsetLimit.offset;
      				var imgTag = "";

      				if(data.data.length == '0'){
      					
      					$('#alert-warning').fadeIn(500);
      					$('#moreButton').fadeOut(500);
      				}
      				
      				$.each(data.data, function (index, item) {
      					var contentsTag = '';
      					
      					if(item.imagesCount <= 1){
      						
      						var images = $.each(item.images, function (index, img) {
          						imgTag = "<img  class='img-responsive'  src='"+img+"' width='335' height='212'>";
          					});
          					
      						contentsTag = "<div class='row blog blog-medium margin-bottom-40'>"+
		      					"<div class='col-md-4'>"+ imgTag +"</div>    "+
		      					"<div class='col-md-7'>"+
		      					"<h2><a href='#'>"+item.title+"</a></h2>"+
		      					"<ul class='list-unstyled list-inline blog-info'>"+
		      					"<li><i class='fa fa-calendar'></i>&nbsp;&nbsp;"+item.reg_date+"</li>"+
		      					"</ul>"+
		      					"<p>"+item.nohtml_contents+"</p>"+
		      					"<p>  <button class='btn-u' data-toggle='modal' data-target='.bs-example-modal-lg' onclick='viewContents(&quot;"+offset+index+"&quot;)'>Read More</button> </p>"+
		      					"</div>"+
		      					"</div>"+
		      					"<div style='display:none;' id='contents_"+offset+index+"'>"+item.contents+"</div>"+
		      					"<div style='display:none;'  id='title_"+offset+index+"'>"+item.title+"</div>"+
		      					" <hr class='margin-bottom-40'>";
      						
      						 
      					}else{
      						
      						var images = $.each(item.images, function (index, img) {
      							var active = '';
      							if(index==0){
      								active = 'active'
      							}
      							
          						imgTag += "<div class='item "+active+"'>"+
          								  "<img  src='"+img+"'  height='226'>"+
          								  "</div>"
          					});
      						
      						contentsTag = "<div class='row blog blog-medium margin-bottom-40'>"+
				      						"<div class='col-md-4'>"+
				      						"<div class='carousel slide carousel-v1' id='"+item.idx+"'>"+
				      						
				      						"<div class='carousel-inner'>"+
				      						imgTag +
				      						"</div>"+
				      						"<div class='carousel-arrow'>"+
				      						"<a data-slide='prev' href='#"+item.idx+"' class='left carousel-control'>"+
				      						"<i class='fa fa-angle-left'></i></a>"+
				      						"<a data-slide='next' href='#"+item.idx+"' class='right carousel-control'>"+
				      						"<i class='fa fa-angle-right'></i>"+
				      						"</a></div></div></div><div class='col-md-7'>"+
				      						"<h2><a href='#'>"+item.title+"</a></h2>"+
				      						"<ul class='list-unstyled list-inline blog-info'>"+
				      						"<li><i class='fa fa-calendar'></i> "+item.reg_date+"</li>"+
				      						"</ul><p>"+item.nohtml_contents+"</p>"+
				      						"<p><button class='btn-u' data-toggle='modal' data-target='.bs-example-modal-lg' onclick='viewContents(&quot;"+offset+index+"&quot;)'>Read More</button></p>"+
				      						"</div></div> "+
				      						"<div style='display:none;' id='contents_"+offset+index+"'>"+item.contents+"</div>"+
				      						"<div style='display:none;'  id='title_"+offset+index+"'>"+item.title+"</div>"+
				      						"<hr class='margin-bottom-40'>";  
      						
          					
      					}
      					imgTag = '';
						$("#contents").append(contentsTag);
								
      					
      				});
      				
      			},
      			error:function(data){
      				console.log("Connection ERROR");
      			}
      		});
        	 
        	
         }
    
		
         $(document).ready(function(){
        	appendHtml();
     	});
         </script>
         