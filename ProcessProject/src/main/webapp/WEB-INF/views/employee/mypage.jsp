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

${employee.getId()}
${employee.getPosition()}
	압?<br><br>
	
	<hr>

<h2>갤러리테이블</h2>
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
				<th>게시일자</th>
				
			</tr>
		</thead>
		<tbody>

<!-- notice_code, author_id, author_password, title, content, views, file_root, file_size, upload_date -->

	<c:forEach items="${gallery}" var="gallery" varStatus="status">
		<c:if test="${employee.id==gallery.author_id }">
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
			
					<td>${gallery.upload_date}</td>
				
				</tr>
				</c:if>
			</c:forEach>
			</tbody>
			</table>

<hr>	
			
			<h2>문서함</h2>
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
				<th>게시일자</th>
				
			</tr>
		</thead>
		<tbody>

<!-- notice_code, author_id, author_password, title, content, views, file_root, file_size, upload_date -->

	<c:forEach items="${document}" var="document" varStatus="status">
		<c:if test="${employee.id==document.author_id }">
			<c:if test="${status.count <= 7}">
				<tr>
					<td>
						${status.count }
					</td>
					<td>
						<a href="/document/view?document_code=${document.document_code}">${document.document_code}</a>
					</td>
					
					<td>${document.author_id}</td>
			
					<td>${document.fileName}</td>
					
					<td>${document.content}</td>
			
					<td>${document.views}</td>
			
					<td>${document.upload_date}</td>
				
				</tr>
				</c:if>
				</c:if>
			</c:forEach>
			</tbody>
			</table>
			
			
			
		<hr>
		
		<h2>정보수정</h2>

		<div>
			<label>emp_code</label> <input type="text" name="emp_code" value="${employee.emp_code}"  />
		</div>		
		
		<form method="post" enctype="multipart/form-data">

		
		<div>
			<label>name_kor</label> <input type="text" name="name_kor" value="${employee.name_kor}"  />
		</div>
		
		<div>
			<label>name_eng</label> <input type="text" name="name_eng" value="${employee.name_eng}"  />
		</div>
		
		<div>
			<label>id</label> <input type="text" name="id" value="${employee.id}"  />
		</div>

		<div>
			<label>password</label> <input type="text" name="password" value="${employee.password}"  />
		</div>
		
		<div>
			<label>email</label> <input type="text" name="email" value="${employee.email}"  />
		</div>

		<div>
			<label>phone_number</label> <input type="text" name="phone_number" value="${employee.phone_number}"  />
		</div>
		
		<div>
			<label>birth</label> <input type="text" name="birth" value="${employee.birth}"  />
		</div>

		<div>
			<label>org_code</label> <input type="text" name="org_code" value="${employee.org_code}"  />
		</div>
		
		<div>
			<label>branch_id</label> <input type="text" name="branch_name" value="${employee.branch_id}"  />
		</div>

		
		<div>
			<label>deparment_id</label> <input type="text" name="deparment_id" value="${employee.department_id}"  />
		</div>
		
		
		<div>
			<label>position</label> <input type="text" name="position" value="${employee.position}"  />
		</div>

	
		
		 <div>
			<label>img</label>
			<div>
	           <input type="file" class="form-control" name="file">
	           <img id="img_file" src="${path}/resources/image/emp_img/${employee.getImg() }" width="110px" height="145px" style="border:1px solid lightgray;">
	        </div>
			
		</div>
		 
		
	 	<div class="form-group">
    	   <button type="submit" class="btn btn-primary btn-sm">수정</button>
     	</div>
	</form>
</body>

<script type="text/javascript">

	var sel_file;

	$(document).ready(function(){
		$("#img_file").on("change", FileSelect);
	});

	function FileSelect(event){
		var files=event.target.files;
		var filesArr=Array.prototype.slice.call(files);

		filesArr.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지만 올릴 수 있습니다.");
				return; 
			}
			

		sel_file=f;

		var reader= new FileReader();
		reader.onload=function(event){
			$("#preview").attr("src",event.target.result);
			}
		reader.readAsDataURL(f);
		});
	}
	
</script>

</html>
