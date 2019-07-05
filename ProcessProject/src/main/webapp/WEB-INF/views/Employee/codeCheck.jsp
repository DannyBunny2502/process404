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
   <h1>사원코드를 입력하세요</h1><br>
   
    <form class="form-horizontal" method="get" action="/codeCheck">
    
      
      <div class="form-group">
        <label class="control-label col-sm-2">사원코드</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="emp_code" maxlength="50" placeholder="Enter emp_code">
        </div>
      </div>
      
   
     <div class="form-group">
       <button type="submit" class="btn btn-primary btn-sm">확인</button>
     </div>
     
    </form>
   </div>

</body>
</html>