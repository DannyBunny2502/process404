<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
iframe {
	width:800px;
	height:200px;
	border : 1px;
	border-style:solid;
}
</style>

</head>
<body>

<%-- <%@ include file="../include/header2.jsp" %> --%>

<div class="container">

	<iframe src="http://www.daum.net"></iframe>

	<!--  target="iframe" 파일을 올리면 원래눈 action="${path}/document/upload"로 이동해야 하는데,
	페이지를 넘어가지 않게 하기 ㅜ이해  결과를 iframe으로 보낸다. -->
	<form action="${path}/document/upload" method="post" enctype="multipart/form-data" target="iframeResult">
		
		<!-- name="file"의 변수명과 컨트롤러의 MultipartFile file과 일치해야한ㅇ다. -->
		<input type="file" name="file">
		<input type="submit" value="파일올리기">
		
	</form>
	

</div>

</body>
</html>