<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원코드 확인</title>
</head>
<body>

<div class="container">
   <h1>아이디 찾기</h1><br>
  <!--  action="/codeCheck" -->
     <form class="form-horizontal" Action="/employee/findId" method="post">
    
      <div class="form-group">
        <label class="control-label col-sm-2">사원코드</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="emp_code"  placeholder="Enter emp_code">
        </div>
      </div>
       <div class="form-group">
        <label class="control-label col-sm-2">이름</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="name_kor"  placeholder="Enter name_kor">
        </div>
      </div>
      
  <%--  <a href="/board/view?notice_code=${view.emp_code}"> --%>
     <div class="form-group">
       <button type="submit" class="btn btn-primary btn-sm">확인</button>
     </div>
     
    </form> 
    
  </div>

</body>
</html>