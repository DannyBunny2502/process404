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
				
					<td>dd</td>
					<td>dd</td>
					<td>dd</td>
					<td>dd</td>
					<td>dd</td>
			
					<td><img src="/resources/image/gallery_img/${gallery.newPicture}"></td>
					<td>dd</td>
				
				</tr>
			</tbody>
		</table>
		
		<div>
		
		
		<span id="thumbs_up_count"></span>
		
		<span id="like">${likeCnt }</span>
			
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

 
 $(document).ready(function(){

	 var likeData= {
		     id: '${employee.getId()}',
		     gallery_code : '${gallery.gallery_code}'
		 };
	 
	 $.ajax({
		 url: "/gallery/thumbsView",
      method: "POST",
      type:"json",
      contentType:"application/json",
      data: JSON.stringify(likeData),
      success: function (data) {
 
				 if(data==0){
					$("#thumbs_up_count").html('');
		       		 $("#thumbs_up_count").append("♡");
				}else if(data==1){
					$("#thumbs_up_count").html('');
		       		 $("#thumbs_up_count").append("♥");
				} 
      		}
		});
		 
 	});


 $("#thumbs_up_count").click(function(){

	 var likeData= {
		     id: '${employee.getId()}',
		     gallery_code : '${gallery.gallery_code}'
		 };
		 
		$.ajax({
		 url: "/gallery/thumbs",
      method: "POST",
      type:"json",
      contentType:"application/json",
      data: JSON.stringify(likeData),
      success: function (data) {
         
     		$("#like").html('');
		        $("#like").append(data.check);

				 if(data.heart==0){
					$("#thumbs_up_count").html('');
		       		 $("#thumbs_up_count").append("♥");
				}else if(data.heart==1){
					$("#thumbs_up_count").html('');
		       		 $("#thumbs_up_count").append("♡");
				} 
     		 }
		});
	});

</script> 
</html>
