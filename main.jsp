<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메인 프로그램</title>
	<%@ include file="include/header.jsp" %>
	<!-- 
	<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	 -->
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<%@ include file="include/topmenu.jsp" %>
	<br>
	
	<h2>${message}</h2> <!-- MainController에서 받아온 message값 -->
	
</body>
</html>