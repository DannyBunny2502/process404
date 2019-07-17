<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../include/header.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="../resources/bootstrap/css/chatDesign.css" rel="stylesheet">

<script>

	function getChatList(){
		var sender = 'id02';
		
		$.ajax({
			type: "POST",
			url: "./chatList",
			data : {
				sender : sender
			}, 
			success: function(rtnMap){
				 $('#chatList').html('');
				 
				if(rtnMap == null || rtnMap == ""){
					return;
				}else{
                	
	                $.each(rtnMap.rtnList, function(index, rtnList){
	                	
	                	if (rtnList == "" || rtnList == null){return;}
	                	
	                	if(rtnList.sender == 'id02'){
	                		rtnList.sender = rtnList.receiver;
	                	}
        	                
	                	addChatListUnit(rtnList.sender, rtnList.content, rtnList.chat_date, rtnList.chatUnread);
	        	                
        	               
                		});//end - each
				 
				}//end - if/else   
                
			}//end - success
			
		});//end - ajax
		
	}//end - getChatList()
	
	function addChatListUnit(chatPartner, chatContent, chatDate, unreadCount){
		 $('#chatList').append('<li class="active bounceInDown">'+
					             	'<a href="#" class="clearfix">'+
					        		'<img src="../resources/image/photo.jpeg" alt="" class="img-circle">'+
					        		'<div class="friend-name">'+	
					        			'<a href="${path}/chat/chatBox?chatPartner='+chatPartner+'">'+
					        			'<strong>'+
					        			chatPartner +
					        			'</strong></a>'+
					        		'</div>'+
					        		'<div class="last-message text-muted lastChatContent">'+
					        			chatContent+
					        		'</div>'+
					        		'<small class="time text-muted">'+
					        			chatDate +
					        		'</small>'+
					        		'<small class="chat-alert label label-danger">'+
					        			unreadCount+
					        		'</small>'+
					        	'</a>'+
					        '</li>');
		
	}
	
	
	function getInfiniteChatList(){
		setInterval(function(){
			getChatList();
		}, 3000);
	}

</script>

</head>
<body>
<%@ include file="./chatSidebar.jsp" %>

<div class="container bootstrap snippet">
    <div class="row">
		<div class="col-md-4 bg-white ">
            <div class=" row border-bottom padding-sm" style="height: 40px;">
            	Member
            </div>
            
            <!-- =============================================================== -->
            <!-- member list -->
            <ul class="friend-list" id="chatList">
                <li class="active bounceInDown">
                	<a href="#" class="clearfix">
                		<img src="../resources/image/photo.jpeg" alt="" class="img-circle">
                		<div class="friend-name">	
                			<strong>John Doe</strong>
                		</div>
                		<div class="last-message text-muted lastChatContent">Hello, Are you there?</div>
                		<small class="time text-muted">Just now</small>
                		<small class="chat-alert label label-danger">1</small>
                	</a>
                </li>
                <li>
                	<a href="#" class="clearfix">
                		<img src="https://bootdey.com/img/Content/user_2.jpg" alt="" class="img-circle">
                		<div class="friend-name">	
                			<strong>Jane Doe</strong>
                		</div>
                		<div class="last-message text-muted">Lorem ipsum dolor sit amet.</div>
                		<small class="time text-muted">5 mins ago</small>
                	<small class="chat-alert text-muted"><i class="fa fa-check"></i></small>
                	</a>
                </li> 
                           
            </ul>
		</div>
        
		       
	</div>
</div>


	<script>
		$(document).ready(function(){
			//getUnread();
			//getInfiniteUnread();
			getChatList();
			//getInfiniteChatList();
		});
	</script>
</body>
</html>







