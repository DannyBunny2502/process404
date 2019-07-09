<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>

<link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" />


</head>
<body>
<header class="top_nav top_fixed">
	<div class="top_align">
	
    <h1 class="top_logo">
    <a href="/">
    	<span class="nav_w"><img src="resources/image/process404_miri.png"  alt="PROCESS 404" ></span>
    </a>
    </h1>
   
    <div class="gnb ">
    
      <div class="gnb_wrap">
      	
        <!-- 서비스 메뉴 영역 -->
        <nav>
        	<ul class="main">
            <!-- class="on" 메뉴 활성화 및 Sub 활성화 -->
			            <li>
				<a href="#c" data-url="/contents/menu_intro.html"><span>게시판</span></a>			
				<a href="/contents/menu_intro.html" class="main_link"></a>
              <ul class="sub">
								<li><a href="/contents/drink.html">공지사항</a></li>
								<li><a href="/contents/bakery.html">자유게시판</a></li>
								<li><a href="/contents/bakery.html">갤러리</a></li>
              </ul>
            </li>
			            <li>
				<a href="#c" data-url="/contents/members_intro.html"><span>일정관리</span></a>			
				<a href="/contents/members_intro.html" class="main_link"></a>
              <ul class="sub">
					<li><a href="/contents/ediya_members.html">개인일정</a></li>
              </ul>
            </li>
			            <li>
				<a href="#c" data-url="/contents/coffee_lab.html"><span>문서관리</span></a>			
				<a href="/contents/coffee_lab.html" class="main_link"></a>
              <ul class="sub">
					<li><a href="/contents/coffee_lab.html">개인문서함</a></li>
              </ul>
            </li>
			            <li>
				<a href="#c" data-url="/contents/music_festa.html"><span>주소록</span></a>			
				<a href="/contents/music_festa.html" class="main_link"></a>
              <ul class="sub">
					<li><a href="/contents/music_festa.html">사원검색</a></li>
					<li><a href="/contents/music_festa.html">지점검색</a></li>
              </ul>
            </li>
            
			  <li>
			<a href="#c" data-url="/contents/notice.html?tb_name=notice"><span>커뮤니티</span></a>			
			<a href="/contents/notice.html?tb_name=notice" class="main_link"></a>
              <ul class="sub">
								<li><a href="/contents/notice.html?tb_name=notice">설문조사</a></li>								           
              </ul>
            </li>
            
              <li>
			<a href="#c" data-url="/contents/notice.html?tb_name=notice"><span>메신저</span></a>			
			<a href="/contents/notice.html?tb_name=notice" class="main_link"></a>
              <ul class="sub">
								<li><a href="/contents/notice.html?tb_name=notice">채팅</a></li>								           
              </ul>
            </li>
			          
          </ul>
        </nav>
   
      </div>
    
  </div>
</div>
</header>

</body>
</html>