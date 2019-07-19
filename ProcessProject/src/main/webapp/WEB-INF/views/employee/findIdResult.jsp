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
   <h1>아이디 찾기 성공</h1><br>
  <!--  action="/codeCheck" -->
  
  		${findId.name_kor}님의 아이디는 <b>${findId.id}</b>입니다.
  		<br>
  		<a href="findPassword">비밀번호 찾기</a><br>
  		<a href="/">로그인하기</a>
    
  </div>

</body>
</html>