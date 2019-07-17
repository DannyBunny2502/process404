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

<!-- notice_code, author_id, author_password, title, content, gallerys, file_root, file_size, upload_date -->
	
	<form method="post">
		<table class="table table-bordered table-striped nanum table-hover">
	<!-- <table border="1"> -->
		<thead>
			<tr>
				
				<th>author_id</th>
				<th>name_kor</th>
				<th>title</th>
				<th>content</th>
				<th>views</th>
				
				<th>picture</th>
				<th>upload_date</th>
				
			</tr>
		</thead>
		<tbody>
				<tr>
				
					<td>${gallery.author_id}</td>
					<td>${gallery.name_kor}</td>
					<td>${gallery.title}</td>
					<td>${gallery.content}</td>
					<td>${gallery.views+1}</td>
			
					<td><img src="/resources/image/gallery_img/${gallery.newPicture}"></td>
					<td>${gallery.upload_date}</td>
				
				</tr>
			</tbody>
		</table>
		
		<div>
		
		<div>
			<div class="w3-border w3-center w3-padding">
				<c:if test="${ employee.getId() == null }">
					추천 기능은 <button type="button" id="newLogin"><b class="w3-text-blue">로그인</b></button> 후 사용 가능합니다.<br />
					<i class="fa fa-heart" style="font-size:16px;color:red"></i>
					<span class="rec_count"></span>					
				</c:if>
				<c:if test="${ employee.getId() != null }">
					<button class="w3-button w3-black w3-round" id="rec_update">
						<i class="fa fa-heart" style="font-size:16px;color:red"></i>
						&nbsp;<span class="rec_count"></span>
					</button> 
				</c:if>
			</div>
		</div>
		
		<span id="thumbs_up_count">click</span>
			
		</div>
		<div>
		<c:choose>
		<c:when test="${gallery.author_id == employee.getId()}">
			<a href="/gallery/update?gallery_code=${gallery.gallery_code}">수정</a><br />
			<a href="/gallery/delete?gallery_code=${gallery.gallery_code}">삭제</a><br/>
			<a href="/gallery/list">목록보기</a><br />
		</c:when>
		<c:otherwise>
			<a href="/gallery/list">목록보기</a><br />
		</c:otherwise>
		</c:choose>
		</div>
	</form>
</body>

 <script  type="text/javascript">
 $(function(){
		// 추천버튼 클릭시(추천 추가 또는 추천 제거)
		$("#rec_update").click(function(){
			$.ajax({
			 url: "/gallery/thumbs",
             type: "POST",
             data: {
                 no: ${content.gallery_code},
                 id: '${employee.getId()}'
             },
             success: function () {
			        recCount();
             },
			})
		})
		
		// 게시글 추천수
	    function recCount() {
			$.ajax({
				url: "/gallery/thumbs",
             type: "POST",
             data: {
                 no: ${content.gallery_code}
             },
             success: function (count) {
             	$(".rec_count").html(count);
             },
			})
	    };
	    recCount(); // 처음 시작했을 때 실행되도록 해당 함수 호출


</script> 
</html>
