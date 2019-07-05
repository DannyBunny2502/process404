<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
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
				<form action="insertUser.do" id="login-form" method="post">
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
						<input type="text" class="form-control nickname" name="nickName" id="nickname" placeholder="Your Nickname" oninput="checkNick()" autofocus>
					</div>
					<div>
						<button type="submit" class="form-control btn btn-primary signupbtn" disabled="disabled">회원가입</button>
					</div>
					<div>
						<input type="text" class="form-control msg" name="msg" placeholder="Message" id="msg">
					</div>
					<div id="msg2"></div>
				</form>
			</div>
	    </div>
	</div>
</div>

	<script>
	
	//아이디와 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수설정
	var idCheck = 0;
	var nickCheck = 0;
	var pwdCheck = 0;
	//아이디 체크하여 가입버튼 비활성화, 중복확인.
	function checkId() {
		//alert("값을 입력하는 중입니다.");
		var inputed = $('.id').val();
		console.log(inputed);
		$.ajax({
			data : {
				id : inputed
			},
			url : "checkId.do",
			success : function(data) {
				if(inputed=="" && data=='0') {
					$(".signupbtn").prop("disabled", true);
					$(".signupbtn").css("background-color", "#aaaaaa");
					$("#checkaa").css("background-color", "#FFCECE");
					document.getElementById("msg2").innerHTML = "아이디를 입력하십시요.";
				    document.getElementById("msg").value = '아이디를 입력하십시요.';
					idCheck = 0;
				} else if (data == '0') {
					$("#checkaa").css("background-color", "#B0F6AC");
					document.getElementById("msg2").innerHTML = "사용이 가능한 아이디입니다.";
				    document.getElementById("msg").value = '사용이 가능한 아이디입니다.';
					$("#msg").css("background-color", "#B0F6AC");
					idCheck = 1;
					if(idCheck==1 && pwdCheck == 1) {
						$(".signupbtn").prop("disabled", false);
						$(".signupbtn").css("background-color", "#4CAF50");
					} 
				} else if (data == '1') {
					$(".signupbtn").prop("disabled", true);
					$(".signupbtn").css("background-color", "#aaaaaa");
					$("#checkaa").css("background-color", "#FFCECE");
					document.getElementById("msg2").innerHTML = "이미 사용 중인 아이디입니다.";
				    document.getElementById("msg").value = '이미 사용 중인 아이디입니다.';
					$("#msg").css("background-color", "#FFCECE");
					idCheck = 0;
				} 
			}
		});
	}
	//재입력 비밀번호 체크하여 가입버튼 비활성화 또는 맞지않음을 알림.
	function checkPwd() {
		var inputed = $('.pass').val();
		var reinputed = $('#repwd').val();
		console.log(inputed);
		console.log(reinputed);
		if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
			$(".signupbtn").prop("disabled", true);
			$(".signupbtn").css("background-color", "#aaaaaa");
			$("#repwd").css("background-color", "#FFCECE");
		}
		else if (inputed == reinputed) {
			$("#repwd").css("background-color", "#B0F6AC");
			pwdCheck = 1;
			if(idCheck==1 && pwdCheck == 1) {
				$(".signupbtn").prop("disabled", false);
				$(".signupbtn").css("background-color", "#4CAF50");
			}
		} else if (inputed != reinputed) {
			pwdCheck = 0;
			$(".signupbtn").prop("disabled", true);
			$(".signupbtn").css("background-color", "#aaaaaa");
			$("#repwd").css("background-color", "#FFCECE");
	    }
	}

	//닉네임과 이메일 입력하지 않았을 경우 가입버튼 비활성화
	function checkNick() {
		var nickname = $("#nickname").val();
		console.log(nickname);
		$.ajax({
			data : {
				nickName : nickname
			},
			url : "checkNickName.do",
			success : function(data) {
				//alert("NickName Check data : " + data);
				if(nickname=="" && data=='0') {
					$(".signupbtn").prop("disabled", true);
					$(".signupbtn").css("background-color", "#aaaaaa");
					$("#nickname").css("background-color", "#FFCECE");
					nickCheck = 0;
				} else if (data == '0') {
					$("#nickname").css("background-color", "#B0F6AC");
					nickCheck = 1;
					if(nickCheck ==1 && pwdCheck == 1) {
						$(".signupbtn").prop("disabled", false);
						$(".signupbtn").css("background-color", "#4CAF50");
					} 
				} else if (data == '1') {
					$(".signupbtn").prop("disabled", true);
					$(".signupbtn").css("background-color", "#aaaaaa");
					$("#nickname").css("background-color", "#FFCECE");
					nickCheck = 0;
				} 
			}
		});
	}

	/*캔슬버튼 눌렀을 눌렀을시 인풋박스 클리어
	$(".cancelbtn").click(function(){
		$(".id").val(null);
		$(".pass").val('');
		$(".signupbtn").prop("disabled", true);
		$(".signupbtn").css("background-color", "#aaaaaa");
	});
	*/
    

	/*
	var $modal = $('#ajax-modal');
	 
	$('.ajax .demo').on('click', function(){
	  // create the backdrop and wait for next modal to be triggered
	  $('body').modalmanager('loading');
	 
	  setTimeout(function(){
	     $modal.load('modal_ajax_test.html', '', function(){
	      $modal.modal();
	    });
	  }, 1000);
	});
	 
	$modal.on('click', '.update', function(){
	  $modal.modal('loading');
	  setTimeout(function(){
	    $modal
	      .modal('loading')
	      .find('.modal-body')
	        .prepend('<div class="alert alert-info fade in">' +
	          'Updated!<button type="button" class="close" data-dismiss="alert">&times;</button>' +
	        '</div>');
	  }, 1000);
	});
	)
	*/ 
   </script>



</body>
</html>