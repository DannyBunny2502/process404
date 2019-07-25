<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>

<link href="${path}/resources/css/header.css" rel="stylesheet" />


</head>
<body>
<header class="top_nav top_fixed">
	<div class="top_align">
	
    <h1 class="top_logo">
    <a href="/">
    	<span class="nav_w"><img src="/resources/image/process404_miri.png"  alt="PROCESS 404" ></span>
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
								<li><a href="/board/getBoardList">공지사항</a></li>
								<li><a href="/contents/bakery.html">자유게시판</a></li>
								<li><a href="/gallery/list">갤러리</a></li>
              </ul>
            </li>
			            <li>
				<a href="#c" data-url="/contents/members_intro.html"><span>일정관리</span></a>			
				<a href="/contents/members_intro.html" class="main_link"></a>
              <ul class="sub">
					<li><a href="/calendar/calendar">개인일정</a></li>
              </ul>
            </li>
			            <li>
				<a href="#c" data-url="/document/uploadAjax/"><span>문서관리</span></a>			
				<a href="/contents/coffee_lab.html" class="main_link"></a>
              <ul class="sub">
					<li><a href="/document/list">문서함</a></li>
              </ul>
            </li>
			            <li>
				<a href="#c" data-url="/contents/music_festa.html"><span>주소록</span></a>			
				<a href="/contents/music_festa.html" class="main_link"></a>
              <ul class="sub">
					<li><a href="/member/list">사원검색</a></li>
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
					<li><a href="javascript:popup_chat()" target="_blank">채팅</a></li>								           
              </ul>
            </li>
			          
          </ul>
        </nav>
   
      </div>
    
  </div>
</div>
</header>

<script>
    function popup_chat(){
        var url = "${path}/chat/chatList";
        var name= "chatPopUp";
        var option = "width:100, height=150, scrollbars=yes, location=no, top=50, left=100 ";
        
        window.open(url, name, option);
    }
</script>


</body>
</html>