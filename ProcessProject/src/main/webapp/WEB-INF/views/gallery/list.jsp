<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
	<title>게시물 목록</title>
<!--     <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
<!-- 	<script src="/resources/bootstrap/bootstrap/js/bootstrap.min.js"></script> -->
	<link href="/resources/css/board.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%@ include file="../include/header2.jsp" %>

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



<div class="board" style="padding:70px;">
<Br>
	<h2><b>갤러리</b></h2><br>
	갤러리입니다. 예쁜 사진만 올려주세요. ~~
	<br><Br>
	
<br>
	<table style="background-color:white;">
	<!-- <table border="1"> -->
		<thead>
			<tr>
				<th>번호</th>
				<th>코드</th>
				<th>작성자</th>
				<th>제목</th>
				<th>내용</th>
				<th>조회수</th>
				<th>사진</th>
				<th>게시일자</th>
				
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${gallery}" var="gallery" varStatus="status">
				<tr>
					<td>
						${status.count }
					</td>
					<td>
						<a href="/gallery/view?gallery_code=${gallery.gallery_code}">${gallery.gallery_code}</a>
					</td>
					
					<td>${gallery.author_id}</td>
			
					<td>${gallery.title}</td>
					
					<td>${gallery.content}</td>
			
					<td>${gallery.views}</td>
					
					<td><img class="gallery_list_img" src="/resources/image/gallery_img/${gallery.newPicture}"></td>
			
					<td>${gallery.upload_date}</td>
				
				</tr>
				
				<tr><td></td></tr>
			</c:forEach>

		</tbody>
	</table>
	
	<a href="/gallery/write">글쓰기</a>
	<p>
	${employee.getId() }
	</p>
	<a href="/">바탕화면</a>
</div>
</body>
</html>
