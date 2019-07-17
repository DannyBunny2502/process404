<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../include/header.jsp" %>
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="../resources/bootstrap/css/chatDesign.css" rel="stylesheet">
</head>
<body>
<%@ include file="./chatSidebar.jsp" %>
	<div class="container bootstrap snippet">
	    <div class="row">
			<div class="col-md-4 bg-white ">
	            <div class=" row border-bottom padding-sm" style="height: 40px;">
	            </div>
	            
	            <!-- =============================================================== -->
	            <!-- member list -->
	            <div>
	            	<form method="post">
		            	<input type="text" name="search" maxlength="20">&nbsp;&nbsp;
		            	<button type="submit">조회</button>
	            	</form>
	            </div>
	            <ul class="friend-list">
	            	<c:forEach items="${chatMembers}" var="members">
		                <li class="active bounceInDown">
		                	<a href="${path}/chat/chatBox?chatPartner=${members.id}" class="clearfix">
		                		<img src="../resources/image/photo.jpeg" alt="" class="img-circle">
		                		<div class="friend-name">	
		                			<p name="chatPartner">${members.id}</p><br>
		                			${members.position }
		                		</div>
		                	</a>
		                </li>
	                </c:forEach>
	       		</ul>
	   		</div>
		</div>
	</div>
</body>
</html>