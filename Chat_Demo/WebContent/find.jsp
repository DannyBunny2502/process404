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
	if(userID == null){
		session.setAttribute("messageType", "오류메시지");
		session.setAttribute("messageContent", "로그인이 되어있찌 않습니다.");
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
		function findFunction(){
			var userID = $('#findID').val();
			$.ajax({
				type:"POST",
				url:"./userRegisterCheck",
				data: {userID : userID},
				success: function(result){
					if(result == 0){
						$('#checkMessage').html("친구찾기 성공");
						$('#checkType').attr("class","modal-content panel-success");
						getFriend(userID);
					}else{
						$('#checkMessage').html("친구찾기 실패");
						$('#checkType').attr("class","modal-content panel-warning");
						failFriend();	
					}
					$('#checkModal').modal("show");
				}
			});
		}
		
		function getFriend(findID){
			$('#friendResult').html('<thead>'+
					'<tr>'+
					'<th><h4>검색결과</h4></th>'+
					'</thead>'+
					'<tbody>'+
					'<tr>'+
					'<td style="text-align:center;"><h3>'+findID+'</h3><a href="chat.jsp?toID='+encodeURIComponent(findID)+'" class="btn btn-primary pull-rignt">'+'메시지보내기</a></td>'+
					'</tr>'+
					'</tbody>');
		}
		
		function failFriend(){
			$('#friendResult').html('');
		}
		
		//메시지함 안읽은 메시지 출력
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
				<li><a href="index.jsp">Main</a>
				<li class="active"><a href="find.jsp">친구찾기</a>		
				<li><a href="box.jsp">메시지함 <span id="unread" class="label label-info"></span></a>
			</ul>
		
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

		</div>
	</nav>
	
	<div class="container">
		<table class="table table-bordered table-hover" style="text-align:center; border: #ddd;">
			<thead>
				<tr>
					<th colspan="2"><h4>검색으로 친구찾기</h4></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width:110px;"><h5>친구 아이디</h5>
					<td><input class="form-control" type="text" id="findID" maxlength="20" placeholder="id"></td>
				</tr>
				<tr>
					<td colspan="2"><input class="btn btn-primary pull-right" onclick="findFunction()" value="검색"></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="container">
		<table id="friendResult" class="table table-bordered table-hover" style="text-align:center; border: 1px solid #ddd">
		</table>
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
	<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div id="checkType" class="modal-content panel-info">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="moadl-title">
							확인메시지
						</h4>
					</div>
					<div id="checkMessage" class="modal-body">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
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

				



















