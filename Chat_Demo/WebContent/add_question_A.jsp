<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h3>선택형 질문 추가</h3>
	<form action="question_A_insert.jsp">
		<table>
			<tr>
				<td>구분</td>
				<td>내용</td>
			</tr>
			<tr>
				<td>질문</td>
				<td><input type="text" id="question_A" name="question_A" maxlength="100"></td>
			</tr>
			<tr>
				<td>선택1</td>
				<td><input type="text" id="option_1" name="option_1" maxlength="100"></td>
			</tr>
			<tr>
				<td>선택2</td>
				<td><input type="text" id="option_2" name="option_2" maxlength="100"></td>
			</tr>
			<tr>
				<td>선택3</td>
				<td><input type="text" id="option_3" name="option_3" maxlength="100"></td>
			</tr>
			<tr>= 
				<td>선택4</td>
				<td><input type="text" id="option_4" name="option_4" maxlength="100"></td>
			</tr>
			<tr>
				<td><input type="submit"value="추가"></td>
			</tr>
		</table>
	</form>
	
</body>
</html>