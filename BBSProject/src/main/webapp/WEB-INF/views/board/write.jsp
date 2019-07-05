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
        <label class="control-label col-sm-2">제목</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="title" maxlength="50" placeholder="Enter Title">
        </div>
      </div>
      <div class="form-group">
        <label class="control-label col-sm-2">작성자</label>
        <div class="col-sm-3">
           <input type="text" class="form-control" name="writer" maxlength="50" placeholder="Enter Writer">
        </div>
      </div>
      <div class="form-group">
          <label class="control-label col-sm-2">내용</label>
           <div class="col-sm-3">
              <textarea rows="10" cols="100" name="content"></textarea>
           </div>
      </div>
     <div class="form-group">
       <button type="submit" class="btn btn-primary btn-sm">작성</button>
     </div>
    </form>
</div>
</body>
</html>