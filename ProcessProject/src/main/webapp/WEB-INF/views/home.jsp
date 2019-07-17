<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>




		<meta charset="MS949">
		<meta http-equiv="Content-Type" content="text/html; charset=MS949">
		<title>PROCESS 404 - Group Ware (mini)</title>
	
		 <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.8.0.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jsFile.js"></script>

		


		<!--[if lt IE 9]>
		<script type="text/javascript" src="/share/js/json2.js"></script>
		<![endif]-->
		<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script language="javascript" type="text/javascript" src="https://hangame-images.toastoven.net/hangame/gnb/reform/js/hangame_gnb.js?201906170848"></script><script type="text/javascript" src="https://hangame-images.toastoven.net/hangame/gnb/reform/js/hangame_gnb_loader.js?20190618160800"></script><script type="text/javascript" src="https://hangame-images.toastoven.net/hangame/gnb/reform/js/hangame_footer.js?201906071703" charset="euc-kr"></script><script type="text/javascript" src="https://hangame-images.toastoven.net/hangame/gnb/reform/js/hangame_gnb_pc.js?201906071703" charset="EUC-KR"></script>
		</head>
<body style=""><script src="https://hangame-images.toastoven.net/hangame/gnb/reform/game/gnb_mobile_game_list.js?1560841683852" type="text/javascript" charset="UTF-8" async=""></script><script src="https://hangame-images.toastoven.net/hangame/gnb/reform/game/gnb_pc_game_list.js?1560841683852" type="text/javascript" charset="UTF-8" async=""></script><div id="__myRecentGameDiv" style="display:none;"></div>

		
		<!-- <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-112897910-2"></script> -->
		<script type="text/javascript">
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'UA-112897910-2');
		</script>
		
		
		<script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "Organization",
            "name": "한게임",
            "url": "https://www.hangame.com",
            "sameAs":   [
                        "https://www.facebook.com/playHangame/"
                        ]
        }
		</script>


<script type="text/javascript">
	var G_ROOFTOP_BANNER_COOKIE_POSTFIX = 'promotionRooftop'
	function setTopBannerCookie(topBannerId) {
	    $.cookie(topBannerId + G_ROOFTOP_BANNER_COOKIE_POSTFIX, "not expires", {expires:1, path: "/", domain: "hangame.com"});
	}

	function initTopBannerCookie(topBannerId) {
	    $.removeCookie(topBannerId + G_ROOFTOP_BANNER_COOKIE_POSTFIX);
	}


	function toggleTopBanner() {
	    $(".gnb_bar .close_btn").toggle();
        $(".gnb_bar .open_btn").toggle();
        $(".gnb_bar .gnb_bnr_area").slideToggle();
	}
</script>


<%@ include file="include/header2.jsp" %>
			
		
		<div id="wrap" class="wrap" >
		<!-- style="background-image:url(https://hangame-images.toastoven.net/hangame/main2016/banner/mini/hangame_mini_BG_20190426.jpg)" -->
			
		

			<div id="contents" class="contents">

	
	<div class="pop_wrap" style="display:none"></div>
	<!-- //popup: 정기점검 -->
	
	
	<div class="pop_wrap" style="display:none"></div>
	<!-- //popup: 긴급점검 -->
	

	<div class="spot_section">
       <div class="special_banner" id="special_banner">
            <a href="#" target="_self" class="special_banner_link" onclick="" title="스페셜 배너">
                <img src="${path}/resources/image/main_banner.png" alt="스페셜 배너" class="special_banner_img" title="스페셜 배너">
            </a>
        </div>
    
    
    <div class="spot_row_group">
    
        <div class="spot_row">
        
            <div class="spot_col">
                <div class="rolling">
                    <div class="rolling_box" id="promotion_webboard">
                    </div>
                 </div>
             </div>

             <div class="spot_col">
                 <div class="rolling wide_type">
                      <div class="rolling_box" id="promotion_channeling" style="visibility: hidden">
          			  </div>
                 </div>
              </div>

            <div class="spot_col">
            
             <!-- ♥ -->
       
                <div class="member">
                    <div class="notice">
                        <div class="notice_cont">
                        	<img src="${path}/resources/image/logo_icon_miri.png" width="22px" height="22px" class="noice_tit_link" ></img>
                            <!-- <a class="notice_tit_link" href="" >PROCESS 404</a> -->
       							
       							<span class="logout" style="margin-top:3px; float:right;">
       								<c:if test="${employee!=null}">
       									<div class="login_help lg_member_con">
										  <a href="employee/mypage/">마이페이지</a>&nbsp;|
										  <a href="employee/logout/">로그아웃</a>
										
										</div>
       								</c:if>
								</span>
                        </div>
                    </div>


<form id="hancoinChargeForm" action="https://bill.hangame.com/pay/v2/charge.nhn" method="post" target="hancoinChargePopup">
	<input type="hidden" name="CHNL" value="HG">
	<input type="hidden" name="CLOSETYPE" value="O">
	<input type="hidden" name="RURL" id="returnUrl">
</form>


<!-- ♥ 회원가입 후  -->
<c:if test="${employee!=null}">
	<div class="step01 login login_common_ly" id="login_after">
	<a href="#">
		<img src="${path}/resources/image/emp_img/${employee.getImg_root() }" width="110px" height="145px" style="border:1px solid lightgray; float:left">
	</a>
		<div class ="member_info_list" style="margin: 6px 0 0 128px;padding-bottom: 44px;">
			<div class="info">
				<p>${employee.getId()}</p> <br><br>
				<p>${employee.getBranch_name()}</p>
				<p>${employee.getPosition()}</p>
				<p>${employee.getdeparment_name()}</p>
				
			</div>
		</div>
		<div class="message">
			메시지함<br>
			&nbsp;
			<a href="/" id="new_message">새 메시지 </a>
			<a href="'/" id="start_message">채팅하기</a>
				
		</div>
	</div>
</c:if>
<!-- ♥ 회원가입 후  -->

<c:if test="${employee==null}">
<!--  ♥로그인 화면  -->
<div class="step01 login login_common_ly" id="login_common_ly" >
	<div class="ly_lgtxt_area" id="ly_lgtxt_area">
	</div>
	           
               
		<!--// message Layer -->
		<h2 class="blind">로그인</h2>
					<div class="login_set lg_iptxt">
				
					</div>
					
		<form method="post">
			<div class="login_form idpw_area">
				<div id="login_box" style="">
					<div class="input_form">
						<div  class="login_form_item input_id">
							<input type="text" name="id" placeholder="아이디" id="id" class="txt_inp" maxlength="12">
						</div>
						<div  class="login_form_item input_pw">
							<input type="password" name="password" placeholder="비밀번호" id="password" class="txt_inp pw" maxlength="15">
						</div>
					</div>
				</div>
								
				 <button type="submit" id="btnLogin" class="login_btn is_disabled lg_input_btn">로그인</button>
						
			</div>
		</form> 
		
				<div class="login_easy">
					<p class="ico_payco_bubble"><a href="http://sponsor.hangame.com/paycoplus/signUpEvent.nhn" target="_blank">PROCESS404 홈페이지 바로가기</a></p>
					<a href="#" title="PAYCO 로그인" class="btn_other btn_login_payco" onclick="javascript:clickLoginCommonCount('minilogin-snslogin');void(doMultiLogin(false,loginform.nxtURL.value,'','payco')); return false;"><span class="blind">PAYCO 로그인</span></a>
				</div>

				<div class="login_help lg_member_con" style="padding-top:10px;">
					 <a href="/employee/codeCheck">아이디 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					 <a href="/employee/codeCheck">비밀번호 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					 <a href="/employee/codeCheck">회원가입</a>
				</div>
				<div class="ly_lgtxt_capslock" id="CapslockInfo" style="display:none;"><img src="https://hangame-images.toastoven.net/hangame/renewal_2007/common/login/hidden.gif" alt="Caps Lock이 켜져있습니다."></div>
	</div>
</c:if>


                </div>
            </div> 
            <!-- ♥ 로그인 -->
        </div>

        
        <div class="spot_row">
 


<div class="spot_col">
	<a href="http://mhorigin.hangame.com/" target="_self" class="banner_link" onclick="clickcr(this,'pr.channeling_random','','',event);" title="게임 배너">
		<div class="banner_img"></div>
	</a>
</div>

<div class="spot_col">
	
	<a href="https://gostop.hangame.com/msduelgo.nhn" target="_self" class="banner_link" onclick="clickcr(this,'pr.midbottom1','','',event);" title="게임 배너">
		<div class="banner_img" ></div>
	</a>
</div>

<div class="spot_col spot_col_third">
	
	<a href="https://baduk.hangame.com/" target="_self" class="banner_link" onclick="clickcr(this,'pr.rightbottom1','','',event);" title="게임 배너">
		<div class="banner_img" ></div>
	</a>
</div>

<div class="spot_col">
	
	<a href="#" class="banner_link" onclick="clickcr(this,'pr.mobile','','',event); openLayer('mobilePRLayer'); return false;" title="게임 배너">
		<img src="${path}/resources/image/login_under_banner.png" alt="" class="banner_img" title="게임 배너">
	</a>
</div>

        </div>

        
    </div>

    
    
    

    <div class="spot_event">
        <a href="http://bj.hangame.com/" class="event_link" onclick="clickcr(this,'pr.horizon','','',event);" target="" title="프로모션 배너">
            <img src="${path}/resources/image/horizontal_banner.png" alt="프로모션 배너" class="event_img" title="프로모션 배너">
        </a>
    </div>
</div>

    <div class="floating_banner">
        
        
        

        <a href="https://mini.hangame.com/index/pc?utm_source=hangame&amp;utm_medium=floating&amp;utm_campaign=open" target="_blank" class="floating_banner_link" onclick="clickcr(this,'pr.rightwing','','',event, 1); clickcr(this,'hangame_portal.floatingbanner_20190426','','',event);" title="날개 배너">
                
            <img src="${path}/resources/image/wing_banner.png" alt="날개 배너" title="날개 배너" class="floating_banner_img">
        </a>
    </div>

	
	<div class="hangame_section">
		

<div class="plus_area half_type">
    
    <div class="tit_box">
    
        <h2 class="comic_tit">
        	<a href="https://mix.hangame.com" onclick="clickcr(this, 'mix.logo','','',event);" target="hangameMixSite" class="tit_link">
      		  <img src="${path}/resources/image/board_tit.png" class="logo_mix">HANGAME mix
        	</a>
        </h2>
       
        <div class="comic_tab_box">

            <!-- [D] tab 선택 시 is_active 클래스, <span class="blind">선택됨</span> 추가 (접근성 이슈) -->
            <ul id="comicoCategoryUl" class="comic_tab">
                
			     <li class="comic_tab_item is_active">
			     	<a href="#notice" onclick="changeTab(this, 'COMICO_000002', 1);" class="comic_tab_link">공지사항
			     	<!-- ♥ clickcr(this, 'toon.tab1','','',event); return false; -->
			     		<span class="blind">선택됨</span>
			     	</a>
			     </li>
				  
				  <li class="comic_tab_item">
				  	<a href="#board" onclick="changeTab(this, 'COMICO_000003', 2);" class="comic_tab_link">자유게시판</a>
				  </li>
    
            </ul>
        </div>
    </div>
    
   <div id="comicoBannerDiv" class="comic_box">
    <div id ="notice_table"></div>
    </div>
    
</div>
<script type="text/javascript">
    var g_comicoCategoryDisplayBannerMapToJson = $.parseJSON(JSON.stringify({"COMICO_000005":[{"bannerId":6434,"bannerName":"무왕대구","url":"http://comics.hangame.com/titles/11137","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/11137_kv332x444.jpg","startYmdt":1560818520000,"endYmdt":1580172120000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"소그미","linkType":"NEW","bannerNameURLEncoding":"%EB%AC%B4%EC%99%95%EB%8C%80%EA%B5%AC"},{"bannerId":6440,"bannerName":"레벨업 어게인","url":"http://comics.hangame.com/titles/19201","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/19201_kv332x444.jpg","startYmdt":1560818580000,"endYmdt":1595896980000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"비츄","linkType":"NEW","bannerNameURLEncoding":"%EB%A0%88%EB%B2%A8%EC%97%85+%EC%96%B4%EA%B2%8C%EC%9D%B8"},{"bannerId":6439,"bannerName":"잭슨의 관","url":"http://comics.hangame.com/titles/145","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/145_kv332x444.jpg","startYmdt":1560818580000,"endYmdt":1580172180000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"CTK ","linkType":"NEW","bannerNameURLEncoding":"%EC%9E%AD%EC%8A%A8%EC%9D%98+%EA%B4%80"},{"bannerId":6433,"bannerName":"너를 그리는 시간","url":"http://comics.hangame.com/titles/21771","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/21771_kv332x444.jpg","startYmdt":1560818460000,"endYmdt":1580258460000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"이노안","linkType":"NEW","bannerNameURLEncoding":"%EB%84%88%EB%A5%BC+%EA%B7%B8%EB%A6%AC%EB%8A%94+%EC%8B%9C%EA%B0%84"},{"bannerId":6441,"bannerName":"만렙부터 레벨업","url":"http://comics.hangame.com/titles/23780","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/23780_kv332x444.jpg","startYmdt":1560818580000,"endYmdt":1580172180000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"해무극","linkType":"NEW","bannerNameURLEncoding":"%EB%A7%8C%EB%A0%99%EB%B6%80%ED%84%B0+%EB%A0%88%EB%B2%A8%EC%97%85"},{"bannerId":6436,"bannerName":" 흑마법사 홍대가다","url":"http://comics.hangame.com/titles/25465","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/25465_kv332x444.jpg","startYmdt":1560818520000,"endYmdt":1595896920000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"김상현","linkType":"NEW","bannerNameURLEncoding":"+%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC+%ED%99%8D%EB%8C%80%EA%B0%80%EB%8B%A4"},{"bannerId":6432,"bannerName":"40, 41","url":"http://comics.hangame.com/titles/27521","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/27521_kv332x444.jpg","startYmdt":1560818460000,"endYmdt":1593477660000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"버저비터 ","linkType":"NEW","bannerNameURLEncoding":"40%2C+41"},{"bannerId":6437,"bannerName":"레벨업하는 몬스터","url":"http://comics.hangame.com/titles/23027","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/23027_kv332x444.jpg","startYmdt":1560818520000,"endYmdt":1593477720000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"지갑송","linkType":"NEW","bannerNameURLEncoding":"%EB%A0%88%EB%B2%A8%EC%97%85%ED%95%98%EB%8A%94+%EB%AA%AC%EC%8A%A4%ED%84%B0"},{"bannerId":6442,"bannerName":"하토카페","url":"http://comics.hangame.com/titles/132","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/hato.jpg","startYmdt":1560818580000,"endYmdt":1582591380000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"고쿠게츠모모","linkType":"NEW","bannerNameURLEncoding":"%ED%95%98%ED%86%A0%EC%B9%B4%ED%8E%98"},{"bannerId":6438,"bannerName":"만렙찍고 환생 - 더 가드너","url":"http://comics.hangame.com/titles/26159","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/26159_kv332x444.jpg","startYmdt":1560818520000,"endYmdt":1595983320000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"참구름","linkType":"NEW","bannerNameURLEncoding":"%EB%A7%8C%EB%A0%99%EC%B0%8D%EA%B3%A0+%ED%99%98%EC%83%9D+-+%EB%8D%94+%EA%B0%80%EB%93%9C%EB%84%88"},{"bannerId":6435,"bannerName":"사채업자","url":"http://comics.hangame.com/titles/26618","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/26618_kv332x444.jpg","startYmdt":1560818520000,"endYmdt":1580258520000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"형상준","linkType":"NEW","bannerNameURLEncoding":"%EC%82%AC%EC%B1%84%EC%97%85%EC%9E%90"}],"COMICO_000004":[{"bannerId":6425,"bannerName":"낙원의 고양이들","url":"http://comics.hangame.com/titles/24652","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818340000,"endYmdt":1580171940000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"아마사키 이로하","linkType":"NEW","bannerNameURLEncoding":"%EB%82%99%EC%9B%90%EC%9D%98+%EA%B3%A0%EC%96%91%EC%9D%B4%EB%93%A4"},{"bannerId":6428,"bannerName":"상사의 아내","url":"http://comics.hangame.com/titles/27381","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818400000,"endYmdt":1580258400000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"로벨리스트 ","linkType":"NEW","bannerNameURLEncoding":"%EC%83%81%EC%82%AC%EC%9D%98+%EC%95%84%EB%82%B4"},{"bannerId":6429,"bannerName":"시작은 형수","url":"http://comics.hangame.com/titles/23623","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818460000,"endYmdt":1580344860000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"김조던","linkType":"NEW","bannerNameURLEncoding":"%EC%8B%9C%EC%9E%91%EC%9D%80+%ED%98%95%EC%88%98"},{"bannerId":6431,"bannerName":"미쳐있는 꽃","url":"http://comics.hangame.com/titles/16144","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818460000,"endYmdt":1590540060000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"잼삐","linkType":"NEW","bannerNameURLEncoding":"%EB%AF%B8%EC%B3%90%EC%9E%88%EB%8A%94+%EA%BD%83"},{"bannerId":6426,"bannerName":"형부 힘내세요","url":"http://comics.hangame.com/titles/22311","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818400000,"endYmdt":1588034400000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"순진한처제","linkType":"NEW","bannerNameURLEncoding":"%ED%98%95%EB%B6%80+%ED%9E%98%EB%82%B4%EC%84%B8%EC%9A%94"},{"bannerId":6430,"bannerName":"프로토타입","url":"http://comics.hangame.com/titles/11969","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818460000,"endYmdt":1580172060000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"최창흠","linkType":"NEW","bannerNameURLEncoding":"%ED%94%84%EB%A1%9C%ED%86%A0%ED%83%80%EC%9E%85"},{"bannerId":6427,"bannerName":"아내팬티","url":"http://comics.hangame.com/titles/17127","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818400000,"endYmdt":1577752800000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"T팬티 ","linkType":"NEW","bannerNameURLEncoding":"%EC%95%84%EB%82%B4%ED%8C%AC%ED%8B%B0"}],"COMICO_000003":[{"bannerId":6413,"bannerName":"재벌집 막내아들","url":"http://comics.hangame.com/titles/17485","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/재벌집막내아들.jpg","startYmdt":1560818220000,"endYmdt":1574728620000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"산경 ","linkType":"NEW","bannerNameURLEncoding":"%EC%9E%AC%EB%B2%8C%EC%A7%91+%EB%A7%89%EB%82%B4%EC%95%84%EB%93%A4"},{"bannerId":6410,"bannerName":"천마 하고 싶은 거 다 해!","url":"http://comics.hangame.com/titles/25683","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/25683_kv332x444.jpg","startYmdt":1560818160000,"endYmdt":1579653360000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"배현","linkType":"NEW","bannerNameURLEncoding":"%EC%B2%9C%EB%A7%88+%ED%95%98%EA%B3%A0+%EC%8B%B6%EC%9D%80+%EA%B1%B0+%EB%8B%A4+%ED%95%B4%21"},{"bannerId":6406,"bannerName":"내가 영화다","url":"http://comics.hangame.com/titles/17721","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/17721_kv332x444.jpg","startYmdt":1560818100000,"endYmdt":1572395700000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"글드림","linkType":"NEW","bannerNameURLEncoding":"%EB%82%B4%EA%B0%80+%EC%98%81%ED%99%94%EB%8B%A4"},{"bannerId":6411,"bannerName":"고고학자인데 땅을 안 팜","url":"http://comics.hangame.com/titles/26774","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/26774_kv332x444.jpg","startYmdt":1560818220000,"endYmdt":1582677420000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"산하","linkType":"NEW","bannerNameURLEncoding":"%EA%B3%A0%EA%B3%A0%ED%95%99%EC%9E%90%EC%9D%B8%EB%8D%B0+%EB%95%85%EC%9D%84+%EC%95%88+%ED%8C%9C"},{"bannerId":6408,"bannerName":"포탑으로 자동사냥","url":"http://comics.hangame.com/titles/27482","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/27482_kv332x444.jpg","startYmdt":1560818160000,"endYmdt":1571704560000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"선무혁","linkType":"NEW","bannerNameURLEncoding":"%ED%8F%AC%ED%83%91%EC%9C%BC%EB%A1%9C+%EC%9E%90%EB%8F%99%EC%82%AC%EB%83%A5"},{"bannerId":6412,"bannerName":"무한리프","url":"http://comics.hangame.com/titles/27438","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/27438_kv332x444.jpg","startYmdt":1560818220000,"endYmdt":1572395820000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"고려의검 ","linkType":"NEW","bannerNameURLEncoding":"%EB%AC%B4%ED%95%9C%EB%A6%AC%ED%94%84"},{"bannerId":6414,"bannerName":"재벌강점기","url":"http://comics.hangame.com/titles/18511","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/18511_kv332x444.jpg","startYmdt":1560818220000,"endYmdt":1574123820000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"레고밟았어","linkType":"NEW","bannerNameURLEncoding":"%EC%9E%AC%EB%B2%8C%EA%B0%95%EC%A0%90%EA%B8%B0"},{"bannerId":6407,"bannerName":"맛있는 버프를 만들어드립니다","url":"http://comics.hangame.com/titles/23553","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/23553_kv332x444.jpg","startYmdt":1560818160000,"endYmdt":1572395760000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"신쌤","linkType":"NEW","bannerNameURLEncoding":"%EB%A7%9B%EC%9E%88%EB%8A%94+%EB%B2%84%ED%94%84%EB%A5%BC+%EB%A7%8C%EB%93%A4%EC%96%B4%EB%93%9C%EB%A6%BD%EB%8B%88%EB%8B%A4"},{"bannerId":6405,"bannerName":"사이킥 위저드","url":"http://comics.hangame.com/titles/27525","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/27525_kv332x444.jpg","startYmdt":1560818100000,"endYmdt":1566952500000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"김재한","linkType":"NEW","bannerNameURLEncoding":"%EC%82%AC%EC%9D%B4%ED%82%A5+%EC%9C%84%EC%A0%80%EB%93%9C"},{"bannerId":6409,"bannerName":"눈 떠 보니 슈퍼스타","url":"http://comics.hangame.com/titles/21589","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/21589_kv332x444.jpg","startYmdt":1560818160000,"endYmdt":1577752560000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"천태거","linkType":"NEW","bannerNameURLEncoding":"%EB%88%88+%EB%96%A0+%EB%B3%B4%EB%8B%88+%EC%8A%88%ED%8D%BC%EC%8A%A4%ED%83%80"}],"COMICO_000002":[{"bannerId":6416,"bannerName":"공기심장","url":"http://comics.hangame.com/titles/1408","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/1408_kv332x444.jpg","startYmdt":1560818280000,"endYmdt":1580258280000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"김종진","linkType":"NEW","bannerNameURLEncoding":"%EA%B3%B5%EA%B8%B0%EC%8B%AC%EC%9E%A5"},{"bannerId":6418,"bannerName":"하이브리드(HYBRID)","url":"http://comics.hangame.com/titles/2342","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/2342_kv332x444.jpg","startYmdt":1560818280000,"endYmdt":1577839080000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"글 이순기, 그림 손영식","linkType":"NEW","bannerNameURLEncoding":"%ED%95%98%EC%9D%B4%EB%B8%8C%EB%A6%AC%EB%93%9C%28HYBRID%29"},{"bannerId":6415,"bannerName":"리얼터","url":"http://comics.hangame.com/titles/111","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/111_kv332x444.jpg","startYmdt":1560818220000,"endYmdt":1577147820000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"글 전진석, 김현희, 그림 최예지","linkType":"NEW","bannerNameURLEncoding":"%EB%A6%AC%EC%96%BC%ED%84%B0"},{"bannerId":6417,"bannerName":"Rock City Blues (록시티 블루스)","url":"http://comics.hangame.com/titles/2340","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/2340_kv332x444.jpg","startYmdt":1560818280000,"endYmdt":1577320680000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"최미르","linkType":"NEW","bannerNameURLEncoding":"Rock+City+Blues+%28%EB%A1%9D%EC%8B%9C%ED%8B%B0+%EB%B8%94%EB%A3%A8%EC%8A%A4%29"},{"bannerId":6424,"bannerName":"나의 멘탈은 한계입니다","url":"http://comics.hangame.com/titles/13436","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/13436_kv332x444.jpg","startYmdt":1560818340000,"endYmdt":1588034340000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"후지 아이리","linkType":"NEW","bannerNameURLEncoding":"%EB%82%98%EC%9D%98+%EB%A9%98%ED%83%88%EC%9D%80+%ED%95%9C%EA%B3%84%EC%9E%85%EB%8B%88%EB%8B%A4"},{"bannerId":6419,"bannerName":"명검","url":"http://comics.hangame.com/titles/21758","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/21758_kv332x444.jpg","startYmdt":1560818280000,"endYmdt":1572309480000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"글 하늘소, 그림 도가도","linkType":"NEW","bannerNameURLEncoding":"%EB%AA%85%EA%B2%80"},{"bannerId":6420,"bannerName":"JADE","url":"http://comics.hangame.com/titles/8301?order=ASC&showPreview=N&page=1","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/201811222.jpg","startYmdt":1560818280000,"endYmdt":1580171880000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"김명호","linkType":"NEW","bannerNameURLEncoding":"JADE"},{"bannerId":6421,"bannerName":"복수는 차갑게","url":"http://comics.hangame.com/titles/2346","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/2346_kv332x444.jpg","startYmdt":1560818280000,"endYmdt":1580171880000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"sa ku ra","linkType":"NEW","bannerNameURLEncoding":"%EB%B3%B5%EC%88%98%EB%8A%94+%EC%B0%A8%EA%B0%91%EA%B2%8C"},{"bannerId":6422,"bannerName":"새벽의 토바리","url":"http://comics.hangame.com/titles/131","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/131_kv332x444.jpg","startYmdt":1560818340000,"endYmdt":1588034340000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"모모치도리","linkType":"NEW","bannerNameURLEncoding":"%EC%83%88%EB%B2%BD%EC%9D%98+%ED%86%A0%EB%B0%94%EB%A6%AC"},{"bannerId":6423,"bannerName":"타임트리 바리스타","url":"http://comics.hangame.com/titles/20752","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/20752_kv332x444.jpg","startYmdt":1560818340000,"endYmdt":1585442340000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"CON_R_Z (컨알지)","linkType":"NEW","bannerNameURLEncoding":"%ED%83%80%EC%9E%84%ED%8A%B8%EB%A6%AC+%EB%B0%94%EB%A6%AC%EC%8A%A4%ED%83%80"}],"COMICO_000001":[{"bannerId":1033,"bannerName":"마제","url":"http://comics.hangame.com/titles/9688?LinkService=hgc_mainsec9688","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/9688.jpg","startYmdt":1500948360000,"endYmdt":1503540360000,"bannerAgeRating":"COMMON","statusType":"DEFAULT","description":"황성","linkType":"NEW","bannerNameURLEncoding":"%EB%A7%88%EC%A0%9C"},{"bannerId":1031,"bannerName":"열혈강호","url":"http://comics.hangame.com/titles/2337?LinkService=hgc_mainsec2337","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/2337.jpg","startYmdt":1500948240000,"endYmdt":1503540240000,"bannerAgeRating":"COMMON","statusType":"DEFAULT","description":"전극진, 양재현","linkType":"NEW","bannerNameURLEncoding":"%EC%97%B4%ED%98%88%EA%B0%95%ED%98%B8"},{"bannerId":1034,"bannerName":"독고","url":"http://comics.hangame.com/titles/2187?LinkService=hgc_mainsec2187","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/2187.jpg","startYmdt":1500948540000,"endYmdt":1503540540000,"bannerAgeRating":"COMMON","statusType":"DEFAULT","description":"민(meen),백…","linkType":"NEW","bannerNameURLEncoding":"%EB%8F%85%EA%B3%A0"},{"bannerId":1032,"bannerName":"독고 리와인드","url":"http://comics.hangame.com/titles/5969?LinkService=hgc_mainsec5969","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/5969.jpg","startYmdt":1500948300000,"endYmdt":1503540300000,"bannerAgeRating":"COMMON","statusType":"DEFAULT","description":"민(meen),백…","linkType":"NEW","bannerNameURLEncoding":"%EB%8F%85%EA%B3%A0+%EB%A6%AC%EC%99%80%EC%9D%B8%EB%93%9C"}]}));

    $(function() {
        changeBanner(1);
    });

    function changeTab(obj, categoryId, tabCount) {
        $("#comicoCategoryUl.comic_tab li").each(function() {
           if ($(this).hasClass("is_active")) {
               $(this).removeClass("is_active");
               $(this).find("span").remove();
               return false;
           }
        });
        $(obj).parent().addClass("is_active");
        $(obj).append("<span class=\"blind\">선택됨</span>");
        $("#comicoBannerDiv.comic_box h3.blind").html($(obj).html());

        changeBanner(tabCount);
    }
		
     function changeBanner(tabCount){
  		var str="";
    	str+="<table>";
    	if(tabCount==1){
    			str+="<c:forEach items='${list}' var='list' begin='0' end='6' step='1'>"
    			str+="<tr>";
    			str+="<td>${list.author_id}</td>";
    			str+="<td>${list.title}</td>";
    			str+="<td>${list.content}</td>";
    			str+="<td>${list.upload_date}</td>";
    			str+="</tr>";
    			str+="</c:forEach>";
    	
    			
    		}
    		if(tabCount==2){

    			str+="<c:forEach items='${list}' var='list' begin='0' end='6' step='1'>"
        			str+="<tr>";
        			str+="<td>여기는 자유</td>";
        			str+="<td>${list.title}</td>";
        			str+="<td>${list.content}</td>";
        			str+="<td>${list.upload_date}</td>";
        			str+="</tr>";
        			str+="</c:forEach>";
    		}
 
    		str+="</table>";
    		
    		document.getElementById("notice_table").innerHTML = str; 
    	}
</script>

	

<div class="plus_area half_type">
    <div class="tit_box">
        <h2 class="mix_tit">
	        <a href="https://mix.hangame.com" onclick="clickcr(this, 'mix.logo','','',event);" target="hangameMixSite" class="tit_link">
	       		 <img src="${path}/resources/image/gallery_tit.png" class="logo_mix">HANGAME mix
	        </a>
        </h2>
    </div>
    <div class="mix_box">
        <ul class="game_info_lst">
            
                <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="${path}/resources/image/dog.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">몽몽이들</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
                
                <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="${path}/resources/image/dog.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">몽몽이들</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
                
                <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="${path}/resources/image/dog.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">몽몽이들</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
                
                <br>
                
                <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="${path}/resources/image/cat.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">고먀미</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
            
                <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="${path}/resources/image/cat.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">고먀미</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
                
                  <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="${path}/resources/image/cat.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">고먀미</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
            
        </ul>
    </div>
</div>
	</div>
	
</div>

<%@ include file="include/footer2.jsp" %>
	

</body>
</html>
