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

<!-- notice_code, author_id, author_password, title, content, documents, file_root, file_size, upload_date -->
	
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
				
				<th>file</th> 
				<th>upload_date</th>
				
			</tr>
		</thead>
		<tbody>
				<tr>
				
					<td>${document.author_id}</td>
					<td>${document.name_kor}</td>
					<td>${document.title}</td>
					<td>${document.content}</td>
					<td>${document.views+1}</td>
			
					<td><img src="/resources/doc/${document.newFile}"></td> 
					<td>${document.upload_date}</td>
				
				</tr>
			</tbody>
		</table>
		
		<div>
		
		
		<span id="thumbs_up_count"></span>
		
		<span id="like">${likeCnt }</span>
			
		</div>
		
		<div>
		<c:choose>
		<c:when test="${document.author_id == employee.getId()}">
			<a href="/document/update?document_code=${document.document_code}">수정</a><br />
			<a href="/document/delete?document_code=${document.document_code}">삭제</a><br/>
			<a href="/document/list">목록보기</a><br />
		</c:when>
		<c:otherwise>
			<a href="/document/list">목록보기</a><br />
		</c:otherwise>
		</c:choose>
		</div>
	</form>
</body>




 <script  type="text/javascript">

 
 $(document).ready(function(){

	 var likeData= {
		     id: '${employee.getId()}',
		     document_code : '${document.document_code}'
		 };
	 
	 $.ajax({
		 url: "/document/thumbsView",
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
		     document_code : '${document.document_code}'
		 };
		 
		$.ajax({
		 url: "/document/thumbs",
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
