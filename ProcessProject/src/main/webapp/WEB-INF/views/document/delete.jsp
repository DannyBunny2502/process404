<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<title>게시물 목록</title>
</head>
<body>

	
	
		<%-- <input type="hidden" name="emp_code" value="${view.emp_code}" /> --%>
	
		<div>
			<label>document_code</label> <input type="text" name="document_code" value="${document.document_code}" />
		</div>
		<div>
			<label>fileName</label> <input type="text" name="newPicture" value="${document.newFile}" />
		</div>
	<form method="post">	
		<div>
			<button type="submit">삭제</button>
		</div>
		
	</form>

</body>
</html>
