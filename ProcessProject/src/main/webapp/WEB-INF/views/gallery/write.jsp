<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
	<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="/resources/js/jquery-3.1.0.min.js"></script>
	
	<style>
	.preview_wrap {
	width:150px;
	margin-top:25px;
	}
	
	/* .preview_wrap preview {
	max-width:100%;
	} */
</style>
</head>
<body>
<div class="container">
   <h1>글쓰기</h1><br>
    <form class="form-horizontal" method="post" enctype="multipart/form-data">
    
    
    
      <div class="form-group">
        <label class="control-label col-sm-2">author_id</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="author_id" maxlength="50" placeholder="Enter author_id" value="${employee.getId()}" readonly>
        </div>
      </div>
      
      <div class="form-group">
          <label class="control-label col-sm-2">author_password</label>
           <div class="col-sm-3">
              <input type="password" class="form-control" name="author_password" maxlength="50" placeholder="Enter password">
           </div>
      </div>
      
      <div class="form-group">
        <label class="control-label col-sm-2">title</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="title" maxlength="50" placeholder="Enter title">
        </div>
      </div>
      
      <div class="form-group">
        <label class="control-label col-sm-2">content</label>
        <div class="col-sm-3">
        	<textarea rows="10" cols="100" name="content">Enter content</textarea>
        </div>
      </div>

      
       <div class="form-group">
        <label class="control-label col-sm-2">picture</label>
        <div class="col-sm-3">
           <input type="file" class="form-control" name="file" id="img_file">
        </div>
      </div>
      
       <div class="form-group">
        <label class="control-label col-sm-2">preview</label>
	        <div class="col-sm-3">
	      
				<div class="preview_wrap" style="width:170px; height:50px;">
		           <img id="preview"/>
		      	</div>
	      	
	      	</div>
      	</div>
      
       
     <div class="form-group">
       <button type="submit" class="btn btn-primary btn-sm">작성</button>
     </div>
     
    </form>
</div>
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