<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "SurveyDBAction.user.SurveyDataBean" %>  
<%@ page import = "SurveyDBAction.user.SurveyDBBean" %> 

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="bootstrap/css/custom.css">
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<%-- 질문 추가하기 --%>
	<div class="col-offset-sm-2 col-sm-10">
		<table class="table table-bordered table-striped" align="center">
			<tr align="center">
				<td>질문유형</td>
				<td>추가</td>
			</tr>
			<tr align="center">
				<td>선택형</td>
				<td><a href="javascript:add_question_A()"><h4>+</h4></a></td>
			</tr>
			<tr align="center">
				<td>서술형</td>
				<td><a href="javascript:add_question_B()"><h4>+</h4></a></td>
			</tr>
		</table>
		
		<script>
		function add_question_A(){
			var popupX = (document.body.offsetWidth/2)-(500/2);
			var popupY = (document.body.offsetHeight/2)+(500/2);
			var url = "add_question_A.jsp";
			var option = "width=500, height=500, resizable=no, scrollbar=no, status=no, left="+popupX+"right="+popupY;
			window.open(url, "",option)
		}
		function add_question_B(){
			
		}
		</script>
		
		<%--질문 추가 내용 게시 --%>
		<div>
			
		</div>
		
	</div>
	
</body>
</html>