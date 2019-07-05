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
			<a class="navbar-brand" href="#">BookShop</a>
		</div>	
		<div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						 회원관리 <span class="caret"></span></a>
						 <ul class="dropdown-menu">
						 	<li><a href="${path}/gugu.do">구구단</a></li>
						 	<li><a href="${path}/test.do">링크테스트</a></li>
						 	<li><a href="${path}/user/login.do">로그인</a></li>
						 	<li><a href="${path}/user/insertUser.do">회원가입</a></li>
						 	<li><a href="${path}/user/updateUser.do">회원정보수정</a></li>
						 	<li><a href="${path}/user/checkUser">회원검사</a></li>
						 	<li><a href="productProcess/bookList.jsp?book_kind=all">상품수정/삭제</a></li>
						 </ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						 게시물관리 <span class="caret"></span></a>
						 <ul class="dropdown-menu">
						 	<li><a href="/board/list">게시물 목록</a></li>
						 	<li><a href="/board/write">게시물 작성</a></li>
						 	<li><a href="/user/idcheck">사용자 검사</a></li>
						 	<li><a href="/user/insertUser.do">사용자 등록</a></li>
						 </ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						 배송관리 <span class="caret"></span></a>
						 <ul class="dropdown-menu">
						 	<li><a href="delivery/deliveryList.jsp">배송리스트</a></li>
						 </ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						 통계관리 <span class="caret"></span></a>
						 <ul class="dropdown-menu">
						 	<li><a href="statistics/monthStatsForm.jsp">월별 판매 리스트(꺽은선)</a></li>
						 	<li><a href="statistics/monthBarStatsForm.jsp">월별 판매 리스트(막대)</a></li>
						 	<li><a href="statistics/bookKindStatsForm.jsp">도서종류별 연간 판매 비율</a></li>
						 </ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href='#'>
						 회원관리 <span class="caret"></span></a>
						 <ul class="dropdown-menu">
						 	<li><a href="userMgr/userList.jsp?mode=0">회원목록(수정/삭제)</a></li>
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
