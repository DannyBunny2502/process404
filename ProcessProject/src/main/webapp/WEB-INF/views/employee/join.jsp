<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

		
<html>
<head>
<title>회원가입</title>
</head>
<body>
		
		<div>
			<label>emp_code</label> <input type="text" name="emp_code" value="${join.emp_code} "  />
		</div>
		
		<form method="post"  >
		
		<div>
			<label>name_kor</label> <input type="text" name="name_kor" value="${join.name_kor}"  />
		</div>
		
		<div>
			<label>name_eng</label> <input type="text" name="name_eng" value="${join.name_eng}"  />
		</div>
		
		<div>
			<label>id</label> <input type="text" name="id" value="${join.id}"  />
		</div>

		<div>
			<label>password</label> <input type="text" name="password" value="${join.password}"  />
		</div>
		
		<div>
			<label>email</label> <input type="text" name="email" value="${join.email}"  />
		</div>

		<div>
			<label>phone_number</label> <input type="text" name="phone_number" value="${join.phone_number}"  />
		</div>
		
		<div>
			<label>birth</label> <input type="text" name="birth" value="${join.birth}"  />
		</div>

		<div>
			<label>org_code</label> <input type="text" name="org_code" value="${join.org_code}"  />
		</div>
		
		<div>
			<label>branch_name</label> <input type="text" name="branch_name" value="${join.branch_name}"  />
		</div>

		<div>
			<label>deparment_name</label> <input type="text" name="deparment_name" value="${join.deparment_name}"  />
		</div>
		
		<div>
			<label>deparment_id</label> <input type="text" name="deparment_id" value="${join.deparment_name}"  />
		</div>
		
		
		<div>
			<label>position</label> <input type="text" name="position" value="${join.position}"  />
		</div>

		<div>
			<label>img_root</label> <input type="text" name="img_root" value="${join.img_root}"  />
		</div>
		
		 <div>
			<label>img</label> <input type="file" name="img">
		</div>
		 
		
	 	<div class="form-group">
    	   <button type="submit" class="btn btn-primary btn-sm">가입</button>
     	</div>
	</form>

</body>
</html>
