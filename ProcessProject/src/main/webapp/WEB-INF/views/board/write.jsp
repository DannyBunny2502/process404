<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
	<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
   <h1>글쓰기</h1><br>
    <form class="form-horizontal" method="post">
    
      <div class="form-group">
        <label class="control-label col-sm-2">notice_code</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="notice_code" maxlength="50" placeholder="Enter notice_code">
        </div>
      </div>
      
      <div class="form-group">
        <label class="control-label col-sm-2">author_id</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="author_id" maxlength="50" placeholder="Enter author_id" value="${employee.getId()}">
        </div>
      </div>
      
      <div class="form-group">
          <label class="control-label col-sm-2">author_password</label>
           <div class="col-sm-3">
              <input type="password" class="form-control" name="author_password" maxlength="50" placeholder="Enter password">
           </div>
      </div>
      
      <div class="form-group">
        <label class="control-label col-sm-2">title</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="title" maxlength="50" placeholder="Enter title">
        </div>
      </div>
      
      <div class="form-group">
        <label class="control-label col-sm-2">content</label>
        <div class="col-sm-3">
        	<textarea rows="10" cols="100" name="content">Enter content</textarea>
        </div>
      </div>
      
     <div class="form-group">
        <label class="control-label col-sm-2">views</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="views" maxlength="50" placeholder="Enter views">
        </div>
      </div>
      
       <div class="form-group">
        <label class="control-label col-sm-2">file_root</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="file_root" maxlength="50" placeholder="Enter file_root">
        </div>
      </div>
      
      <div class="form-group">
        <label class="control-label col-sm-2">file_size</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="file_size" maxlength="50" placeholder="Enter file_size">
        </div>
      </div>
      
     <!-- <div class="form-group">
        <label class="control-label col-sm-2">upload_date</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="upload_date" maxlength="50" placeholder="Enter upload_date">
        </div>
      </div> -->
      
     <div class="form-group">
       <button type="submit" class="btn btn-primary btn-sm">작성</button>
     </div>
     
    </form>
</div>
</body>
</html>