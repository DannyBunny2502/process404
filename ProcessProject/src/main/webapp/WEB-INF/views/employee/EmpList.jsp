<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
	<title>게시물 목록</title>
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/bootstrap/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<!-- notice_code, author_id, author_password, title, content, views, file_root, file_size, upload_date -->
	
	압?
<%-- 	<form method="post">
		<table class="table table-bordered table-striped nanum table-hover">
	<!-- <table border="1"> -->
		<thead>
			<tr>
				<th>notice_code</th>
				<th>author_id</th>
				<th>author_password</th>
				<th>title</th>
				<th>content</th>
				<th>views</th>
				<th>file_root</th>
				<th>file_size</th>
				<th>upload_date</th>
				
			</tr>
		</thead>
		<tbody>
				<tr>
					<td>${view.notice_code}</td>
					<td>${view.author_id}</td>
					<td>${view.author_password}</td>
					<td>${view.title}</td>
					<td>${view.content}</td>
					<td>${view.views}</td>
					<td>${view.file_root}</td>
					<td>${view.file_size}</td>
					<td>${view.upload_date}</td>
				
				</tr>
			</tbody>
		</table>
		
		<div>
			<a href="/board/update?notice_code=${view.notice_code}">수정</a><br />
			<a href="/board/delete?notice_code=${view.notice_code}">삭제</a>
		</div>
		
	</form> --%>
	
	반갑습니다.

</body>
</html>
