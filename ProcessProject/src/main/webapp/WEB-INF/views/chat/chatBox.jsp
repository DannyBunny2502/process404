<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../include/header.jsp" %>
<meta charset="UTF-8">
<title>채팅창</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/resources/bootstrap/css/chatDesign.css" rel="stylesheet" type="text/css">


<script>

	
	////////임시테스트//////
	//var lastCode = 0;
	
	//처음 채팅방 들어왔을 때 변수로 저장해 놓을 것들.. 사진도 있어야 함. 내꺼, 상대방꺼 모두.
	var lastCode = ${last_chat_code};
	var chatPartner = '${chatPartner}'; //아래 receiver 변수 값과 겹치는데... 일단보류!
	
	//채팅 리스트 실시간으로 불러오는 함수
	function chatListFunction(lastCode){
		var sender = '${employee.getId()}';
		var receiver = chatPartner ;  //'${chatPartner}'
		$.ajax({
			type: "POST",
			url: "./chatBox",
			data : {
				sender : sender,
				receiver : receiver,
				last_chat_code : lastCode
			}, 
			success: function(rtnMap){
				
				console.log("rtnMap: " + rtnMap);
				//리턴 값이 없으면 나가기
				if(rtnMap == null || rtnMap == ""){
					return;
				}else{
					window.lastCode = Number(rtnMap.last_chat_code);
					
					//last_chat_code 값 들어가는 지 확인
					console.log("last-chat-code: "+window.lastCode);
					
					 $.each(rtnMap.rtnList, function(index, rtnList){
						//sender가 나일 때
						 var chatPocket_me = 
									'<li class="left clearfix chatPocket">'+
					                    	'<span class="chat-img pull-left">'+
					                    		'<img src="https://bootdey.com/img/Content/user_3.jpg" alt="User Avatar">'+
					                    	'</span>'+
					                    	'<div class="chat-body clearfix">'+
					                    		'<div class="header">'+
					                    			'<strong class="primary-font">나</strong>'+
					                    			'<small class="pull-right text-muted"><i class="fa fa-clock-o"></i>'+
					                    			rtnList.chat_date +
					                    			'</small>'+
					                    		'</div>'+
					                    		'<p>'+
					                    			rtnList.content +
					                    		'</p>'+
					                    	'</div>'+
					                    '</li>';
						
					     //sender가 상대방일때
						 var chatPocket_partner = 
										 '<li class="left clearfix chatPocket">'+
					                    	'<span class="chat-img pull-left">'+
					                    		'<img src="https://bootdey.com/img/Content/user_3.jpg" alt="User Avatar">'+
					                    	'</span>'+
					                    	'<div class="chat-body clearfix">'+
					                    		'<div class="header">'+
					                    			'<strong class="primary-font">'+
					                    			chatPartner+
					                    			'</strong>'+
					                    			'<small class="pull-right text-muted"><i class="fa fa-clock-o"></i>'+
					                    			rtnList.chat_date +
					                    			'</small>'+
					                    		'</div>'+
					                    		'<p>'+
					                    			rtnList.content +
					                    		'</p>'+
					                    	'</div>'+
					                    '</li>';
						 if( $('.chatPocket').length == 0){
							 
							 if( rtnList.sender == '${employee.getId()}'){
								  $('#chatListSpace').append(chatPocket_me);
							  }else{
								  $('#chatListSpace').append(chatPocket_partner);
							  } 
						 }else{
							 if( rtnList.sender == '${employee.getId()}'){
								  $('#chatListSpace li:last').after(chatPocket_me);
							  }else{
								  $('#chatListSpace li:last').after(chatPocket_partner);
							  } 
						 }				    

					 });//end - $.each
					 
				}//end - if/else
					
			}//end - success()
			
		}); //end - ajax
	
	
	}//end - chatListFunction()
	
	
	
	function getInfiniteChat(){
		setInterval(function(){
			chatListFunction(window.lastCode);
			console.log("infiniteChat_last_code: "+window.lastCode);
		},5000);
	}
	
	

	
</script>


</head>
<body>
<%@ include file="chatSidebar.jsp" %>
<div class="container bootstrap snippet">
    <div class="row">

        
        <!--=========================================================-->
        <!-- selected chat -->
    	<div class="col-md-8 bg-white ">
            <div class="chat-message" id="chat-message">
                <ul class="chat" id="chatListSpace">
                   
                   <c:forEach items="${chat}" var="chatList">
                  		 <!-- <li class ="chatPocket"은 나중에 채팅내용 업데이트 할 때 쓸 예정.. 혹시몰라서. -->
                  		 <c:choose>
               
		                    <c:when test="${chatList.sender == '${employee.getId()}'}">
		                    <li class="left clearfix chatPocket">
			                    	<span class="chat-img pull-left">
			                    		<img src="https://bootdey.com/img/Content/user_3.jpg" alt="User Avatar">
			                    	</span>
			                    	<div class="chat-body clearfix">
			                    		<div class="header">
			                    			<strong class="primary-font">나</strong>
			                    			<small class="pull-right text-muted"><i class="fa fa-clock-o"></i>${chatList.chat_date}</small>
			                    		</div>
			                    		<p>
			                    			${chatList.content}
			                    		</p>
			                    	</div>
			                    </li>
		                    </c:when>
		                    
		                  	<c:otherwise>
		                  		<li class="right clearfix chatPocket">
			                    	<span class="chat-img pull-right">
			                    		<img src="https://bootdey.com/img/Content/user_1.jpg" alt="User Avatar">
			                    	</span>
			                    	<div class="chat-body clearfix">
			                    		<div class="header">
			                    			<strong class="primary-font">${chatList.sender}</strong>
			                    			<small class="pull-right text-muted"><i class="fa fa-clock-o"></i>${chatList.chat_date}</small>
			                    		</div>
			                    		<p>
			                    			${chatList.content}
			                    		</p>
			                    	</div>
			                    </li>
		                    </c:otherwise>
                    	</c:choose>
                    </c:forEach> 
                     
                </ul>
            </div>
            
            <!-- 채팅 내용 쓰는 창 -->
            <div class="chat-box bg-white">
            	<div class="input-group">
            		<textarea style="height:80px;" class="form-control border" id="chatInput" placeholder="메시지를 입력하세요" maxlength="200"></textarea>
            		<span class="input-group-btn">
            			<button id="chatsendBtn" class="btn btn-success no-rounded" type="button">send</button>
            		</span>
            	</div><!-- /input-group -->	
            </div>            
		</div>        
	</div>
</div>

<div class="alert alert-success" id="successMessage" style="display:none;">
	<strong>메시지 전송 성공</strong>
</div>
<div class="alert alert-warning" id="warningMessage" style="display:none;">
	<strong>내용을 입력하시오</strong>
</div>
<div class="alert alert-danger" id="dangerMessage" style="display:none;">
	<strong>db 오류</strong>
</div>


<script>
	$(document).ready(function(){
		
		chatListFunction('${last_chat_code}');
		//getUnread();
		getInfiniteChat();
		//getInfiniteUnread();
		
	});	
	
	//채팅창에 채팅 내용 전송 버튼 누른 후, 전송 상태 출력
	function autoClosingAlert(selector, delay){
		var alert= $(selector).alert();
		alert.show();
		window.setTimeout(function(){alert.hide(); }, delay);
	}
	
	
	//채팅 send 버튼 눌렀을 때, db에 인서트
	$("#chatsendBtn").click(function(){
	
		console.log($("#chatInput").val()); 
		
		//채팅창 내용이 비어있는지 검사
		if( $("#chatInput").val().trim() == ""){
			autoClosingAlert('#warningMessage',2000);
			$("#chatInput").focus(); 
			return;
		}
		
		var sender = '${employee.getId()}';
		var receiver = '${chatPartner}';
		var content = $("#chatInput").val();
		
		$.ajax({
			type:"POST",
			url:"./chatInput",
			data:{
				sender : sender,
				receiver : receiver,
				content : content
			},
			success : function(rtnMap){
				if(rtnMap.insertResult == 1){
					autoClosingAlert('#successMessage',2000);
				}else if(rtnMap.insertResult == 0){
					autoClosingAlert('#warningMessage',2000);
				}else{
					autoClosingAlert('#dangerMessage',2000);
				}
			}
		});
		
		$("#chatInput").val('');
		
	});	//end function() - send 버튼 눌렀을 때 채팅 내용 전송


</script>

</body>
</html>