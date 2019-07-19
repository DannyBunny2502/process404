<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원코드 확인</title>
</head>
<body>

<div class="container">
   <h1>비밀번호 찾기 성공</h1><br>
  <!--  action="/codeCheck" -->
  
  		${findPassword.name_kor}님 변경하실 비밀번호를 입력하세요.
  		<br>
  		<form action="changePassword" method="post">
  			<input type="text" name="id" id="id" value="${findPassword.id}" />
  			<input type="text" name="emp_code" id="emp_code" value="${findPassword.emp_code}" />
  			<input type="text" name="password" id="password" placeholder="Enter password"/>
  			<input type="submit" value="변경하기">
  		</form>
    
  </div>

</body>
</html>