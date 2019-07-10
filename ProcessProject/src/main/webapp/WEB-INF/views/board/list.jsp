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

<!-- CREATE TABLE NOTICE
(
    `notice_code`      INT              NOT NULL    COMMENT '게시물코드', 
    `author_id`        VARCHAR(20)      NOT NULL    COMMENT '아이디', 
    `author_password`  VARCHAR(100)      NOT NULL    COMMENT '비밀번호', 
    `title`            VARCHAR(50)      NOT NULL    COMMENT '제목', 
    `content`          VARCHAR(1000)    NOT NULL    COMMENT '내용', 
    `views`            INT              NOT NULL    COMMENT '조회수', 
    `file_root`        VARCHAR(100)     NULL        COMMENT '파일경로', 
    `file_size`        VARCHAR(20)      NULL        COMMENT '파일크기', 
    `upload_date`      DATETIME         NOT NULL    COMMENT '게시일자', 
    PRIMARY KEY (notice_code)
); -->

<div class="container">
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

			<c:forEach items="${list}" var="list">
				<tr>
					<td>
						<a href="/board/view?notice_code=${list.notice_code}">${list.notice_code}</a>
					</td>
					
					<td>${list.author_id}</td>
					<td>${list.author_password}</td>
					<td>${list.title}</td>
					<td>${list.content}</td>
					<td>${list.views}</td>
					<td>${list.file_root}</td>
					<td>${list.file_size}</td>
					<td>${list.upload_date}</td>
				
				</tr>
			</c:forEach>

		</tbody>
	</table>
	
	<a href="/board/write">글쓰기</a>
</div>
</body>
</html>
