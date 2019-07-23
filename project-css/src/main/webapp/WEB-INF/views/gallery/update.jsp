<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<link href="/resources/css/board.css" rel="stylesheet" type="text/css" />
	<script src="/resources/js/jquery-3.3.1.min.js"></script>

	<script src="/resources/js/jquery-3.1.0.min.js"></script>
<html>
<head>
<title>게시물 목록</title>
</head>
<body>

		<div>
			<label>gallery_code</label> <input type="text" name="gallery_code" value="${gallery.gallery_code}" disabled="disabled"/>
		</div>
	<form method="post" enctype="multipart/form-data">
	

		<div>
			<label>author_id</label> <input type="text" name="author_id" value="${gallery.author_id}" readonly/>
		</div>
			
		<div>
			<label>title</label> <input type="text" name="title" value="${gallery.title}"/>
		</div>

		<div>
			<label>content</label> <input type="text" name="content" value="${gallery.content}" />
		</div>

		<div>
			<label>newPicture</label> <input type="file" name="file" id="img_file"/>
		</div>
		
		<div>
			<label>preview</label> 
			<div class="preview_wrap" >
		           <img id="preview" style="max-height:300px;"/>
		    </div>
		</div>
	
		<br>
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
