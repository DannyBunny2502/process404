<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%
	String userID = null;
	if (session.getAttribute("userID") != null){
		userID = (String)session.getAttribute("userID");
		System.out.print("ID: "+userID);
}
%>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width-device-width, initial-scale=1">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="bootstrap/css/custom.css">
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	<script>
		function getUnread(){
			$.ajax({
				type:"POST",
				url: "./chatUnread",
				data:{
					userID : encodeURIComponent('<%=userID%>')
				},
				success: function(result){
					//if(result == 1){
						showUnread(result);
					//}else{
						//showUnread('');
					//}
					
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
	<title>chat</title>
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
				<li class="active"><a href="index.jsp">Main</a>
				<li><a href="find.jsp">친구찾기</a>
				<li><a href="box.jsp">메시지함 <span id="unread" class="label label-info"></span></a>		
			</ul>
			<%
				if(userID == null){
			%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="buton"
						aria-haspopup="true" aria-expanded="false">접속<span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="login.jsp">로그인</a></li>
							<li><a href="join.jsp">회원가입</a></li>
						</ul>
					</li>
				</ul>
			<%
				}else{
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
	

	<div class="alert alert-success" id="successMessage" style="display:none;">
		<strong>메시지 전송에 성공</strong>
	</div>
	<div class="alert alert-danger" id="successMessage" style="display:none;">
		<strong>이름과 내용 모두 입력</strong>
	</div>
	<div class="alert alert-warning" id="successMessage" style="display:none;">
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
	
	<%
		if(userID != null){
	%>
		<script>
			$(document).ready(function(){
				getUnread();
				getInfiniteUnread();
			});
		</script>
	<%
		}
	%>
		
</body>
</html>





















