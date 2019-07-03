<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>surveyTest_form_input</title>
</head>
<body>
	<h1>새 설문 작성</h1>
	<input type="button" value="양식작성" onclick="winopen()">
	<table>
		<tr>
			<td>구분</td>
			<td>내용</td>
		</tr>
		<tr>  
			<td>질문</td>
			<td><input type="text" onkeypress="winmessage(this.value)"></td>
		</tr>
	</table>
	<script>
		function winopen(){
			win = window.open('surveyTest02.jsp', 'ot','width=500px, height=700px');
		}
		function winmessage(msg){
			win.document.getElementById("message").innerText=msg;
		}
	</script>
</body>
</html>