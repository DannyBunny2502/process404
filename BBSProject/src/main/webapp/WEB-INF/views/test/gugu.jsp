<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<%@ include file="../include/topmenu.jsp" %><br><br>
	<%@ include file="../include/menu.jsp" %><br><br>

<div class="container">
	<h2>구구단 계산 결과</h2>
	${result}
	
</div>

</body>
</html>