<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<title>회원가입</title>
</head>
<body>


		<form method="post">


		<div>
			<label>email</label> <input type="text" name="email" value="${join.email}" disabled="disabled" />
		</div>

		<div>
			<label>name_eng</label> <input type="text" name="name_eng" value="${join.name_eng}" disabled="disabled" />
		</div>
		
	
		
	 	<div class="form-group">
    	   <button type="submit" class="btn btn-primary btn-sm">가입</button>
     	</div>
	</form>

</body>
</html>
