<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<link rel="stylesheet" href="${contextRoot }/assets/css/pages/feature_timeline1.css">
<link rel="stylesheet" href="${contextRoot }/assets/css/custom.css">
 

<!--=== Breadcrumbs ===-->
	    <div class="breadcrumbs">
	        <div class="container">
	            <h1 class="pull-left">Travel</h1>
	            <ul class="pull-right breadcrumb">
	                <li><a href="index.html">Home</a></li>
	                <li><a href="">Pages</a></li>
	                <li class="active">Travel</li>
	            </ul>
	        </div>
	    </div><!--/breadcrumbs-->
	    <!--=== End Breadcrumbs ===-->
	
	    <!--=== Content Part ===-->
	    <div class="container content">	
	    	<div>
		        <ul class="timeline-v1" id='contents'>
		          
		        </ul>
	       </div>
	    </div><!--/container-->
	    
    		
    <!-- End Content Part -->
    	 <div class="container content">	
	         <form name="travelForm" id="travelForm">
		    	<a class="btn-u btn-u-red" id="moreButton"  onclick="more();" >더보기</a>
		    	<div class="alert alert-warning" id="alert-warning" style="display:none;">
                	<button type="button" class="close" data-dismiss="alert">×</button>
                	<strong>마지막 게시물입니다.</strong> 
                </div>
		    	<input type="hidden" id="limit" name="limit" value="10"/>
		   		<input type="hidden" id="offset" name="offset" value="0"/>
		    </form>
		 </div>
	
	
      <!-- Large modal -->
       <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
           <div class="modal-dialog modal-lg-custom">
               <div class="modal-content">
                   <div class="modal-header">
                       <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                       <h4 id="myLargeModalLabel" class="modal-title"></h4>
                   </div>
                   <div class="modal-body" id="contents_body" >
                       
                   </div>
               </div>
           </div>
       </div>
       <!-- Large modal -->
       
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
	       	$("#contents_body").find('img').attr('style','width:100%;');
        }
	    
	    
         function appendHtml(){
        		
        	  $.ajax({
      			url:'${contextRoot}/travel/list',
      			type:"GET",
      			data: $("#travelForm").serialize() ,
      			dataType : "json",
      			success:function(data){
      				//console.log(data);
      				
      				var offset = data.offsetLimit.offset;
      				var imgTag = "";
					
      				
      				if(data.data.length == '0'){
      					$('#alert-warning').fadeIn(500);
      					$('#moreButton').fadeOut(500);
      				}
      				
      				var contentsTag = '';
      				
      				$.each(data.data, function (index, item) {
      				
      					
      					if(item.imagesCount <= 1){
      						var className ='';
      						if(index%2==0){
      							className="class='timeline-inverted'";
      						}
      						
      						var images = $.each(item.images, function (index, img) {
          						//imgTag = "<img  src='"+img+"' width='360' height='227'>";
      							imgTag = "<img src='"+img+"' height='347'/>"; //width='523' height='347'
          					});
          					
      						contentsTag +=      					
			      					"<li "+className+">"+
									"<div class='timeline-badge primary'><i class='glyphicon glyphicon-record'></i></div>"+
									"<div class='timeline-panel'>"+
									"<div class='timeline-heading'>"+
									imgTag+"</div>"+
									"<div class='timeline-body text-justify'>"+
									"<h2><a href='#'>"+item.title+"</a></h2>"+
									"<p>"+item.nohtml_contents+"</p>"+
									"<button class='btn-u' data-toggle='modal' data-target='.bs-example-modal-lg' onclick='viewContents(&quot;"+offset+index+"&quot;)'>Read More</button>"+
									"</div>"+
									"<div class='timeline-footer'>"+
									"<ul class='list-unstyled list-inline blog-info'>"+
									"<li><i class='fa fa-clock-o'></i> "+item.reg_date+"</li>"+
									"</ul></div></div>"+
									"<div style='display:none;' id='contents_"+offset+index+"'>"+item.contents+"</div>"+
									"<div style='display:none;' id='title_"+offset+index+"'>"+item.title+"</div>"+
									"</li>";
		      					
      					}else{
      						
      						var className ='';
      						if(index%2==0){
      							className="class='timeline-inverted'";
      						}
      						
      						var images = $.each(item.images, function (index, img) {
      							var active = '';
      							if(index==0){
      								active = 'active'
      							}
      							
          						imgTag += "<div class='item "+active+"'>"+
          								  "<img  src='"+img+"'  height='347'>"+
          								  "</div>"
          					});
      						
      						contentsTag += "<li "+className+">"+
      										"<div class='timeline-badge primarya'><i class='glyphicon glyphicon-record'></i></div>"+
				      						"<div class='timeline-panel'>"+
				      						"<div class='timeline-heading'>"+
				      						"<div class='carousel slide carousel-v1' id='"+offset+index+"'>"+
				      						"<div class='carousel-inner'>"+
				      						imgTag +
				      						"</div><div class='carousel-arrow'><a data-slide='prev' href='#"+index+"' class='left carousel-control'><i class='fa fa-angle-left'></i></a><a data-slide='next' href='#"+index+"' class='right carousel-control'>"+
				      						"<i class='fa fa-angle-right'></i></a></div></div></div>"+
				      						"<div class='timeline-body text-justify'>"+
				      						"<h2><a href='#'>"+item.title+"</a></h2>"+
				      						"<p>"+item.nohtml_contents+"</p>"+
				      						"<button class='btn-u' data-toggle='modal' data-target='.bs-example-modal-lg' onclick='viewContents(&quot;"+offset+index+"&quot;)'>Read More</button>"+
				      						"</div><div class='timeline-footer'><ul class='list-unstyled list-inline blog-info'>"+
				      						"<li><i class='fa fa-clock-o'></i> "+item.reg_date+"</li>"+
				      						"</ul></div></div>"+
				      						"<div style='display:none;' id='contents_"+offset+index+"'>"+item.contents+"</div>"+
				      						"<div style='display:none;' id='title_"+offset+index+"'>"+item.title+"</div>"+
				      						"</li>";
          					
      						
      					}
      					imgTag = '';
					
						
      				});
      				
      				
      				$("#contents").append(contentsTag);
      				
      			},
      			error:function(data){
      				console.log("Connection ERROR");
      			}
      		});
        	 
        	
         }
    
		
		$(document).ready(function(){
			appendHtml();
		});
		
		$(window).load(function(){
		 });
		 
		
         </script>
         
         
 <script type="text/javascript" src="${contextRoot }/assets/plugins/jquery/jquery.min.js"></script>
 <script type="text/javascript" src="${contextRoot }/assets/js/plugins/parallax-slider.js"></script>
		