<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>

 <link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet" />

</head>
<body>

<div class="footer">
	<div class="info_section">
		<div class="inner">
			<a href="http://www.nhn.com/" onclick="clickcr(this,'ftr.nhn','','',event);" target="_blank" class="nhnent_link" title="NHN">
			<img src="resources/image/logo_icon_miri.png" width="90px" height="90px">
			</a>
			<div class="info_area">
				<ul class="policy_lst">
				<li class="policy_item"><a class="policy_link" href="http://www.nhn.com/" target="company" >제품소개</a><span class="bar"></span></li>
				<li class="policy_item"><a class="policy_link" href="/agreement.nhn?code=1" onclick="clickcr(this,'ftr.agree','','',event);">제품신청목록</a><span class="bar"></span></li>
		        <li class="policy_item"><a class="policy_link" href="/agreement.nhn?code=2" onclick="clickcr(this,'ftr.privacy','','',event);"><b>개인정보처리방침</b></a></li> 
        		</ul>
				
				<p class="notice_dsc">스프링으로 만들고 있습니다. 오늘은 2019년 7월 9일입니다
				<address>
					<ul class="info_lst">
	                    <li class="info_item">
	                          <span class="info_txt">팀 : PROCESS 404<span class="info_txt_bar"></span></span>
	                          <span class="info_txt">팀원 : 김노을 김주희 한기찬 김다은<span class="info_txt_bar"></span></span>
	                          <span class="info_txt">주소 : 서울특별시 종로구 관철동 종로12길 15<span class="info_txt_bar"></span></span>
	                          <span class="info_txt">문의전화 : 6901-7001<span class="info_txt_bar"></span></span>
	                          <span class="info_txt">대표전화 : 1234-4321</span>
	                  	</li>
	                  	<li class="info_item">
	                          <span class="info_txt">Email : <a class="mail_link" >sol.daeun2ya@gmail.com</a><span class="info_txt_bar"></span></span>
	                          <span class="info_txt">사업자 등록번호 : 123-45-67890<span class="info_txt_bar"></span></span>
	                          <span class="info_txt">통신판매업신고번호 : 제2019-서울서초-1234호<span class="info_txt_bar"></span></span>
	                        
	                  	</li>
					</ul>
				</address>
				<p class="copyright">©  PROCESS404 Corp. All rights reserved.</p>
			</div>
		</div>
		
	</div>
	
</div>

</body>
</html>