<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" %>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jasny-bootstrap/3.1.3/css/jasny-bootstrap.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jasny-bootstrap/3.1.3/js/jasny-bootstrap.min.js"></script>
<script>
//http://noritersand.tistory.com/259 입력폼 초기화
$(document).ready(function() {
    $('#registUserSave').click(function() {
 
    	var form = $('#registUserForm');
   	    var data = new FormData( form );
 
        $.ajax({
            url: 'registMember',
            type: "post",
            dataType: "json",
            data: data,
            // cache: false,
            success: function(data, textStatus, jqXHR) {
                alert(data);
            }, 
            error: function(jqXHR, textStatus, errorThrown) {}
        });
        
        return false;
    });
});


function registUserSave(){
	var upload_data = new FormData($('#registUserForm'));
	//$('#registUserForm').serialize(),
	
	$.ajax({
		type:"POST",
		url : "registMember",
		data: upload_data,
		dataType : "text",
		contentType: false,
		processData:false,
		success : function(data) {
			console.log(data);
		}

	});
}
//mimeType : "multipart/form-data",
</script>


<!-- BEGIN : REGIST USER MODAL -->
<form class="form-horizontal" id="registUserForm" role="form" method="post" action="${contextRoot}/registMember"  enctype="multipart/form-data">

<div class="margin-bottom-40">
 
     <div class="modal fade" id="registUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                     <h4 class="modal-title" id="myModalLabel">Regist User</h4>
                 </div>
                 <div class="modal-body">
                    
                    
		
		
         	<input type="hidden" name="memberImageYN" id="memberImageYN" value=""/>
         
            <div class="form-group" id="divId">
                <label for="id" class="col-lg-2 control-label">아이디</label>
                <div class="col-lg-8">
                    <input type="text" value="" name="id" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true" placeholder="30자이내의 알파벳, 언더스코어(_), 숫자만 입력 가능" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divPassword">
                <label for="password" class="col-lg-2 control-label">패스워드</label>
                <div class="col-lg-8">
                    <input type="password" class="form-control" id="password" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divPasswordCheck">
                <label for="passwordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                <div class="col-lg-8">
                    <input type="password" name="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divName">
                <label for="name"  class="col-lg-2 control-label">이름</label>
                <div class="col-lg-8">
                    <input type="text" value="" name="name" class="form-control" id="name" data-rule-required="true" placeholder="이름" maxlength="15">
                </div>
            </div>
             
            <div class="form-group" id="divNickname">
                <label for="nickname" class="col-lg-2 control-label">별명</label>
                <div class="col-lg-8">
                    <input type="text" value="" name="nickname" class="form-control" id="nickname" data-rule-required="true" placeholder="별명" maxlength="15">
                </div>
            </div>
             
            <div class="form-group" id="divEmail">
                <label for="email" class="col-lg-2 control-label">이메일</label>
                <div class="col-lg-8">
                    <input type="email" value="" name="email" class="form-control" id="email" data-rule-required="true" placeholder="이메일" maxlength="40">
                </div>
            </div>
            <div class="form-group" id="divPhoneNumber">
                <label for="phoneNumber" class="col-lg-2 control-label">전화번호</label>
                <div class="col-lg-8">
                    <input type="tel" value="" name="phone" class="form-control onlyNumber" id="phoneNumber" data-rule-required="true" placeholder="-를 제외하고 숫자만 입력하세요." maxlength="11">
                </div>
            </div>
            <div class="form-group" id="divSex">
                <label for="sex" class="col-lg-2 control-label">성별</label>
                <div class="col-lg-8">
								
								
                    <select name="sex" value="" class="form-control" id="sex">
                        <option value="M">남</option>
                        <option value="F">여</option>
                    </select>
                    
                </div>
            </div>
            
			<!-- <div class="form-group" id="divAttach">
			 <label for="thumbnail" class="col-lg-2 control-label">사진</label>
			 <div class="col-lg-8">
				<div class="fileinput fileinput-new" data-provides="fileinput">
				  <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;"></div>
				  <div>
				    <span class="btn btn-default btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span>
				    <input type="file" name="thumbnail"></span>
				    <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
				  </div>
				</div>
			</div>
           </div> -->
           
      
        
                 </div>
                 <div class="modal-footer">
                     <button type="button" onclick="javascript:registUserCancel();" class="btn-u btn-u-default" data-dismiss="modal">Close</button>
                     <button type="submit" id="registUserSave" class="btn-u btn-u-primary">Save</button> <!-- onclick="javascript:registUserSave();"   -->
                 </div>
             </div>
         </div>
     </div>
 </div>
   </form>
<!-- END : REGIST USER MODAL -->                    
                 