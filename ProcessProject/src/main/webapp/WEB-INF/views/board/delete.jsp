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
			<label>notice_code</label> <input type="text" name="notice_code" value="${view.notice_code}" readonly="readonly"/>
		</div>
	<form method="post">	
		<div>
			<button type="submit">삭제</button>
		</div>
		
	</form>

</body>
</html>
