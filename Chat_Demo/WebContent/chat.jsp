<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<%
String userID = null;
if (session.getAttribute("userID") != null){
	userID = (String)session.getAttribute("userID");
	System.out.println("chat.jsp ID: "+ userID);
}

String toID = null;
if(request.getParameter("toID") != null){
	toID = (String) request.getParameter("toID");
	System.out.println("chat.jsp toID: "+toID);
	
}

if (userID == null){
	session.setAttribute("messageType", "오류메시지");
	session.setAttribute("messageContent", "로그인 하세요.");
	response.sendRedirect("index.jsp");
	return;
}

if (toID == null){
	session.setAttribute("messageType", "오류메시지");
	session.setAttribute("messageContent", "대화상대가 지정되지 않았습니다.");
	response.sendRedirect("index.jsp");
	return;
}

if(userID.equals(URLDecoder.decode(toID, "UTF-8"))){
	session.setAttribute("messageType", "오류메시지");
	session.setAttribute("messageContent", "자기자신에게는 메시지를 보낼 수 없습니다.");
	response.sendRedirect("index.jsp");
	return;
}

%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="bootstrap/css/custom.css">
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	<title>chat</title>
	<script>
		function autoClosingAlert(selector, delay){
			var alert= $(selector).alert();
			alert.show();
			window.setTimeout(function(){alert.hide(); }, delay);
		}
		
		function sumbitFunction(){
			var fromID = "<%=userID%>";
			var toID = "<%=toID%>";
			var chatContent = $('#chatContent').val();
			console.log(fromID);
			console.log(toID);
			console.log(chatContent);
			$.ajax({
				type: "POST",
				url: "./chatSubmit",
				data:{
					fromID : encodeURIComponent(fromID),
					toID : encodeURIComponent(toID),
					chatContent : encodeURIComponent(chatContent)
				},
				success : function(result){
					if(result == 1){
						autoClosingAlert('#successMessage',2000);
					}else if(result == 0){
						autoClosingAlert('#warningMessage',2000);
					}else{
						autoClosingAlert('#dangerMessage',2000);
					}
				}
			});
			$('#chatContent').val('');
		}
		
		
		var lastID = 0;
		function chatListFunction(type){
			var fromID = "<%=userID%>";
			var toID = "<%=toID%>";
			$.ajax({
				type:"POST",
				url : "./chatList",
				data:{
					fromID : encodeURIComponent(fromID),
					toID : encodeURIComponent(toID),
					listType : type
				},
				success: function(data){//성공하면 JSON 데이터가 들어옴
					if(data == "") return;
					var parsed = JSON.parse(data);
					var result = parsed.result;
					for(var i = 0; i <result.length; i++){
						if(result[i][0].value==fromID){
							result[i][0].value="나";
						}
						addChat(result[i][0].value, result[i][2].value, result[i][3].value);
					}
					lastID = Number(parsed.last);
				}
			});
		}
		
		function addChat(chatName, chatContent, chatTime){
			$('#chatList').append('<div class="row">'+
					'<div class="col-lg-12">'+
					'<div class="media">'+
					'<a class="pull-left" href="#">'+
					'<img class="media-object img-circle" style="width:30px; height:30px" src="images/icon.png" alt="">'+
					'</a>'+
					'<div class="media-body">'+
					'<h4 class="media-heading">'+
					chatName+
					'<span class="small pull-right">'+
					chatTime+
					'</span>'+
					'/<h4>'+
					'<p>'+
					chatContent+
					'</p>'+
					'</div>'+
					'</div>'+
					'</div>'+
					'</div>'+
					'<hr>');
			$('#chatList').scrollTop($('#chatList')[0].scrollHeight);
		}	
		
		function getInfiniteChat(){
			setInterval(function(){
				chatListFunction(lastID);
			},3000);
		}
		
		//메시지함에 안읽은 메시지 개수 출력
		function getUnread(){
			$.ajax({
				type:"POST",
				url: "./chatUnread",
				data:{
					userID : encodeURIComponent('<%=userID%>')
				},
				success: function(result){
					if(result == 1){
						showUnread(result);
					}else{
						showUnread('');
					}
					
				}
			});
		}
		
		function getInfiniteUnread(){
			setInterval(function(){
				getUnread();
			},4000);
		}
		function showUnread(result){
			$('#unread').html(result);
		}
	</script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" 
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">chatting</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">Main</a>
				<li><a href="find.jsp">친구찾기</a>	
				<li><a href="box.jsp">메시지함 <span id="unread" class="label label-info"></span></a>	
			</ul>
			<% 
				if(userID !=null){
			%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">회원정보관리<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="logoutAction.jsp">로그아웃</a></li>
						</ul>
					</li>
				</ul>
			<%
				}
			%>
			
		</div>
	</nav>
	
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="portlet portlet-default">
				<div class="portlet-title">
					<h4><i class="fo fo-circle text-green"></i>실시간 채팅창</h4>
				</div>
				<div id="chat" class="panel-collapse collapse in">
					<div id="chatList" class="portlet-body chat-widget" style="overflow-y: auto; width:auto; height:600px;">
					</div>
					<div class="portlet-footer">
						<div class="row" style="height:90px;">
							<div class="form-group col-xs-10">
								<textarea style="height:80px;" id="chatContent" class="form-control" placeholder="메시지를 입력하세요" maxlength="100"></textarea>
							</div>
							<div class="form-group col-xs-2">
								<input type="button" class="btn btn-default pull-right" onclick="sumbitFunction();" value="전송">
								<div class="claearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="alert alert-success" id="successMessage" style="display:none;">
		<strong>메시지 전송에 성공</strong>
	</div>
	<div class="alert alert-warning" id="warningMessage" style="display:none;">
		<strong>이름과 내용 모두 입력</strong>
	</div>
	<div class="alert alert-danger" id="dangerMessage" style="display:none;">
		<strong>db 오류</strong>
	</div>
	
	
	<%
		String messageContent = null;
		if(session.getAttribute("messageContent") != null){
			messageContent = (String)session.getAttribute("messageContent");
		}
		String messageType = null;
		if(session.getAttribute("messageType") != null){
			messageType = (String)session.getAttribute("messageType");
		}
		if(messageContent != null){
	%>
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content <%if(messageType.equals("오류메시지")) out.println("panel-warning"); else out.println("panel-success"); %>">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hodden="true">&times</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="moadl-title">
							<%=messageType %>
						</h4>
					</div>
					<div class="modal-body">
						<%=messageContent %>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#messageModal').modal("show");
	</script>
		
	<%	
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
		}
	%>
	
	<script>
		$(document).ready(function(){
			getUnread();
			chatListFunction('0');
			getInfiniteChat();
			getInfiniteUnread();
		});
	</script>
	
</body>
</html>





















