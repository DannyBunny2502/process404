<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원등록 페이지</title>


<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">


<script>
	/*var phone_number1 = document.frm.phone1.value;
	var phone_number2 = document.frm.phone2.value;	
	var phone_number3 = document.frm.phone3.value;
	var phone_number = phone_number1 +"-" + phone_number2 +"-" + phone_number3;
	document.getElementById("phone_number").value = phone_number;*/

</script>
</head>
<body>


<article>
<div class="container">

<div class="table-responsive">




	<br><h2>회원등록폼</h2><br>
	<form name="form1" method="post" action="${path}/member/insert.do">
	
	
	<table class="table table-striped table-sm">
			<tr>
				<td>사원코드</td>
				<td><input name="emp_code"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>국문이름</td>
				<td><input name="name_kor"></td>
			</tr>
			<tr>
				<td>영문이름</td>
				<td><input name="name_eng"></td>
			</tr>
			<tr>
				<td>이메일주소</td>
				<td><input name="email"></td>
			</tr>
			<tr>
				<td>폰넘버</td>
					
					<td><input name="phone_number"></td>
					<!--  <td>
						 <input type="text" name="phone_number" class="input0" maxLength="4"/>-
						 <input type="text" name="phone_number" class="input0" maxLength="4"/>-
						 <input type="text" name="phone_number" class="input0" maxLength="4"/>
					 </td>-->
				 </tr>
				
			<tr>
				<td>생년월일</td>
				<td><input name="birth"></td>
			</tr>
			<tr>
				<td>조직코드</td>
				<td>
					<select id="org_code" name="org_code" class="custom-select">
							<option value=""selected>코드선택</option>
		 			 		<option value="1" <c:if test="${closed_day=='1'}"> selected </c:if>>본사</option>
		 					<option value="2" <c:if test="${closed_day=='2'}"> selected </c:if>>지점</option>
					</select>
					
					
				</td>
			</tr>
			<tr>
				<td>부서</td>
				<td> 
					<select id="department_id" name="department_id" class="custom-select">
						<option value=""selected>부서선택</option>
	 			 		<option value="10" <c:if test="${closed_day=='10'}"> selected </c:if>>영업팀</option>
	 					<option value="11" <c:if test="${closed_day=='11'}"> selected </c:if>>인사팀</option>
	  					<option value="12" <c:if test="${closed_day=='12'}"> selected </c:if>>회계팀</option>
	  					<option value="13" <c:if test="${closed_day=='13'}"> selected </c:if>>마케팅팀 </option>
	  			 		<option value="14" <c:if test="${closed_day=='14'}"> selected </c:if>>기획팀</option>
	  					<option value="15" <c:if test="${closed_day=='15'}"> selected </c:if>>개발팀</option>
	  					<option value="16" <c:if test="${closed_day=='16'}"> selected </c:if>>해외사업팀</option>
	  					<option value="99" <c:if test="${closed_day=='99'}"> selected </c:if>>대표</option>
	  					<option value="88" <c:if test="${closed_day=='88'}"> selected </c:if>>임원</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>지점</td>
				<td> 
					<select id="branch_id" name="branch_id" class="custom-select">
						<option value=""selected>지점선택</option>
	 			 		<option value="10" <c:if test="${closed_day=='10'}"> selected </c:if>>강남점</option>
	 					<option value="11" <c:if test="${closed_day=='11'}"> selected </c:if>>강북점</option>
	  					<option value="12" <c:if test="${closed_day=='12'}"> selected </c:if>>종로점</option>
	  					<option value="13" <c:if test="${closed_day=='13'}"> selected </c:if>>인천점</option>
	  			 		<option value="14" <c:if test="${closed_day=='14'}"> selected </c:if>>수원점</option>
	  					<option value="15" <c:if test="${closed_day=='15'}"> selected </c:if>>안산점</option>
	  					<option value="16" <c:if test="${closed_day=='16'}"> selected </c:if>>의정부점</option>
	  					<option value="17" <c:if test="${closed_day=='17'}"> selected </c:if>>화성점</option>
	  					<option value="18" <c:if test="${closed_day=='18'}"> selected </c:if>>원주점</option>
	  					<option value="19" <c:if test="${closed_day=='19'}"> selected </c:if>>춘천점</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>직급</td>
				<td> 
					<select id="branch_id" name="branch_id" class="custom-select">
						<option value="">직급선택</option>
	 			 		<option value="1" <c:if test="${closed_day=='1'}"> selected </c:if>>대표</option>
	 					<option value="2" <c:if test="${closed_day=='2'}"> selected </c:if>>임원</option>
	  					<option value="3" <c:if test="${closed_day=='3'}"> selected </c:if>>부장</option>
	  					<option value="4" <c:if test="${closed_day=='4'}"> selected </c:if>>차장</option>
	  			 		<option value="5" <c:if test="${closed_day=='5'}"> selected </c:if>>과장</option>
	  					<option value="6" <c:if test="${closed_day=='6'}"> selected </c:if>>대리</option>
	  					<option value="7" <c:if test="${closed_day=='7'}"> selected </c:if>>사원</option>
	  				</select>
				</td>
			</tr>
			<tr>
				<td>입사날짜</td>
				<td><input name="hire_date"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="확인">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
	</div>
	</div>
	</article>
	
</body>
</html>