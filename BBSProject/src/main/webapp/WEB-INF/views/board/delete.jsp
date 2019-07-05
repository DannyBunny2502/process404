<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<title>게시물 목록</title>
</head>
<body>

	<form method="post">
	
		<input type="hidden" name="bno" value="${view.bno}" />
	
		<div>
			<label>제목</label> <input type="text" name="title" value="${view.title}" readonly="readonly"/>
		</div>
		
		<div>
			<button type="submit">삭제</button>
		</div>
		
	</form>

</body>
</html>
