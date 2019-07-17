<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 등록(multi)</title>
	<%@ include file="../include/header.jsp" %>
	
<script>

//계획추가
function add_Plan(){
    //alert("i:" + i); 
   var obj_Plan = document.getElementsByName('BUSINESS_LOG_PLAN');
   var i = obj_Plan.length; //readonly input box의 name을 다르게 줘도 되고, 같게준다면 obj_plan.length-1로 한다.

   document.getElementById('view_plan_box').innerHTML += "&nbsp;<input type='text'   

   name='BUSINESS_LOG_PLAN' size='77'>"+"&nbsp;&nbsp;<input type='button' id='BUSINESS_PBUTTON'        
   name='"+i+"' value=' x ' onClick='javascript:del_Plan(this.name);'>"; 
}
//계획삭제
function del_Plan(id){
   var obj_Plan = document.getElementsByName('BUSINESS_LOG_PLAN');
   var button = document.getElementsByName('BUSINESS_PBUTTON');
   obj_Plan[id].outerHTML="";
   button[id].outerHTML="";

 

 //삭제한뒤 다시한번 현재 남은 inputbox의 값을 읽어서 다시 재설정 해준다.

    button = document.getElementsByName('BUSINESS_PBUTTON'); 
    for(var k=0; k < button.length ;k++){
      button[k].name= k; 
    }
}

</script>


</head>
<body>


<%@ include file="../include/topmenu.jsp" %><br><br>

<div id=view_plan_box style="width:600px; margin-left:3px;">
  </div>
&nbsp;<input type="text" class="readonly" name="BUSINESS_LOG_PLAN_EX" size="77" readonly="readonly"/>
&nbsp;<input type="button" value="계획추가" onClick="javascript:add_Plan();"/>




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


</body>
</html>