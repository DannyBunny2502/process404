<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<title>게시물 목록</title>
</head>
<body>

		<div>
			<label>notice_code</label> <input type="text" name="notice_code" value="${view.notice_code}" disabled="disabled"/>
		</div>
	<form method="post">

		<div>
			<label>author_id</label> <input type="text" name="author_id" value="${view.author_id}" disabled="disabled" />
		</div>

		<div>
			<label>author_password</label> <input type="text" name="author_password" value="${view.author_password}" disabled="disabled" />
		</div>
		
		<div>
			<label>title</label> <input type="text" name="title" value="${view.title}"/>
		</div>

		<div>
			<label>content</label> <input type="text" name="content" value="${view.content}" />
		</div>

		<div>
			<label>views</label> <input type="text" name="views" value="${view.views}" disabled="disabled"/>
		</div>
		
		<div>
			<label>file_root</label> <input type="text" name="file_root" value="${view.file_root}"/>
		</div>

		<div>
			<label>file_size</label> <input type="text" name="file_size" value="${view.file_size}"/>
		</div>

		<div>
			<label>upload_date</label> <input type="text" name="upload_date" value="${view.upload_date}" disabled="disabled" />
		</div>
		
	 	<div class="form-group">
    	   <button type="submit" class="btn btn-primary btn-sm">수정</button>
     	</div>
	</form>

</body>
</html>
