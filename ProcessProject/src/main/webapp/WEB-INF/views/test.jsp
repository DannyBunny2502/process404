<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="include/header.jsp" %>
	<script>
	function doF() {
		$.ajax({
			type: "post",
			/* contentType: "application/json", */
			url: "${path}/test/doF",
			/* dpF의 결과로 돌려받는 것이 result */
			$success: function(result) {
				console.log(result);
				$("#result").html("상품명:" + result.name + ",가격:" + result.price)
			}
		});
	}
	</script>
</head>
<body>

<div class="container">
	<%@ include file="include/topmenu.jsp" %>
	<br>
	<%@ include file="include/menu.jsp" %>
	<h2>링크 테스트</h2>
	<a href="${path}/test/doA">doA</a>
	<a href="${path}/test/doB">doB</a>
	<a href="${path}/test/doC">doC</a>
	<a href="${path}/test/doD">doD</a>
	<a href="javascript:doF()">doF</a>
	<div id="result"></div>
</div>
	
</body>
</html>