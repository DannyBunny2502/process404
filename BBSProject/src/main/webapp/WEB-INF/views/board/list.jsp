<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<title>게시물 목록</title>
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/bootstrap/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<table class="table table-bordered table-striped nanum table-hover">
	<!-- <table border="1"> -->
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.bno}</td>
					<td>
						<a href="/board/view?bno=${list.bno}">${list.title}</a>
					</td>
					<td>${list.writer}</td>
					<td>
						<fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" />
					</td>
					<td>${list.viewCnt}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
</div>
</body>
</html>
