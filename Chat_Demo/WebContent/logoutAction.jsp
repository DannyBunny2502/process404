<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>logoutAction</title>
</head>
<body>
	<%
		session.invalidate();
	
	%>
	
	<script>
		location.href="index.jsp";
	</script>

</body>
</html>





















