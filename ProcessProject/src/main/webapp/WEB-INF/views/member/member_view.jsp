<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 상세 페이지</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script>
	$(document).ready(function(){
		$("#btnUpdate").click(function(){
			// 확인 대화상자	
			if(confirm("수정하시겠습니까?")){
				document.form1.action = "${path}/member/update.do";
				document.form1.submit();
			}
		});
	});
	$(document).ready(function(){
		$("#btnDelete").click(function(){
			// 확인 대화상자 
			if(confirm("삭제하시겠습니까?")){
				document.form1.action = "${path}/member/delete.do";
				document.form1.submit();
			}
		});
	});
	
</script>
<style>

body {
padding-bottom: 50px;
}

</style>
</head>
<body>

	
	<form name="form1" method="post">
	<article>
	<div class="container">
		<div class="table-responsive">
			<br><h2>회원정보 상세</h2><br>
			<table  class="table table-striped table-sm"  width="400px">
			<tr align="center">
				<td>사원코드</td>
				<td><input name="emp_code" value="${dto.emp_code}"></td>
			</tr>
			<tr align="center">
				<td>아이디</td>
				 <!-- id는 수정이 불가능하도록 readonly속성 추가 -->
				<td><input name=id value="${dto.id}" readonly="readonly"></td>
			</tr>
			<tr align="center">
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr align="center">
				<td>국문이름</td>
				<td><input name="name_kor" value="${dto.name_kor}"></td>
			</tr>
			
			<tr align="center">
				<td>영문이름</td>
				<td><input name="name_eng" value="${dto.name_eng}"></td>
			</tr>

			<tr align="center">
				<td>이메일주소</td>
				<td><input name="email" value="${dto.email}"></td>
			</tr>
			<tr align="center">
				<td>폰번호</td>
				<td><input name="phone_number" value="${dto.phone_number}"></td>
			</tr>
			<tr align="center">
				<td>생년월일</td>
				<td><input name="birth" value="${dto.birth}"></td>
				<%-- <td>
					<fmt:formatDate value="${dto.birth}" pattern="yyyy-MM-dd"/>
				</td> --%>
			</tr>
			<tr align="center">
				<td>조직코드</td>
				<td><input name="org_code" value="${dto.org_code}"></td>
			</tr>
			<tr align="center">
				<td>부서</td>
				<td><input name="department_id" value="${dto.department_id}"></td>
			</tr>
			<tr align="center">
				<td>지점</td>
				<td><input name="branch_id" value="${dto.branch_id}"></td>
			</tr>
			<tr align="center">
				<td>직급</td>
				<td><input name="position" value="${dto.position}"></td>
			</tr>
			<tr align="center">
				<td>입사일자</td>
				<td><input name="hire_date" value="${dto.hire_date}"></td>
				<%-- <td>
					<fmt:formatDate value="${dto.hire_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td> --%>
			</tr>
			
		</table>
		
		</div>
		<div align="center">
			<button type="button"  value="수정" id="btnUpdate" class="btn btn-sm btn-primary">수정</button>
			<button  type="button"  value="삭제" id="btnDelete" class="btn btn-sm btn-primary">삭제</button>
			<div style="color: red;">${message}</div>
		</div>
		
		</div>
		</article>
	</form>
</body>
</html>