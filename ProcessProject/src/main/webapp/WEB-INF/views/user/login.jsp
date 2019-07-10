<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.springframework.security.crypto.password.PasswordEncoder" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>


<%@ include file="../include/topmenu.jsp" %><br><br>

<div class="container">
	<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-success">
			<div class="panel-heading">
			    <div class="panel-title">환영합니다!</div>
			</div>
			<div class="panel-body">
				<form action="loginUser.do" id="login-form" method="post">
					<div>
						<input type="text" class="form-control id" name="id" placeholder="Id" oninput="checkId()" id="checkaa" autofocus>
					</div>
					<div>
						<input type="password" class="form-control pass" name="pw" placeholder="Password" oninput="checkPwd()">
					</div>
					<div>
						<input type="password" class="form-control pass" name="pwConfirm" placeholder="Confirm Password" id="repwd" oninput="checkPwd()">
					</div>
					<div>
						<button type="submit" class="form-control btn btn-primary signupbtn" disabled="disabled">로그인</button>
					</div>
					<div>
						<input type="text" class="form-control msg" name="msg" placeholder="Message" id="msg">
					</div>
					<div id="msg2"></div>
				</form>
			</div>
	    </div
	    >
	</div>
</div>


</body>
</html>