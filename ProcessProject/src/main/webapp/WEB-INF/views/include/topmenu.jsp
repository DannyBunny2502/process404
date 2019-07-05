<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" 
				data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">TESTSTST</a>
		</div>	
		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
	
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						 게시물 <span class="caret"></span></a>
						 <ul class="dropdown-menu">
						 	<li><a href="/board/list">게시물 목록</a></li>
						 	<li><a href="/board/write">게시물 작성</a></li>
						 </ul>
					</li>
					
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						 회원관리 <span class="caret"></span></a>
						 <ul class="dropdown-menu">
						 	<li><a href="/Employee/codeCheck.jsp">회원가입(등록)</a></li>
						 	<li><a href="userMgr/userList.jsp?mode=1">회원목록(수정/삭제)</a></li>
						 </ul>
					</li>
					<li>
						<a href="logon/managerLogout.jsp"> 로그아웃</a>
					</li>
				</ul>
			</div>
		
		</div>
	
	</div>
</nav>
