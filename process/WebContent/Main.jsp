<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>




		<meta charset="MS949">
		<meta http-equiv="Content-Type" content="text/html; charset=MS949">
		<title>PROCESS 404 - Group Ware (mini)</title>
	
		<link rel="stylesheet" type="text/css" href="cssFile.css">
		<link rel="stylesheet" type="text/css" href="NewFile3.css">
		<script type="text/javascript" src="/js/jquery-1.8.0.js"></script>


		<!--[if lt IE 9]>
		<script type="text/javascript" src="/share/js/json2.js"></script>
		<![endif]-->
		<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script language="javascript" type="text/javascript" src="https://hangame-images.toastoven.net/hangame/gnb/reform/js/hangame_gnb.js?201906170848"></script><script type="text/javascript" src="https://hangame-images.toastoven.net/hangame/gnb/reform/js/hangame_gnb_loader.js?20190618160800"></script><script type="text/javascript" src="https://hangame-images.toastoven.net/hangame/gnb/reform/js/hangame_footer.js?201906071703" charset="euc-kr"></script><script type="text/javascript" src="https://hangame-images.toastoven.net/hangame/gnb/reform/js/hangame_gnb_pc.js?201906071703" charset="EUC-KR"></script></head>
<body style=""><script src="https://hangame-images.toastoven.net/hangame/gnb/reform/game/gnb_mobile_game_list.js?1560841683852" type="text/javascript" charset="UTF-8" async=""></script><script src="https://hangame-images.toastoven.net/hangame/gnb/reform/game/gnb_pc_game_list.js?1560841683852" type="text/javascript" charset="UTF-8" async=""></script><div id="__myRecentGameDiv" style="display:none;"></div>

		
		<!-- <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-112897910-2"></script> -->
		<script type="text/javascript">
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', 'UA-112897910-2');
		</script>
		

		<script language="javascript" type="text/javascript" src="jsFile.js" charset="UTF-8"></script>


<script type="text/javascript" language="javascript">

var isPreview = "";

if(isPreview == "Y") {
	lazyLoadingAddr = "/previewLazyLoading.nhn";
}

function showAllGameList() {
    var $allGameDiv = $('#nav_service');

    if ($allGameDiv == null || $allGameDiv == undefined) {
        gnb.makeWWWAllGame(); //GNB js에 있음(hangame_gnb_pc.js)
        return;
    } else {
        toggleAllGame(); //GNB js에 있음(hangame_gnb_pc.js)
        setCloseAllGameTimeout(2); //GNB js에 있음(hangame_gnb_pc.js)
    }
}
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


		<header class="top_nav top_fixed">
	<div class="top_align">
	
    <h1 class="top_logo">
    <a href="/">
    	<span class="nav_w"><img src="image/process404_miri.png"  alt="PROCESS 404" style="margin-top:15px";></span>
    </a>
    </h1>
    
 
    
    <!-- class="on" 메뉴 활성화 -->
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
								<li><a href="/contents/drink.html">BOARD 1</a></li>
								<li><a href="/contents/bakery.html">BOARD 2</a></li>
              </ul>
            </li>
			            <li>
				<a href="#c" data-url="/contents/members_intro.html"><span>일정관리</span></a>			
				<a href="/contents/members_intro.html" class="main_link"></a>
              <ul class="sub">
					<li><a href="/contents/ediya_members.html">YEAR</a></li>
					<li><a href="/contents/ediya_reward.html">MONTHLY</a></li>
					<li><a href="/contents/ediya_card.html">DAILY</a></li>
              </ul>
            </li>
			            <li>
				<a href="#c" data-url="/contents/coffee_lab.html"><span>문서관리</span></a>			
				<a href="/contents/coffee_lab.html" class="main_link"></a>
              <ul class="sub">
					<li><a href="/contents/coffee_lab.html">개인문서</a></li>
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
			<a href="#c" data-url="/contents/notice.html?tb_name=notice"><span>영업관리</span></a>			
			<a href="/contents/notice.html?tb_name=notice" class="main_link"></a>
              <ul class="sub">
								<li><a href="/contents/notice.html?tb_name=notice">매출현황</a></li>								           
              </ul>
            </li>
            
              <li>
			<a href="#c" data-url="/contents/notice.html?tb_name=notice"><span>메신저</span></a>			
			<a href="/contents/notice.html?tb_name=notice" class="main_link"></a>
              <ul class="sub">
								<li><a href="/contents/notice.html?tb_name=notice">메신저</a></li>								           
              </ul>
            </li>
			          
          </ul>
        </nav>
   
      </div>
    
  </div>
</div>
</header>
			
		
		<div id="wrap" class="wrap" >
		<!-- style="background-image:url(https://hangame-images.toastoven.net/hangame/main2016/banner/mini/hangame_mini_BG_20190426.jpg)" -->
			
			





	
	
		<div class="header_main">
	

	<div class="inner">
	<!-- 	<h1 class="hangame_tit">
			<a href="https://www.hangame.com" class="hangame_link" onclick="clickcr(this,'gnb.logo','','',event);" target="_top" title="한게임 로고">
				<img class="hangame_logo" src="image/process404_miri.png">
			</a>
		</h1>  -->
		
		 /////////////////////////////////////////

		<!-- <div class="header_side_l">
			<div class="service">
				<button type="button" class="service_menu" id="showAllGameList" onclick="openWWWAllGame();clickcr(this,'gnb.allgame','','',event);">전체게임</button>
				<a href="http://sponsor.hangame.com/paycoplus/main.nhn" class="service_menu" onclick="clickcr(this,'gnb.payco+','','',event);"><span class="ico_new">new</span>혜택/이벤트</a>
				<a href="http://sponsor.hangame.com/sponsor.nhn?method=ingAppEvent" class="service_menu" onclick="clickcr(this,'gnb.free','','',event);">무료충전소</a>
				<a href="http://comics.hangame.com" class="service_menu" onclick="clickcr(this,'gnb.comics','','',event);" target="_blank">한게임만화</a>
			</div>
			<script type="text/javascript">setWWWGNB({loadHaniDD2: false});</script><style type="text/css">@font-face{font-family:ng;font-weight:400;src:url(https://hangame-images.toastoven.net/hangame/gnb/reform/font/NanumGothic.eot);src:url(https://hangame-images.toastoven.net/hangame/gnb/reform/font/NanumGothic.eot?#iefix) format('embedded-opentype'),url(https://hangame-images.toastoven.net/hangame/gnb/reform/font/NanumGothic.woff) format('woff'),url(https://hangame-images.toastoven.net/hangame/gnb/reform/font/NanumGothic.ttf) format('truetype')}@font-face{font-family:ng;font-weight:700;src:url(https://hangame-images.toastoven.net/hangame/gnb/reform/font/NanumGothicBold.eot);src:url(https://hangame-images.toastoven.net/hangame/gnb/reform/font/NanumGothicBold.eot?#iefix) format('embedded-opentype'),url(https://hangame-images.toastoven.net/hangame/gnb/reform/font/NanumGothicBold.woff) format('woff'),url(https://hangame-images.toastoven.net/hangame/gnb/reform/font/NanumGothicBold.ttf) format('truetype')}#gnb_basic *{font-family:ng,'돋움',Dotum,'Apple SD Gothic Neo',sans-serif !important;letter-spacing:0;box-sizing:content-box}#gnb_basic,#gnb_basic button,#gnb_basic dd,#gnb_basic div,#gnb_basic dl,#gnb_basic dt,#gnb_basic fieldset,#gnb_basic form,#gnb_basic h1,#gnb_basic h2,#gnb_basic h3,#gnb_basic h4,#gnb_basic h5,#gnb_basic h6,#gnb_basic legend,#gnb_basic li,#gnb_basic ol,#gnb_basic p,#gnb_basic td,#gnb_basic textarea,#gnb_basic th,#gnb_basic ul{margin:0;padding:0;font-family:ng,'돋움',Dotum,'Apple SD Gothic Neo',sans-serif !important}#gnb_basic,#gnb_basic button,#gnb_basic input,#gnb_basic select,#gnb_basic table,#gnb_basic textarea{font-family:ng,'돋움',Dotum,'Apple SD Gothic Neo',sans-serif !important;font-size:12px;color:#333}#gnb_basic button,#gnb_basic fieldset,#gnb_basic img{border:0 none;vertical-align:top}#gnb_basic table{border-collapse:collapse;border-spacing:0;table-layout:fixed}#gnb_basic address,#gnb_basic caption{font-style:normal;font-weight:400}#gnb_basic em{font-style:normal}#gnb_basic dl,#gnb_basic li,#gnb_basic ol,#gnb_basic ul{list-style:none}#gnb_basic a{color:#000;text-decoration:none;*cursor:pointer}#gnb_basic button{overflow:visible;border:0;background:0 0;cursor:pointer;box-sizing:content-box}#gnb_basic button::-moz-focus-inner{padding:0;border:0}#gnb_basic hr{display:none}#gnb_basic .blind,#gnb_basic legend{overflow:hidden;position:absolute;top:0;left:0;width:1px;height:1px;font-size:1px;line-height:100px;white-space:nowrap}/*! GNB top */#gnb_basic{text-align:center;min-width:980px;height:50px;position:relative;z-index:10000;*zoom:1;background-color:#fff;border-bottom:1px solid #ededed;border-color:rgba(0,0,0,0.07)}#gnb_basic.min1280{min-width:1280px}#gnb_basic .inner{position:relative;width:960px;height:100%;padding:0 10px;margin:0 auto;*zoom:1}#gnb_basic .inner:after{display:block;clear:both;content:''}#gnb_basic .ico_user_close,#gnb_basic .logo a,#gnb_basic .msg_alert .btn_close_alert,#gnb_basic .service_link .btn_charge_value a,#gnb_basic .service_link .btn_login a,#gnb_basic .service_link .btn_hamberger,#gnb_basic .service_link .icon_arrowup,#gnb_basic .service_link .member_status .ar_down,#gnb_basic .service_link .member_status .notice{background-image:url(https://hangame-images.toastoven.net/hangame/gnb/reform/cssImg/sp_20190326.png);background-repeat:no-repeat}#gnb_basic .logo{float:left;width:105px;padding:17px 0}#gnb_basic .spot_banner{float:left;margin-left:30px}#gnb_basic .spot_banner a{display:block}#gnb_basic .spot_banner img{max-height:50px}#gnb_basic .logo a{width:105px;height:16px;background-position:0 -28px;white-space:nowrap;display:block;overflow:hidden}#gnb_basic .service_link{float:right}#gnb_basic .service_link .service_link_lst{position:relative;margin:10px 0;display:inline-block;*display:inline;zoom:1;vertical-align:top}#gnb_basic .service_link .service_link_lst .item_link{position:relative;margin-left:20px;float:left}#gnb_basic .service_link .service_link_lst .item_link>a{display:block;height:30px;line-height:30px}#gnb_basic .service_link .service_link_lst .item_link>a span{font-size:14px;line-height:30px}#gnb_basic .service_link .service_link_lst .member_status.has_alarm .notice{background-position:-28px -20px}#gnb_basic .service_link .member_status>a>span{position:relative;display:inline-block;color:#444;font-size:14px;font-weight:700}#gnb_basic .service_link .game_categories>a{font-size:14px;color:#444;font-weight:700;white-space:nowrap}#gnb_basic .service_link .member_status .notice{position:absolute;top:3px;width:4px;height:4px;background-position:none}#gnb_basic .service_link .member_status .alias{font-weight:400;margin:0 6px 0 4px;color:#777}#gnb_basic .service_link .member_status .ar_down{display:inline-block;*display:inline;zoom:1;width:7px;height:6px;background-position:-18px -20px;vertical-align:middle}#gnb_basic .service_link .btn_charge_value a{display:block;width:84px;height:30px;background-position:0 -46px}#gnb_basic .service_link .btn_charge_value.not_login a{width:62px;background-position:0 -78px}#gnb_basic .service_link .btn_login{display:none}#gnb_basic .service_link .btn_login a{width:74px;background-position:0 -110px}#gnb_basic .service_link .btn_login.loggedin{display:block;width:auto;height:auto;background-image:none}#gnb_basic .service_link .btn_hamberger{display:inline-block;*display:inline;zoom:1;width:16px;height:16px;margin:-3px 0 0 5px;*margin-top:0;background-position:-50px 0;vertical-align:middle}#gnb_basic .user_info{position:absolute;top:40px;left:-16px;z-index:10;width:200px;padding:25px 29px 24px;background:#fff;border:1px solid #454342}#gnb_basic .member_status.charge_active .user_info.charge_area,#gnb_basic .member_status.guide_active .user_info.guide_area{display:block}#gnb_basic .user_info.charge_area,#gnb_basic .user_info.guide_area{display:none}#gnb_basic .service_link .icon_arrowup{width:15px;height:9px;position:absolute;background-position:0 0;left:29px;top:-9px}#gnb_basic .user_info .top_user_info{overflow:hidden}#gnb_basic .user_info .user_name{float:left;line-height:22px}#gnb_basic .user_info .user_name a{display:inline-block;*display:inline;zoom:1;max-width:116px;font-size:14px;color:#444;font-weight:700;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;vertical-align:top}#gnb_basic .user_info .user_name span{display:inline-block;*display:inline;zoom:1;font-size:13px;letter-spacing:-.2px;color:#777}#gnb_basic .btn_user_logout{float:right;border:1px solid #dedede;padding:4px 8px}#gnb_basic .btn_user_logout span{font-size:12px;color:#777;text-align:center;line-height:12px}#gnb_basic .detail_user_info{margin-top:9px;padding-top:9px;border-top:1px solid #ececec}#gnb_basic .detail_user_info ul{overflow:hidden}#gnb_basic .detail_user_info ul .item{position:relative;width:100%;height:30px;line-height:30px;padding-bottom:5px;text-align:left}#gnb_basic .detail_user_info .item.divide_half{float:left;width:85px}#gnb_basic .detail_user_info .item.sp_bar{padding-left:30px}#gnb_basic .detail_user_info .item_bar{position:absolute;top:10px;left:15px;width:1px;height:10px;background-color:#e1e1e1}#gnb_basic .detail_user_info .item_tit{border:0;font-size:13px;color:#444;line-height:30px}#gnb_basic .detail_user_info .item p{position:absolute;top:-1px;right:0;text-align:right;line-height:31px}#gnb_basic .detail_user_info .item p .item_value{margin-right:2px;font-weight:700;font-size:14px;line-height:31px}#gnb_basic .detail_user_info .item p .item_value.txt_hl{color:#fa2828}#gnb_basic .detail_user_info .item p span{color:#777;font-size:13px;letter-spacing:-.2px;line-height:31px}#gnb_basic .user_info_buttons{overflow:hidden;margin-top:7px}#gnb_basic .user_info_buttons .user_charge,#gnb_basic .user_info_buttons .user_more{display:block;float:left;width:95px;height:30px;background:#96999f;font-size:13px;color:#fff;line-height:30px;text-align:center}#gnb_basic .user_info_buttons .user_charge{float:right;background:#fa1414;font-weight:700}/*! popup USER ALERT */#gnb_basic .user_msg{position:relative;z-index:20;border:1px solid #969696;background-color:#fff;text-align:center;margin-top:9px}#gnb_basic .user_msg_content p{font-size:12px;color:#777;padding:20px 0 19px 0;line-height:18px}#gnb_basic .user_msg em{font-size:12px;color:#888}#gnb_basic .user_select_area{overflow:hidden;border-top:1px solid #dcdcdc;background-color:#f0f0f0;*zoom:1}#gnb_basic .user_select_item{float:left;width:99px;height:39px;border-left:1px solid #dcdcdc;font-weight:700;font-size:12px;color:#444;line-height:41px}#gnb_basic .user_select_item:first-child{width:98px;border-left:0}#gnb_basic .btn_user_close{position:absolute;top:0;right:0}#gnb_basic .ico_user_close{position:relative;display:block;width:20px;height:20px;background-position:-82px 0}#gnb_basic .user_info .item_value:focus,#gnb_basic .user_info .item_value:hover,#gnb_basic .user_info .user_name a:focus,#gnb_basic .user_info .user_name a:hover{text-decoration:underline}/*! MESSAGE ALERT */#gnb_basic .msg_alert{position:absolute;background-color:#fff;z-index:60;width:978px;border:1px solid #888;top:8px;left:0;text-align:center}#gnb_basic .msg_alert p{font-size:12px;font-weight:700;padding:9px 50px;letter-spacing:-.2px;color:#444;line-height:14px}#gnb_basic .msg_alert .btn_close_alert{position:absolute;right:10px;top:11px;width:11px;height:11px;background-position:-68px 0}/*! Fix sitemap */#gnb_basic #nav_service{display:none;top:40px;left:auto;right:-10px}#gnb_basic .game_categories.is_show #nav_service{display:block}#gnb_basic #nav_service .icon_arrowup{right:50px;left:auto}/*! Fluid layout */.fluid_layout{min-width:auto}.fluid_layout #gnb_basic .inner{position:relative;width:auto;height:100%;margin:0 auto;*zoom:1}.fluid_layout #gnb_basic .logo{margin-left:40px}.fluid_layout #gnb_basic .service_link{margin-right:40px}.fluid_layout #gnb_basic .msg_alert{width:auto;left:10px;right:10px}/*! Retina Display Media Query */@media (-webkit-min-device-pixel-ratio:1.5),(min--moz-device-pixel-ratio:1.5),(-o-min-device-pixel-ratio:3/2),(min-device-pixel-ratio:1.5),(min-resolution:1.5dppx){    #gnb_basic .ico_user_close,#gnb_basic .logo a,#gnb_basic .msg_alert .btn_close_alert,#gnb_basic .service_link .btn_charge_value a,#gnb_basic .service_link .btn_login a,#gnb_basic .service_link .btn_hamberger,#gnb_basic .service_link .icon_arrowup,#gnb_basic .service_link .member_status .ar_down,#gnb_basic .service_link .member_status .notice{background-image:url(https://hangame-images.toastoven.net/hangame/gnb/reform/cssImg/sp_x2_20190326.png);background-repeat:no-repeat;background-size:106px auto}}/* ****************** *//* gnb_menu_layer.css *//* ****************** */#nav_service,#nav_service button,#nav_service dd,#nav_service div,#nav_service dl,#nav_service dt,#nav_service fieldset,#nav_service form,#nav_service h1,#nav_service h2,#nav_service h3,#nav_service h4,#nav_service h5,#nav_service h6,#nav_service legend,#nav_service li,#nav_service ol,#nav_service p,#nav_service td,#nav_service textarea,#nav_service th,#nav_service ul{margin:0;padding:0;font-family:ng,'돋움',Dotum,'Apple SD Gothic Neo',sans-serif !important}#nav_service,#nav_service button,#nav_service input,#nav_service select,#nav_service table,#nav_service textarea,#nav_service .game_category,#nav_service .game_m_lst h3{font-family:ng,'돋움',Dotum,'Apple SD Gothic Neo',sans-serif !important;font-size:12px;color:#333}#nav_service button,#nav_service fieldset,#nav_service img{border:0 none;vertical-align:top}#nav_service table{border-collapse:collapse;border-spacing:0;table-layout:fixed}#nav_service address,#nav_service caption{font-style:normal;font-weight:400}#nav_service em{font-style:normal}#nav_service dl,#nav_service li,#nav_service ol,#nav_service ul{list-style:none}#nav_service a{color:#000;text-decoration:none;*cursor:pointer}#nav_service button{overflow:visible;border:0;background:0 0;cursor:pointer;line-height:0;box-sizing:content-box}#nav_service button::-moz-focus-inner{padding:0;border:0}#nav_service hr{display:none}#nav_service .blind,#nav_service legend{overflow:hidden;position:absolute;top:0;left:0;width:1px;height:1px;font-size:1px;line-height:100px;white-space:nowrap}/*! GNB main */#nav_service{position:absolute;top:163px;left:0;z-index:300;width:978px;border:1px solid #444;background:#fff;font-size:13px;text-align:left}#nav_service .game_m_lst .icon_mb,#nav_service .game_m_lst ul li .pc_ver,#nav_service .icon_arrowup,#nav_service .service .view_more .icon_ar,#nav_service .icon_btn_cls{background-image:url(https://hangame-images.toastoven.net/hangame/gnb/reform/cssImg/sp_20190326.png);background-repeat:no-repeat}#nav_service .icon_arrowup{width:15px;height:9px;position:absolute;background-position:0 0;left:239px;top:-9px}#nav_service .game_online{padding:29px 29px 19px 29px;position:relative;overflow:hidden}#nav_service .lst_col{float:left;width:116px;margin-left:18px}#nav_service .lst_col:first-child{margin-left:0}#nav_service .game_category{height:15px;font-weight:700;color:#444;line-height:15px;margin-bottom:8px;font-size:13px}#nav_service .game_category.fps{margin-top:34px}#nav_service .game_category.sport{margin-top:25px}#nav_service .game_category.next_category{margin-top:34px}#nav_service .game_online ul li{line-height:0;vertical-align:top}#nav_service .game_online ul li a{display:inline-block;*display:inline;zoom:1;letter-spacing:-.2px;margin-top:9px;color:#777;font-size:13px;line-height:16px;word-wrap:break-word;text-decoration:none;vertical-align:top}#nav_service .game_online ul li:first-child a{margin-top:0}#nav_service .game_online ul li.is_played a{color:#fa2828}#nav_service .game_m{overflow:hidden;position:relative;border-top:1px solid #f0f0f0;width:100%}#nav_service .game_m .game_m_lst{padding:19px 0 15px 29px;background-color:#fafafa}#nav_service .game_m_lst h3{background:none;letter-spacing:-.5px;color:#444;font-weight:700;font-size:13px}#nav_service .game_m_lst .icon_mb{background-position:0 -12px;width:8px;height:13px;margin-left:5px;display:inline-block;*display:inline;zoom:1;overflow:hidden;line-height:9999px;vertical-align:middle}#nav_service .game_m_lst ul{overflow:hidden;margin-top:15px;width:637px}#nav_service .game_m_lst ul li{float:left;width:176px;margin-right:40px}#nav_service .game_m_lst ul li a{overflow:visible;position:relative;display:block;margin-bottom:10px/*! fix ie7*/}#nav_service .game_m_lst ul li .pc_ver{position:absolute;width:30px;height:18px;background-position:-18px 0;overflow:hidden;line-height:9999px;margin:6px 0 0 5px/*! fix ie7*/}#nav_service .game_m_lst ul li.last_item{margin-right:28px}#nav_service .game_m_lst img{vertical-align:middle; width: 30px;height: 30px}#nav_service .game_m_lst .game_txt{color:#777;padding-left:4px;overflow:hidden;max-width:138px;display:inline-block;*display:inline;zoom:1;font-size:13px;line-height:29px;text-overflow:ellipsis;white-space:nowrap;vertical-align:middle}#nav_service .game_m_lst .game_txt:hover,#nav_service .game_online ul li a:hover,#nav_service .service a:hover{text-decoration:underline}#nav_service .game_m .service{position:absolute;right:0;top:0;height:100%;width:308px;border-left:2px solid #f0f0f0;background-color:#f5f5f5}#nav_service .service>ul{padding:19px 28px 20px 30px;overflow:hidden}#nav_service .service>ul>li{float:left;width:116px}#nav_service .service a{margin:9px 0 0;width:auto;height:auto;text-align:left;border:0;letter-spacing:0;font-size:13px}#nav_service .service .info{margin-left:18px}#nav_service .service .benefits{margin-top:8px}#nav_service .service ul li a{display:block;margin-top:9px;line-height:15px}#nav_service .service .benefits ul li:first-child a,#nav_service .service .info ul li:first-child a,#nav_service .service .kind_game ul li:first-child a{margin-top:0}#nav_service .service .kind_game a{color:#444}#nav_service .service .benefits a,#nav_service .service .info a{color:#777}#nav_service .service .view_more{position:absolute;top:auto;left:164px;bottom:95px;color:#0a0a0a;font-weight:700;}#nav_service .service .view_more .icon_ar{width:6px;height:9px;background-position:-10px -12px;display:inline-block;*display:inline;zoom:1;vertical-align:middle;margin-top:-2px;*margin-top:-1px;margin-left:2px;overflow:hidden;line-height:9999px}#nav_service .service .banner_area{left:-2px;position:absolute;bottom:0;height:auto;border:0}#nav_service .service .banner_area a{display:block}#nav_service .service .banner_area img{width:auto !important}#nav_service .icon_btn_cls{width:12px;height:11px;background-position:-64px -78px;display:inline-block}#nav_service .btn_cls{position:absolute;top:0;right:0;width:40px;height:40px}/*! Retina Display Media Query */@media (-webkit-min-device-pixel-ratio:1.5),(min--moz-device-pixel-ratio:1.5),(-o-min-device-pixel-ratio:3/2),(min-device-pixel-ratio:1.5),(min-resolution:1.5dppx){    #nav_service .game_m_lst .icon_mb,#nav_service .game_m_lst ul li .pc_ver,#nav_service .icon_arrowup,#nav_service .service .view_more .icon_ar,#nav_service .icon_btn_cls{background-image:url(https://hangame-images.toastoven.net/hangame/gnb/reform/cssImg/sp_x2_20190326.png);background-repeat:no-repeat;background-size:106px auto}}</style><script type="text/javascript" src="https://support.hangame.com/smartpopup/include/smartPopupLoader.js" charset="EUC-KR"></script><style>img{border:none; }#NoticeLayer {position:absolute; z-index:9000; overflow:hidden;}#notice_layer_top {width:279px; height:75px; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_layer_top.png) no-repeat top;}#notice_layer_md {width:279px; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_layer_md.png) no-repeat top;}#notice_layer_btm {width:279px; height:39px; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_layer_bttm_gray.png) no-repeat bottom;}*html #notice_layer_top {background:none; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_layer_top.png', sizingMethod='crop');}*html #notice_layer_md {background:none; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_layer_md.png', sizingMethod='crop');}*html #notice_layer_btm {background:none; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_layer_bttm_gray.png', sizingMethod='crop');}#notice_layer_top .h_notice {display:inline; float:left; width:239px; height:52px; margin:24px 0 0 20px; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/line_notice_layer.gif) no-repeat bottom;}#notice_layer_top .h_notice img {margin-left:7px;}#notice_layer_md .notice_cnt {width:221px; margin-left:28px; padding:20px 0 15px 0; text-align:center;}#notice_layer_md .notice_cnt .h_txt {color:#FF6600; letter-spacing:-1px; line-height:1.3;}#notice_layer_md .notice_cnt .txt_1 {padding-top:4px; color:#808080; line-height:1.5;}#notice_layer_md .notice_cnt .txt_2 {padding:14px 0 1px 0; color:#808080; font-size:11px; line-height:1.4;}#notice_layer_md .bx_cnt {width:221px; margin:11px auto 0 auto; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_gray_btm.gif) no-repeat bottom;}#notice_layer_md .bx_cnt_in {width:221px; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_gray_tp.gif) no-repeat top; color:#333;}#notice_layer_md .bx_cnt_in p {padding:10px 0 6px 32px; line-height:1.4;}#notice_layer_btm .btm_gray {width:259px; height:28px; margin-left:10px; background:#F5F5F5;}#notice_layer_btm .btm_gray p.today {display:inline; float:left; margin:10px 0 0 8px; padding-left:6px; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/common/ico_arw_21.gif) no-repeat left 2px; color:#464646; font-size:11px; letter-spacing:-1px;}#notice_layer_btm .btm_gray a.btn_close {float:right; margin:6px 5px 0 0;}.today a:link, .today a:visited {color:#464646; text-decoration:none;}.today a:hover, .today a:active {color:#464646; text-decoration:underline;}/*20080811 占쏙옙占쏙옙 占쏙옙 占쌩곤옙*/#SP2notice_new_top {width:293px; height:96px; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_top.png) no-repeat top;}#SP2notice_new_md {width:293px; text-align:center; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_md.png) no-repeat top;}#SP2notice_new_btm2 {width:293px; height:40px;  text-align:center;background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_bttm_gray.png) no-repeat bottom;}*html #SP2notice_new_top {background:none; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_top.png', sizingMethod='crop');}*html #SP2notice_new_md {background:none; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_md.png', sizingMethod='crop');}*html #SP2notice_new_btm2 {background:none; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_bttm_gray.png', sizingMethod='crop');}#SP2notice_new_top .h_notice {display:inline; float:left; margin:31px 0 0 16px;}#SP2notice_new_md .notice_cnt {position:relative;width:235px; margin:0 auto; padding:24px 0 18px 0; text-align:left;}#SP2notice_new_md .notice_cnt .h_txt {padding:0 0 0 6px; color:#FF6600; font-size:12px; font-weight:bold; letter-spacing:-1px; line-height:1.3;}#SP2notice_new_md .notice_cnt .txt_1 {padding:2px 5px 8px 5px; color:#808080; font-size:11px; line-height:1.6; letter-spacing:-1px;}#SP2notice_new_md .notice_cnt .txt_2 {padding:12px 0 1px 6px; color:#808080; font-size:11px; line-height:1.5; letter-spacing:-1px;}#SP2notice_new_md .bx_cnt {width:235px; margin:9px auto 0 auto; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_btm.gif) no-repeat bottom;}#SP2notice_new_md .bx_cnt_in {width:235px; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_tp.gif) no-repeat top; text-align:center;}#SP2notice_new_md .bx_cnt_in table {margin:12px auto 7px auto;}#SP2notice_new_md .bx_cnt_in table th {width:37px; height:20px; color:#4D4D4D4; letter-spacing:-1px;}#SP2notice_new_md .bx_cnt_in table td {padding:0 6px 0 8px; background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bar_gray_3.gif) no-repeat left 3px; color:#4D4D4D4;}#SP2notice_new_btm2 .btm_gray2 {position:relative;width:274px; height:29px; margin:0 auto; background:#F3F3F3;}#SP2notice_new_btm2 .btm_gray2 p.today {position:absolute; display:inline; float:left; top:11px; left:10px; }#SP2notice_new_btm2 .btm_gray2 a.btn_close1 {position:absolute; top:13px; right:10px;}.black #SP2notice_new_top {background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_top_black.png) no-repeat top;}.black #SP2notice_new_md {background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_md_black.png) no-repeat top;}.black #SP2notice_new_btm2 {background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_bttm_gray_black.png) no-repeat bottom;}*html .black #SP2notice_new_top {background:none; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_top_black.png', sizingMethod='crop');}*html .black #SP2notice_new_md {background:none; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_md_black.png', sizingMethod='crop');}*html .black #SP2notice_new_btm2 {background:none; filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bx_notice_new_bttm_gray_black.png', sizingMethod='crop');}.black #SP2notice_new_btm2 .btm_gray2 {background:#1f1f1f;}.black #SP2notice_new_md .notice_cnt .h_txt {color:#e87102;}.black #SP2notice_new_md .notice_cnt .txt_1 {color:#a0a0a0;}.black #SP2notice_new_md .notice_cnt .txt_2 {color:#a0a0a0;}/*//20080811 占쏙옙占쏙옙 占쏙옙 占쌩곤옙*/.SPCustomLayer {position:absolute;}.SPCustomLayer * {margin:0; padding:0; font:12px 占쏙옙占쏙옙, Dotum, 占쏙옙占쏙옙, Gulim, AppleGothic, Sans-serif;}.SPCustomLayer img {border:0;}.SPCustomLayer {position:absolute; z-index:99; padding:3px 0 0 3px;}.SPCustomLayer .shadow1 {filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/SPCustomLayer_shadow1.png', sizingMethod='scale'); width:100%;}:root .SPCustomLayer .shadow1 {background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/SPCustomLayer_shadow1.png) transparent;}.SPCustomLayer .shadow1_side {position:relative; top:-1px; left:-1px;}.SPCustomLayer .shadow2 {filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='https://hangame-images.toastoven.net/hangame/renewal_2007/pop/SPCustomLayer_shadow2.png', sizingMethod='scale'); width:100%;}:root .SPCustomLayer .shadow2 {background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/SPCustomLayer_shadow2.png) transparent;}.SPCustomLayer .shadow2_side {position:relative; top:-2px; left:-2px;}.SPCustomLayer .layer_content {}.SPCustomLayer .layer_body {margin:2px; text-align:center;} .SPCustomLayer .layer_footer {height:32px;}/*edit_0906*/.SPCustomLayer .layer_footer a {float:left; }.SPCustomLayer .layer_footer img {margin:8px 0 0 15px;}/*edit_0906*/.SPCustomLayer .type1 {border:2px solid #525252; background-color:#F5F5F5;}.SPCustomLayer .type1 .layer_body iframe {border:1px solid #DCDCDC;}.SPCustomLayer .type2 {border:2px solid #4B4B4B; background-color:#5E5E5E;}.SPCustomLayer .type2 .layer_body iframe {border:1px solid #6F6F6E ;}.SPCustomLayer .type3 {border:2px solid #191919; background-color:#272727;}.SPCustomLayer .type3 .layer_body iframe {border:1px solid #313131;}.SPCustomLayer .closelayer {position:absolute; bottom:14px; right:14px; heigth:12px;}/*edit_0906*/.SPCustomLayer .type4 {border:2px solid #525252; background-color:#F5F5F5; color:#4d4d4d;}.SPCustomLayer .type4 .layer_body {padding-bottom:42px; border:1px solid #dcdcdc; background:#fff; letter-spacing:-1px; text-align:left;}.SPCustomLayer .notice_area {width:346px; margin:0 22px;}/*101228_add*/.SPCustomLayer .tit_check {margin:16px 25px 22px;}.SPCustomLayer .cont_area {width:245px;margin:0 28px;}.SPCustomLayer .txt_check {margin:0 9px 8px;color:#5c649a;font-weight:bold;line-height:16px;}.SPCustomLayer .txt_check_s {margin:0 9px;color:#808080;font-size:11px;line-height:16px;}.SPCustomLayer .check_time {width:205px;height:49px;margin-bottom:12px;padding:12px 0 0 40px;background:url(https://hangame-images.toastoven.net/hangame/renewal_2007/pop/bg_checktime.gif) no-repeat;color:#4d4d4d;}.SPCustomLayer .check_time dt {float:left;font-weight:bold;line-height:20px;}.SPCustomLayer .check_time dt span{margin:0 7px 0 2px;color:#d9d9d9;}.SPCustomLayer .check_time dd {line-height:20px;letter-spacing:0;}/*//101228_add*/.SPCustomLayer .txt_area {padding:32px 0 35px; line-height:20px;}.SPCustomLayer .txt_area span {color:#ff4800;}.SPCustomLayer a.link {display:block; padding:10px 6px 0 0; color:#4d4d4d; font-size:11px; text-decoration:underline;}.SPCustomLayer a.link img {vertical-align:middle;}.SPCustomLayer .info {height:17px; padding:0 0 0 14px; background:url(img/arw2.gif) 8px 3px no-repeat; color:#777; font-size:11px; font-weight:bold;}.SPCustomLayer .info_box {padding:12px; border:1px solid #e0e0e0; color:#777; font-size:11px; line-height:17px;}.SPCustomLayer .txt {padding:16px 0 0 9px;}@font-face {font-family:ng;font-weight:normal;src:url(https://hangame-images.toastoven.net/hangame/main2016/fonts/NanumGothic.eot);src:url(https://hangame-images.toastoven.net/hangame/main2016/fonts/NanumGothic.eot?#iefix) format('embedded-opentype'),url(https://hangame-images.toastoven.net/hangame/main2016/fonts/NanumGothic.woff) format('woff'),url(https://hangame-images.toastoven.net/hangame/main2016/fonts/NanumGothic.ttf) format('truetype');}#pop_check_wrap,#pop_check_wrap div,#pop_check_wrap dl,#pop_check_wrap dt,#pop_check_wrap dd,#pop_check_wrap ul,#pop_check_wrap ol,#pop_check_wrap li,#pop_check_wrap h1,#pop_check_wrap h2,#pop_check_wrap h3,#pop_check_wrap h4,#pop_check_wrap h5,#pop_check_wrap h6,#pop_check_wrap form,#pop_check_wrap fieldset,#pop_check_wrap legend,#pop_check_wrap textarea,#pop_check_wrap p,#pop_check_wrap th,#pop_check_wrap td,#pop_check_wrap input,#pop_check_wrap button{margin:0;padding:0}#pop_check_wrap,#pop_check_wrap input,#pop_check_wrap textarea,#pop_check_wrap select,#pop_check_wrap button,#pop_check_wrap table{font-family:'나눔고딕','NanumGothic',ng,'돋움',Dotum,'Apple SD Gothic Neo',sans-serif;font-size:12px;color:#333}#pop_check_wrap fieldset,#pop_check_wrap img,#pop_check_wrap button{border:0 none;vertical-align:top}#pop_check_wrap table{border-collapse:collapse;border-spacing:0;table-layout:fixed}#pop_check_wrap address,#pop_check_wrap caption{font-style:normal;font-weight:normal}#pop_check_wrap em{font-style:normal}#pop_check_wrap dl,#pop_check_wrap ul,#pop_check_wrap ol,#pop_check_wrap li{list-style:none}#pop_check_wrap a{color:#000;text-decoration:none;*cursor:pointer}#pop_check_wrap button{overflow:visible;border:0;background:transparent;cursor:pointer;line-height:0;box-sizing:content-box}#pop_check_wrap button::-moz-focus-inner{padding:0;border:0}#pop_check_wrap input[type='checkbox']{border:none;-webkit-appearance:none;appearance:none;background:transparent;vertical-align:top}#pop_check_wrap input{-webkit-appearance:none;appearance:none}#pop_check_wrap hr{display:none}#pop_check_wrap .blind,#pop_check_wrap legend{overflow:hidden;position:absolute;top:0;left:0;width:1px;height:1px;font-size:1px;line-height:100px;white-space:nowrap}#pop_check_wrap .ico_pop_chk_mark,#pop_check_wrap .ico_pop_close{display:inline-block;overflow:hidden;background:url(https://hangame-images.toastoven.net/hangame/main2016/sp_popup.png) no-repeat;font-size:1px;line-height:999px;vertical-align:top}#pop_check_wrap.pop_wrap{width:356px;border:2px solid #3e4144;background:#fff;text-align:left}#pop_check_wrap .pop_header{padding-bottom:13px;border-bottom:3px solid #f1f3f6}#pop_check_wrap .pop_header_em{padding-bottom:20px}#pop_check_wrap .pop_inner{padding:26px 28px 27px}#pop_check_wrap .pop_footer{position:relative;padding:11px 14px 13px 16px;*padding-top:12px;border-top:1px solid #f2f2f2;background:#f9fafb}#pop_check_wrap .pop_tit{font-size:13px;font-weight:normal;color:#212121;text-align:center}#pop_check_wrap .pop_tit_default,#pop_check_wrap .pop_tit_em{display:block;margin-top:5px;font-size:34px;font-weight:bold;letter-spacing:-1px}#pop_check_wrap .pop_tit_em{color:#fa2828}#pop_check_wrap .pop_dsc{margin:11px 0 3px;font-size:12px;color:#888;line-height:19px}#pop_check_wrap .pop_dsc_em{margin-top:15px;font-size:13px;font-weight:bold;color:#fa2828;line-height:20px}#pop_check_wrap .pop_dsc_em+.pop_info_box{margin-top:16px}#pop_check_wrap .pop_info_box{padding:10px 20px;background:#f3f5f8}#pop_check_wrap .pop_info_item{font-size:13px;color:#555;line-height:24px}#pop_check_wrap .pop_info_em{padding-right:11px;font-weight:bold}#pop_check_wrap .pop_chk{display:inline-block;overflow:hidden;position:relative;min-width:12px;height:13px;vertical-align:middle}#pop_check_wrap .pop_chk.is_checked .ico_pop_chk_mark{display:block}#pop_check_wrap .pop_chk_inp{position:absolute;top:0;left:-999px;width:1px;height:1px}#pop_check_wrap .pop_chk_label{display:inline-block;position:relative;padding:0 0 0 16px;font-size:11px;color:#212121;line-height:13px;vertical-align:top;cursor:pointer}#pop_check_wrap .pop_chk .chk_inp:focus+.chk_label{outline:dotted 1px;outline:-webkit-focus-ring-color auto 5px;outline-offset:-1px}#pop_check_wrap .ico_pop_chk_frame{position:absolute;top:1px;*top:2px;left:0;width:9px;height:9px;border:1px solid #a9a9a9;border-top-color:#666;border-left-color:#666;background:#fff}#pop_check_wrap .ico_pop_chk_mark{display:none;position:absolute;top:0;right:-2px;width:11px;height:8px}#pop_check_wrap .pop_close_btn{position:absolute;top:12px;right:14px;padding-right:13px;line-height:14px}#pop_check_wrap .pop_close_txt{position:relative;font-size:11px}#pop_check_wrap .ico_pop_close{position:absolute;top:3px;right:0;width:9px;height:9px;background-position:-13px 0}</style><div style="z-index:9999999;position:absolute; ;top:0px;left:0px;width:100%;height:0px; text-align:center;" id="SPPageDiv"><div style="z-index:9999999;position:relative; height:0px; margin:0 auto;text-align:center;" id="SPRangeDiv"><div style="z-index:9999999;width:0px;height:0px;position:absolute;top:0px;left:0px" id="SPDiv"></div><div style="z-index:9999997;width:0px;height:0px;position:absolute;top:0px;left:0px" id="SPBackDiv"></div><div style="z-index:9999996;width:0px;height:0px;position:absolute;top:0px;left:0px" id="SPDivFrame"><iframe title="占쏙옙占쏙옙트占싯억옙" name="SPFrame" frameborder="0" id="SPFrame" style="height:0px;width:0px" src="https://support.hangame.com/smartPopup/loader.nhn?url=https%3A%2F%2Fwww.hangame.com%2F&amp;roleid=&amp;debugMode=false"></iframe></div></div></div><script type="text/javascript" src="https://www.hangame.com/common/js/nds/lcslog.js"></script><script type="text/javascript">try { setTimeout(function() { lcs_do(); }, 500); } catch (e) { console.log(e) }</script><div id="gnbBackgroundDiv" style="left: 0px; top:0px; right: 0px; bottom: 0px; z-index: 200; position: fixed; opacity: 0.1; display: none; background-color: white; -ms-filter:'progid:DXImageTransform.Microsoft.Alpha(Opacity=10)'; filter: alpha(opacity=10);" onclick="closeAllGame();"></div><div id="nav_service" style="display: none; top: 75px; left: 50px;"><h2 class="blind">전체게임 목록</h2><span id="allGameArrowSpan" class="icon_arrowup"></span><div id="pcGameList" class="game_online"><div class="lst_col"><h4 class="game_category">RPG</h4><ul><li id="gnb_K_DN"><a href="http://dn.hangame.com" title="액션 RPG의 시작과 끝">드래곤네스트</a></li><li id="gnb_K_PRST"><a href="http://pristontale.hangame.com" title="당신이 꿈꿔온 전사의 모험">프리스톤테일</a></li><li id="gnb_k_sunonline"><a href="http://sunonline.hangame.com/" title="처음보는 대대적인 클래스!">썬:리미티드에디션</a></li><li id="gnb_K_HKT"><a href="http://hkt.hangame.com" title="초액션 RPG, 크리티카">크리티카</a></li><li id="gnb_K_AT"><a href="http://at.hangame.com" title="인간과 세상을 닮은 게임">아틀란티카</a></li><li id="gnb_K_HON"><a href="http://hon.hangame.com" title="귀신과 무협의 결합 RPG">귀혼</a></li><li id="gnb_K_LOSA"><a href="http://lostsaga.hangame.com/" title="No.1 대전액션게임">로스트사가</a></li><li id="gnb_K_ICARUS"><a href="http://icarus.hangame.com" title="가슴이 뛴다면 올라타라!">이카루스</a></li><li id="gnb_K_SW"><a href="http://soulworker.hangame.com" title="세기말 액션 RPG">소울워커</a></li><li id="gnb_K_AA"><a href="http://archeage.hangame.com" title="Dynamic World">아키에이지</a></li><li id="gnb_K_PGH"><a href="http://pgh.hangame.com" title="명작, 액션을 품다!">명품2</a></li><li id="gnb_K_FOX"><a href="http://fox.hangame.com" title="화끈한 쟁을 경험하라!">천년호</a></li><li id="gnb_K_DM"><a href="http://dm.hangame.com" title="멈추지 않는 성장 쾌감">디지몬 마스터즈</a></li><li id="gnb_K_LODOSSWAR"><a href="http://lodosswar.hangame.com/" title="당신의 첫 번째 판타지!">로도스도전기 온라인</a></li><li id="gnb_K_ORDK"><a href="http://origin.darkeden.hangame.com/" title="죽이는 MMORPG의 귀환">다크에덴 오리진</a></li><li id="gnb_K_KUF2"><a href="http://kuf2.hangame.com/" title="대규모전장에서 즐기는 액션">킹덤언더파이어2</a></li></ul></div><div class="lst_col"><h4 class="game_category">웹게임</h4><ul><li id="gnb_K_MHORIGIN"><a href="http://mhorigin.hangame.com/" title="14억명이 선택한 무협RPG">무협오리진</a></li><li id="gnb_K_DARK"><a href="http://dark.hangame.com/" title="어둠으로 가득찬 전쟁RPG">다크워</a></li><li id="gnb_K_DJB"><a href="http://djb.hangame.com/" title="온라인 3D MMO 삼국지">대장부온라인</a></li><li id="gnb_K_GP"><a href="http://gp.hangame.com" title="인간계 최고의 살상 병기">광풍록</a></li><li id="gnb_K_WZMUI"><a href="http://muignition.hangame.com" title="웹게임, 그 이상의 MU">뮤 이그니션</a></li><li id="gnb_K_GODS"><a href="http://gods.hangame.com" title="선과 악의 불타는 전쟁!">신들의전쟁</a></li><li id="gnb_K_BJ"><a href="http://bj.hangame.com/" title="전율과 감동의 판타지 대작!">바람의 전사</a></li><li id="gnb_K_GB"><a href="http://gb.hangame.com/" title="스타일리쉬 카툰무협RPG">귀검</a></li><li id="gnb_K_MJ"><a href="http://mj.hangame.com/" title="김용 녹정기 세계관RPG">명작온라인</a></li><li id="gnb_K_WA"><a href="http://wa.hangame.com" title="리얼 삼국지의 대표주자">와룡전설</a></li><li id="gnb_K_NARUTO"><a href="http://naruto.hangame.com/" title="원작 그대로!">나루토 온라인</a></li><li id="gnb_K_KG"><a href="http://kg.hangame.com" title="럭셔리 MMORPG! 군주의 검">군주의 검</a></li><li id="gnb_K_GOD"><a href="http://god.hangame.com/" title="여신의 탄생">여신세계</a></li><li id="gnb_K_DY"><a href="http://dy.hangame.com" title="스케일이 다른 판타지 무협!">대영웅</a></li><li id="gnb_K_HG"><a href="http://hg.hangame.com/" title="피를 마시면 춤을 추는 검">혈검</a></li><li id="gnb_K_IGD"><a href="http://igd.hangame.com/" title="방치형 RPG">미녀삼국</a></li></ul></div><div class="lst_col"><p class="game_category"><span class="blind">게임 연장</span></p><ul><li id="gnb_K_YS"><a href="http://ys.hangame.com/" title="용의 부름에 응답하라!">용의군단</a></li><li id="gnb_K_IK"><a href="http://ik.hangame.com/" title="역사 속 통치가 시작된다!">나는황제다</a></li><li id="gnb_K_AH"><a href="http://ah.hangame.com/" title="암흑의 끝에서 시작되는 전설!">암흑전설</a></li><li id="gnb_K_STORM"><a href="http://storm.hangame.com" title="크리티컬 폭주액션 RPG">폭풍온라인</a></li><li id="gnb_K_YGW"><a href="http://ygw.hangame.com" title="열강 新세계를 평정하라!">열혈강호 외전</a></li><li id="gnb_K_MISSH5"><a href="http://missh5.hangame.com" title="대륙급 스케일 SRPG!">대륙의실수</a></li></ul><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4></div><div class="lst_col"><h4 class="game_category">캐주얼/FPS</h4><ul><li id="gnb_TR"><a href="http://tr.hangame.com/" title="아름다운 동화 속 모험~">테일즈런너</a></li><li id="gnb_K_NE"><a href="http://audition.hangame.com" title="대한민국 No.1 리듬액션게임">오디션</a></li><li id="gnb_K_MODOO"><a href="http://modoo.hangame.com" title="전 세계 도시를 소유하라!">모두의마블</a></li><li id="gnb_K_SF2"><a href="http://sf2.hangame.com" title="대한민국 FPS의 종결">스페셜포스2</a></li></ul><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category">스포츠</h4><ul><li id="gnb_K_DANG9"><a href="http://dang9.hangame.com/" title="죽방전설, 영혼의 맞대결!">당구프로</a></li><li id="gnb_k_ma9"><a href="http://ma9.hangame.com/main.asp" title="No.1 야구게임 마구마구">마구마구</a></li><li id="gnb_shotonline"><a href="http://shotonline.hangame.com/" title="리얼 골프의 자존심!">샷온라인</a></li><li id="gnb_K_SLUGGER"><a href="http://slugger.hangame.com/" title="야구를 즐기는 또 다른 방법!">슬러거</a></li></ul><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4></div><div class="lst_col"><h4 class="game_category">보드</h4><ul><li id="gnb_baduk"><a href="https://baduk.hangame.com/" title="즐거운 반상여행">바둑</a></li><li id="gnb_janggi"><a href="https://janggi.hangame.com/" title="장기로 즐기는 파워게임!">장기</a></li><li id="gnb_gmahjong"><a href="https://game1.hangame.com/gmahjong.nhn" title="퍼즐게임의 최강자">사천성</a></li><li id="gnb_sinyutnori"><a href="https://game1.hangame.com/sinyutnori.nhn" title="달콤살벌한 반전드라마">신윷놀이</a></li></ul><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4></div><div class="lst_col"><h4 class="game_category">고스톱</h4><ul><li id="gnb_msduelgo"><a href="https://gostop.hangame.com/msduelgo.nhn" title="오늘은 흔들고 쓰리고!">신맞고</a></li><li id="gnb_DUELGOTNMT"><a href="http://gostop.hangame.com/tournament/index.nhn" title="최고상금 10억에 도전하라">신맞고 토너먼트</a></li><li id="gnb_duelgo"><a href="http://gostop.hangame.com/duelgo.nhn" title="둘이 치는 맞고의 즐거움!">맞고</a></li><li id="gnb_gostop"><a href="http://gostop.hangame.com/gostop.nhn" title="진정한 오리지널을 원한다면">고스톱</a></li><li id="gnb_doublego"><a href="http://gostop.hangame.com/doublego.nhn" title="새로운 룰의 맞고!">더블맞고</a></li><li id="gnb_gssudda"><a href="http://gostop.hangame.com/gssudda.nhn" title="진정한 타짜들의 승부">섯다</a></li></ul><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4></div><div class="lst_col"><h4 class="game_category">포커</h4><ul><li id="gnb_poker7"><a href="https://poker.hangame.com/index.nhn?gameid=poker7" title="지상 최고의 포커게임">7포커</a></li><li id="gnb_baduki"><a href="https://poker.hangame.com/index.nhn?gameid=baduki" title="전략적인 베팅으로 승부하라">로우바둑이</a></li><li id="gnb_highlow2"><a href="https://poker.hangame.com/index.nhn?gameid=highlow2" title="끝까지 방심하지 마라">하이로우</a></li><li id="gnb_hoola3"><a href="https://poker.hangame.com/index.nhn?gameid=hoola3" title="받고 붙이고 버리고~">파티훌라</a></li><li id="gnb_duelpoker"><a href="https://poker.hangame.com/index.nhn?gameid=duelpoker" title="고수들의 1:1 승부">맞포커</a></li><li id="gnb_laspoker"><a href="https://poker.hangame.com/index.nhn?gameid=laspoker" title="World Class 홀덤">라스베가스포커</a></li></ul><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4><h4 class="game_category"></h4></div></div><div class="game_m"><div id="mobileGameList" class="game_m_lst"><h3>모바일 게임<span class="icon_mb"></span></h3><ul><li class=""><a href="https://mix.hangame.com/game/10053" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/v2/img/game/poker_app_icon_140.png" alt="한게임 포커 : 레볼루션"><span class="game_txt">한게임 포커 : 레볼루션</span><span class="pc_ver">pc 버전</span></a></li><li class=""><a href="https://mix.hangame.com/game/10475" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/img/game/sudda_app_140_20190402.png" alt="한게임 섯다 :  레볼루션"><span class="game_txt">한게임 섯다 :  레볼루션</span><span class="pc_ver">pc 버전</span></a></li><li class="last_item"><a href="http://lnc.kakao.hangame.com:10080/hsp/lnc/redirect/hsp/lnc/redirect?market=KG&amp;gameNo=10378" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/img/game/duelgo_icon_86_86.png" alt="한게임 신맞고"><span class="game_txt">한게임 신맞고</span></a></li><li class=""><a href="http://lnc.kakao.hangame.com:10080/hsp/lnc/redirect/hsp/lnc/redirect?market=KG&amp;gameNo=10529" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/img/game/RWBY_86_86.png" alt="RWBY: Amity Arena"><span class="game_txt">RWBY: Amity Arena</span></a></li><li class=""><a href="http://lnc.kakao.hangame.com:10080/hsp/lnc/redirect/hsp/lnc/redirect?market=KG&amp;gameNo=10392" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/v2/img/game/kingdom_icon_aniv_140.png" alt="킹덤스토리"><span class="game_txt">킹덤스토리</span></a></li><li class="last_item"><a href="http://lnc.kakao.hangame.com:10080/hsp/lnc/redirect/hsp/lnc/redirect?market=KG&amp;gameNo=10528" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/img/game/fishisland2_icon_86.png" alt="피쉬아일랜드"><span class="game_txt">피쉬아일랜드</span></a></li><li class=""><a href="http://lnc.kakao.hangame.com:10080/hsp/lnc/redirect/hsp/lnc/redirect?market=KG&amp;gameNo=10329" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/img/game/002_crusadersquest_icon.png" alt="크루세이더 퀘스트"><span class="game_txt">크루세이더 퀘스트</span></a></li><li class=""><a href="http://lnc.kakao.hangame.com:10080/hsp/lnc/redirect/hsp/lnc/redirect?market=KG&amp;gameNo=10399" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/img/game/010_friendspop_icon_1.png" alt="프렌즈팝  for Kakao"><span class="game_txt">프렌즈팝  for Kakao</span></a></li><li class="last_item"><a href="http://lnc.kakao.hangame.com:10080/hsp/lnc/redirect/hsp/lnc/redirect?market=KG&amp;gameNo=10448" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/img/game/003_hangamebaduk_icon.png" alt="한게임 바둑"><span class="game_txt">한게임 바둑</span></a></li><li class=""><a href="http://lnc.kakao.hangame.com:10080/hsp/lnc/redirect/hsp/lnc/redirect?market=KG&amp;gameNo=10156" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/img/game/006_wooparoomountain_icon.png" alt="우파루마운틴 for Kakao"><span class="game_txt">우파루마운틴 for Kakao</span></a></li><li class=""><a href="http://lnc.kakao.hangame.com:10080/hsp/lnc/redirect/hsp/lnc/redirect?market=KG&amp;gameNo=7003" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/mix/img/game/004_linepop_icon.png" alt="라인팝2"><span class="game_txt">라인팝2</span></a></li></ul></div><div class="service"><ul><li class="kind_game"><ul><li><a href="https://gostop.hangame.com/msduelgo.nhn?mode=plus&amp;submode=main">고스톱 Plus</a></li><li><a href="https://poker.hangame.com/index.nhn?mode=plus">포커 Plus</a></li><li><a href="https://baduk.hangame.com/plus.nhn?menu=introduce">바둑 Plus</a></li></ul></li><li class="info"><ul><li><a href="https://hmember.hangame.com/myinfo/myinfo.nhn?menuId=main">내정보</a></li><li><a href="http://member.hangame.com/securitycenter.nhn">보안서비스</a></li><li><a href="https://cs.hangame.com/content/index.do">고객센터</a></li></ul></li><li class="benefits"><ul><li><a href="http://sponsor.hangame.com/sponsor.nhn">무료충전소</a></li><li><a href="http://sponsor.hangame.com/paycoplus/main.nhn">혜택/이벤트</a></li></ul></li></ul><a href="https://www.hangame.com/siteMap.nhn" class="view_more">서비스 전체보기<span class="icon_ar"></span></a><div class="banner_area"><a href="https://play.google.com/store/apps/details?id=com.NHNEnt.NDuelgo" target="_blank"><img src="https://hangame-images.toastoven.net/hangame/main2016/banner/gnb/gnblayer_duelgo.jpg" width="312" height="75" alt="모바일 신맞고"></a></div></div></div><button type="button" class="btn_cls" onclick="closeAllGame()"><span class="icon_btn_cls"><span class="blind">닫기</span></span></button></div>
		</div> -->
		

		
		<!-- <div class="header_side_r">
			<div class="family">
				<a href="http://www.bugs.co.kr/" onclick="clickcr(this,'gnb.bugs','','',event);" target="_blank" class="family_link" title="벅스"><span class="logo_bugs">벅스</span></a>
				<a href="http://www.ticketlink.co.kr/" onclick="clickcr(this,'gnb.ticket','','',event);" target="_blank" class="family_link" title="티켓링크"><span class="logo_ticketlink">티켓링크</span></a>
				<a href="http://comico.toast.com/" onclick="clickcr(this,'gnb.comico','','',event);" target="_blank" class="family_link" title="코미코"><span class="logo_comico">코미코</span></a>
			</div>
		</div> -->
	</div>
	
</div>


			<div id="contents" class="contents">

	
	<div class="pop_wrap" style="display:none"></div>
	<!-- //popup: 정기점검 -->
	
	
	<div class="pop_wrap" style="display:none"></div>
	<!-- //popup: 긴급점검 -->
	
	
	






<script type="text/javascript">

    $(document).ready(function() {
        var channelingBannerCount = "6";
        var webboardBannerCount = "5";

        if (channelingBannerCount > 1) {
            $("#promotion_channeling").jQBanner({nWidth:534,nHeight:330,nCount:channelingBannerCount,isActType:"up",nOrderNo:1,isStartAct:"Y",isStartDelay:"Y",nSpeed:1,nDelay:5000,isBtnType:"li"});
        }

        if (webboardBannerCount > 1) {
            $("#promotion_webboard").jQBanner({nWidth:297,nHeight:308,nCount:webboardBannerCount,isActType:"up",nOrderNo:1,isStartAct:"Y",isStartDelay:"Y",nSpeed:1,nDelay:5000,isBtnType:"li"});
        }

        NoticeBoard.setHbbsURL('http://hbbs.hangame.com');
    });

    function closeSpecialBannerOneDay(cookieKey) {
        $.cookie(cookieKey, "true", {domain : getFixDomain(), expires : 1});
        closeSpecialBanner();
    }

    function closeSpecialBanner() {
        $('#special_banner').hide();
        $("#promotion_channeling").css("visibility", "visible");
    }

    var initLoad = false;

    function delRecentGame(seqno) {
        if (!confirm("정말 삭제하시겠습니까?")){
            return;
        }

        $.ajax({
            type: "GET",
            url: 'https://gateway.hangame.com/www/delrecentgame.nhn?seqno=' + seqno,
            xhrFields: {
                withCredentials: true
            },
            dataType : "text",
            success: function(result){
                location.reload();
            },
            error: function(xhr) {
                console.log("delete recent game fail!", xhr);
            }
        });
    }
</script>


<div class="spot_section">
    
    
        
        <div class="special_banner" id="special_banner">
            
            

            

            <a href="#" target="_self" class="special_banner_link" onclick="" title="스페셜 배너">
                <img src="image/main_banner.png" alt="스페셜 배너" class="special_banner_img" title="스페셜 배너">
            </a>

          <!--   <div class="special_close_area">
                <button type="button" class="special_close_btn" onclick="javascript:closeSpecialBannerOneDay('6399WWW_PC_PROMOTION_SPECIAL_BANNER');clickcr(this,'pr.spbanneroption','','',event);">
                    <span class="special_close_txt">1일 동안 이 창을 열지 않음</span>
                </button>
                <button type="button" class="special_close_btn" onclick="javascript:closeSpecialBanner();clickcr(this,'pr.spbannerclose','','',event);">
                    <span class="ico_special_close">배너 닫기</span>
                </button>
            </div> ♥--> 
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
                        	<img src="image/logo_icon_miri.png" width="22px" height="22px" class="noice_tit_link" ></img>
                            <!-- <a class="notice_tit_link" href="" >PROCESS 404</a> -->
       							
       							<span class="logout" style="margin-top:3px; float:right;">
       								My Page | 로그아웃 
										<!-- <input type="button" value="MyPage" style="padding: 3px 5px; margin-top:5px ; text-align: center; float:right;">
										<input type="button" value="로그아웃" style="padding: 3px 5px; margin-top:5px ; text-align: center; float:right;"> -->
								</span>
                        </div>
                    </div>

<script type="text/javascript">
	var nextURL = "";
	
	$(document).ready(function() {
		$("input[name='nxtURL']").val(nextURL);
	});

    
    function go_top_page(){
        top.location.href = "https://id.hangame.com" + "/logout.nhn?docref=" + location.href;
    }

    function goMyInfo() {
        top.location.href = "https://hmember.hangame.com" + "/myinfo/myinfo.nhn?menuId=main";
	}

	function goBirthdayGift() {
        openWindow("https://hmember.hangame.com" + "/birthgift/giveBirthGift.nhn?m=selectGift");
	}

    function openWindow(sURL, sWindowName, w, h, sScroll) {
        var x = (screen.width - w) / 2;
        var y = (screen.height - h) / 2;
        if (sScroll == null) sScroll = "no";
        var sOption = "";
        sOption = sOption + "toolbar=no, channelmode=no, location=no, directories=no, resizable=no, menubar=no";
        sOption = sOption + ", scrollbars=" + sScroll + ", left=" + x + ", top=" + y + ", width=" + w + ", height=" + h;
        var win = window.open(sURL, sWindowName, sOption);
        return win;
    }

	function wwwOpenCharge() {
		window.open('', 'hancoinChargePopup', 'width=700, height=659');
    	$("#returnUrl").val(location.href);
		$("#hancoinChargeForm").submit();
	}
</script>
<form id="hancoinChargeForm" action="https://bill.hangame.com/pay/v2/charge.nhn" method="post" target="hancoinChargePopup">
	<input type="hidden" name="CHNL" value="HG">
	<input type="hidden" name="CLOSETYPE" value="O">
	<input type="hidden" name="RURL" id="returnUrl">
</form>


<div class="step01 login login_common_ly" id="login_after" >
	<a href="#">
		<img src="image/photo.jpeg" width="110px" height="145px" style="border:1px solid lightgray; float:left">
	</a>
		<div class ="member_info_list" style="margin: 6px 0 0 128px;padding-bottom: 44px;">
			<div class="info">
				1111(본사) <br><br>
				IT운영개발부<br>
				사원 김다은<br><br>
				daeun5967@naver.com<br>
				02-355-7684<br>
				it19625kd<br>
			</div>
		</div>
			<div class="message">
			메시지함<br>
			&nbsp;새 메시지 3건
				<!-- <input type="button" value="쪽지함" style="padding: 16px 13px; text-align: center;">
				<input type="button" value="쪽지보내기" style="padding: 16px 5px; text-align: center;">
				<input type="button" value="주소록" style="padding: 16px 13px; text-align: center;"> -->
			</div>
</div>

<div class="step01 login login_common_ly" id="login_common_ly" style="display:none">

	

	<div class="ly_lgtxt_area" id="ly_lgtxt_area" style="display:none;">
	<div class="ly_inbox">
		<p><img src="https://static-hid.gslb.toastoven.net/hangame/login/loginui/tetris/hidden.gif" id="ly_inbox_img" class="" alt=""></p>
		<div class="ly_btn_area" id="ly_btn_area">
			<a href="#" id="ly_btn_area_btn01"><img src="https://static-hid.gslb.toastoven.net/hangame/login/loginui/tetris/hidden.gif" id="ly_btn_area_btn01_img" class="" alt="사용안함"></a>
			<a href="#" id="ly_btn_area_btn02"><img src="https://static-hid.gslb.toastoven.net/hangame/login/loginui/tetris/hidden.gif" id="ly_btn_area_btn02_img" class="" alt="사용안함"></a>
		</div>
		<a href="#" class="ly_topclose" id="ly_topclose"><img src="https://static-hid.gslb.toastoven.net/hangame/login/loginui/tetris/hidden.gif" alt="닫기"></a>
	</div>
	</div>
	
    <a href="" onclick="NoticeBoard.go();clickcr(this,'hna.ttl','','',event);return false;">공지</a>
                
               
		<!--// message Layer -->
		<h2 class="blind">로그인</h2>
					<div class="login_set lg_iptxt">
				
					</div>
		<form>
					<div class="login_form idpw_area">
						<div id="login_box" style="">
							<div class="input_form">
								<div id="inputId" class="login_form_item input_id">
									<input type="text" name="id" placeholder="아이디" id="id" class="txt_inp" maxlength="12">
								</div>
								<div id="inputPassword" class="login_form_item input_pw">
									<input type="password" name="password" placeholder="비밀번호" id="password" class="txt_inp pw" maxlength="15">
								</div>
							</div>
						</div>
						<div id="login_flash" class="input_form" style="display: none; visibility: hidden; width: 0px; height: 0px;">
							<div id="flash_area" class="flash_area"></div>
						</div>
						
						<button id="btnLogin" class="login_btn is_disabled lg_input_btn"  onclick="alert('login click!')">로그인</button>
						
					</div>
		</form>
				<div class="login_easy">
					<p class="ico_payco_bubble"><a href="http://sponsor.hangame.com/paycoplus/signUpEvent.nhn" target="_blank">PAYCO ID로 이용시 특별 혜택이 무료</a></p>
					<a href="#" title="PAYCO 로그인" class="btn_other btn_login_payco" onclick="javascript:clickLoginCommonCount('minilogin-snslogin');void(doMultiLogin(false,loginform.nxtURL.value,'','payco')); return false;"><span class="blind">PAYCO 로그인</span></a>
					<a href="#" title="구글 로그인" class="btn_other btn_login_gg" onclick="javascript:clickLoginCommonCount('minilogin-snslogin');void(doMultiLogin(false,loginform.nxtURL.value,'','google')); return false;"><span class="blind">Google 로그인</span></a>
					<a href="#" title="페이스북 로그인" class="btn_other btn_login_fb" onclick="javascript:clickLoginCommonCount('minilogin-snslogin');void(doMultiLogin(false,loginform.nxtURL.value,'','facebook')); return false;"><span class="blind">Facebook 로그인</span></a>
				</div>

				<div class="login_help lg_member_con">
					<span class="mem_id_search">
							<a href="#" onclick="javascript:clickLoginCommonCount('minilogin-lostidpwd');void(gomember(5)); return false;" class="login_help_link">아이디 찾기</a>
					</span>
					 <span class="login_help_bar"></span>
					 <span class="mem_pw_search">
					 	<a href="#" onclick="javascript:clickLoginCommonCount('minilogin-lostidpwd');void(gomember(6)); return false;" class="login_help_link">비밀번호 찾기</a>
					 </span>
					 <span class="login_help_bar"></span>
					 <span class="mem_join">
					 	<a href="#" onclick="javascript:clickLoginCommonCount('minilogin-reg');clickcr(this,'lgn.join','','',event);goNewRegist(0); return false;" class="login_help_link">회원가입</a>
					 </span>
				</div>
				<div class="ly_lgtxt_capslock" id="CapslockInfo" style="display:none;"><img src="https://hangame-images.toastoven.net/hangame/renewal_2007/common/login/hidden.gif" alt="Caps Lock이 켜져있습니다."></div>
	</div>


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
		<img src="image/login_under_banner.png" alt="" class="banner_img" title="게임 배너">
	</a>
</div>

        </div>

        
    </div>

    
    
    

    <div class="spot_event">
        <a href="http://bj.hangame.com/" class="event_link" onclick="clickcr(this,'pr.horizon','','',event);" target="" title="프로모션 배너">
            <img src="image/horizontal_banner.png" alt="프로모션 배너" class="event_img" title="프로모션 배너">
        </a>
    </div>
</div>

    <div class="floating_banner">
        
        
        

        <a href="https://mini.hangame.com/index/pc?utm_source=hangame&amp;utm_medium=floating&amp;utm_campaign=open" target="_blank" class="floating_banner_link" onclick="clickcr(this,'pr.rightwing','','',event, 1); clickcr(this,'hangame_portal.floatingbanner_20190426','','',event);" title="날개 배너">
                
            <img src="image/wing_banner.png" alt="날개 배너" title="날개 배너" class="floating_banner_img">
        </a>
    </div>

	
	<div class="hangame_section">
		

<div class="plus_area half_type">
    
    <div class="tit_box">
    
        <h2 class="comic_tit">
        	<a href="https://mix.hangame.com" onclick="clickcr(this, 'mix.logo','','',event);" target="hangameMixSite" class="tit_link">
      		  <img src="image/board_tit.png" class="logo_mix">HANGAME mix
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
    	<div id ="notice_table">
	   	<table>
				  <tr>
				    <td>DB 어떻게 연결하지?</td>
				    <td>2019-06-27</td>
				  </tr>
				  <tr>
				    <td>Centro comercial Moctezuma</td>
				   
				    <td>Mexico</td>
				  </tr>
				  <tr>
				    <td>Ernst Handel</td>
				  
				    <td>Austria</td>
				  </tr>
				  <tr>
				    <td>Island Trading</td>
				
				    <td>UK</td>
				  </tr>
				  <tr>
				    <td>Laughing Bacchus Winecellars</td>
				  
				    <td>Canada</td>
				  </tr>
				  <tr>
				    <td>Magazzini Alimentari Riuniti</td>
				    
				     <td>Austria</td>
				  </tr>
				  
				  <tr>
				    <td>Island Trading</td>
				    <td>Island Trading</td>
				   </tr>
				    
				</table> 
			</div>
    </div>
    
</div>
<script type="text/javascript">
    var g_comicoCategoryDisplayBannerMapToJson = $.parseJSON(JSON.stringify({"COMICO_000005":[{"bannerId":6434,"bannerName":"무왕대구","url":"http://comics.hangame.com/titles/11137","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/11137_kv332x444.jpg","startYmdt":1560818520000,"endYmdt":1580172120000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"소그미","linkType":"NEW","bannerNameURLEncoding":"%EB%AC%B4%EC%99%95%EB%8C%80%EA%B5%AC"},{"bannerId":6440,"bannerName":"레벨업 어게인","url":"http://comics.hangame.com/titles/19201","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/19201_kv332x444.jpg","startYmdt":1560818580000,"endYmdt":1595896980000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"비츄","linkType":"NEW","bannerNameURLEncoding":"%EB%A0%88%EB%B2%A8%EC%97%85+%EC%96%B4%EA%B2%8C%EC%9D%B8"},{"bannerId":6439,"bannerName":"잭슨의 관","url":"http://comics.hangame.com/titles/145","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/145_kv332x444.jpg","startYmdt":1560818580000,"endYmdt":1580172180000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"CTK ","linkType":"NEW","bannerNameURLEncoding":"%EC%9E%AD%EC%8A%A8%EC%9D%98+%EA%B4%80"},{"bannerId":6433,"bannerName":"너를 그리는 시간","url":"http://comics.hangame.com/titles/21771","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/21771_kv332x444.jpg","startYmdt":1560818460000,"endYmdt":1580258460000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"이노안","linkType":"NEW","bannerNameURLEncoding":"%EB%84%88%EB%A5%BC+%EA%B7%B8%EB%A6%AC%EB%8A%94+%EC%8B%9C%EA%B0%84"},{"bannerId":6441,"bannerName":"만렙부터 레벨업","url":"http://comics.hangame.com/titles/23780","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/23780_kv332x444.jpg","startYmdt":1560818580000,"endYmdt":1580172180000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"해무극","linkType":"NEW","bannerNameURLEncoding":"%EB%A7%8C%EB%A0%99%EB%B6%80%ED%84%B0+%EB%A0%88%EB%B2%A8%EC%97%85"},{"bannerId":6436,"bannerName":" 흑마법사 홍대가다","url":"http://comics.hangame.com/titles/25465","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/25465_kv332x444.jpg","startYmdt":1560818520000,"endYmdt":1595896920000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"김상현","linkType":"NEW","bannerNameURLEncoding":"+%ED%9D%91%EB%A7%88%EB%B2%95%EC%82%AC+%ED%99%8D%EB%8C%80%EA%B0%80%EB%8B%A4"},{"bannerId":6432,"bannerName":"40, 41","url":"http://comics.hangame.com/titles/27521","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/27521_kv332x444.jpg","startYmdt":1560818460000,"endYmdt":1593477660000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"버저비터 ","linkType":"NEW","bannerNameURLEncoding":"40%2C+41"},{"bannerId":6437,"bannerName":"레벨업하는 몬스터","url":"http://comics.hangame.com/titles/23027","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/23027_kv332x444.jpg","startYmdt":1560818520000,"endYmdt":1593477720000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"지갑송","linkType":"NEW","bannerNameURLEncoding":"%EB%A0%88%EB%B2%A8%EC%97%85%ED%95%98%EB%8A%94+%EB%AA%AC%EC%8A%A4%ED%84%B0"},{"bannerId":6442,"bannerName":"하토카페","url":"http://comics.hangame.com/titles/132","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/hato.jpg","startYmdt":1560818580000,"endYmdt":1582591380000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"고쿠게츠모모","linkType":"NEW","bannerNameURLEncoding":"%ED%95%98%ED%86%A0%EC%B9%B4%ED%8E%98"},{"bannerId":6438,"bannerName":"만렙찍고 환생 - 더 가드너","url":"http://comics.hangame.com/titles/26159","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/26159_kv332x444.jpg","startYmdt":1560818520000,"endYmdt":1595983320000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"참구름","linkType":"NEW","bannerNameURLEncoding":"%EB%A7%8C%EB%A0%99%EC%B0%8D%EA%B3%A0+%ED%99%98%EC%83%9D+-+%EB%8D%94+%EA%B0%80%EB%93%9C%EB%84%88"},{"bannerId":6435,"bannerName":"사채업자","url":"http://comics.hangame.com/titles/26618","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/26618_kv332x444.jpg","startYmdt":1560818520000,"endYmdt":1580258520000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"형상준","linkType":"NEW","bannerNameURLEncoding":"%EC%82%AC%EC%B1%84%EC%97%85%EC%9E%90"}],"COMICO_000004":[{"bannerId":6425,"bannerName":"낙원의 고양이들","url":"http://comics.hangame.com/titles/24652","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818340000,"endYmdt":1580171940000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"아마사키 이로하","linkType":"NEW","bannerNameURLEncoding":"%EB%82%99%EC%9B%90%EC%9D%98+%EA%B3%A0%EC%96%91%EC%9D%B4%EB%93%A4"},{"bannerId":6428,"bannerName":"상사의 아내","url":"http://comics.hangame.com/titles/27381","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818400000,"endYmdt":1580258400000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"로벨리스트 ","linkType":"NEW","bannerNameURLEncoding":"%EC%83%81%EC%82%AC%EC%9D%98+%EC%95%84%EB%82%B4"},{"bannerId":6429,"bannerName":"시작은 형수","url":"http://comics.hangame.com/titles/23623","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818460000,"endYmdt":1580344860000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"김조던","linkType":"NEW","bannerNameURLEncoding":"%EC%8B%9C%EC%9E%91%EC%9D%80+%ED%98%95%EC%88%98"},{"bannerId":6431,"bannerName":"미쳐있는 꽃","url":"http://comics.hangame.com/titles/16144","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818460000,"endYmdt":1590540060000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"잼삐","linkType":"NEW","bannerNameURLEncoding":"%EB%AF%B8%EC%B3%90%EC%9E%88%EB%8A%94+%EA%BD%83"},{"bannerId":6426,"bannerName":"형부 힘내세요","url":"http://comics.hangame.com/titles/22311","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818400000,"endYmdt":1588034400000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"순진한처제","linkType":"NEW","bannerNameURLEncoding":"%ED%98%95%EB%B6%80+%ED%9E%98%EB%82%B4%EC%84%B8%EC%9A%94"},{"bannerId":6430,"bannerName":"프로토타입","url":"http://comics.hangame.com/titles/11969","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818460000,"endYmdt":1580172060000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"최창흠","linkType":"NEW","bannerNameURLEncoding":"%ED%94%84%EB%A1%9C%ED%86%A0%ED%83%80%EC%9E%85"},{"bannerId":6427,"bannerName":"아내팬티","url":"http://comics.hangame.com/titles/17127","imageUrl":"https://hangame-images.toastoven.net/hangame/www/201707/comico/bg_mask_adult.jpg","startYmdt":1560818400000,"endYmdt":1577752800000,"bannerAgeRating":"OVER19","statusType":"SERVICE","description":"T팬티 ","linkType":"NEW","bannerNameURLEncoding":"%EC%95%84%EB%82%B4%ED%8C%AC%ED%8B%B0"}],"COMICO_000003":[{"bannerId":6413,"bannerName":"재벌집 막내아들","url":"http://comics.hangame.com/titles/17485","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/재벌집막내아들.jpg","startYmdt":1560818220000,"endYmdt":1574728620000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"산경 ","linkType":"NEW","bannerNameURLEncoding":"%EC%9E%AC%EB%B2%8C%EC%A7%91+%EB%A7%89%EB%82%B4%EC%95%84%EB%93%A4"},{"bannerId":6410,"bannerName":"천마 하고 싶은 거 다 해!","url":"http://comics.hangame.com/titles/25683","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/25683_kv332x444.jpg","startYmdt":1560818160000,"endYmdt":1579653360000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"배현","linkType":"NEW","bannerNameURLEncoding":"%EC%B2%9C%EB%A7%88+%ED%95%98%EA%B3%A0+%EC%8B%B6%EC%9D%80+%EA%B1%B0+%EB%8B%A4+%ED%95%B4%21"},{"bannerId":6406,"bannerName":"내가 영화다","url":"http://comics.hangame.com/titles/17721","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/17721_kv332x444.jpg","startYmdt":1560818100000,"endYmdt":1572395700000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"글드림","linkType":"NEW","bannerNameURLEncoding":"%EB%82%B4%EA%B0%80+%EC%98%81%ED%99%94%EB%8B%A4"},{"bannerId":6411,"bannerName":"고고학자인데 땅을 안 팜","url":"http://comics.hangame.com/titles/26774","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/26774_kv332x444.jpg","startYmdt":1560818220000,"endYmdt":1582677420000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"산하","linkType":"NEW","bannerNameURLEncoding":"%EA%B3%A0%EA%B3%A0%ED%95%99%EC%9E%90%EC%9D%B8%EB%8D%B0+%EB%95%85%EC%9D%84+%EC%95%88+%ED%8C%9C"},{"bannerId":6408,"bannerName":"포탑으로 자동사냥","url":"http://comics.hangame.com/titles/27482","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/27482_kv332x444.jpg","startYmdt":1560818160000,"endYmdt":1571704560000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"선무혁","linkType":"NEW","bannerNameURLEncoding":"%ED%8F%AC%ED%83%91%EC%9C%BC%EB%A1%9C+%EC%9E%90%EB%8F%99%EC%82%AC%EB%83%A5"},{"bannerId":6412,"bannerName":"무한리프","url":"http://comics.hangame.com/titles/27438","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/27438_kv332x444.jpg","startYmdt":1560818220000,"endYmdt":1572395820000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"고려의검 ","linkType":"NEW","bannerNameURLEncoding":"%EB%AC%B4%ED%95%9C%EB%A6%AC%ED%94%84"},{"bannerId":6414,"bannerName":"재벌강점기","url":"http://comics.hangame.com/titles/18511","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/18511_kv332x444.jpg","startYmdt":1560818220000,"endYmdt":1574123820000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"레고밟았어","linkType":"NEW","bannerNameURLEncoding":"%EC%9E%AC%EB%B2%8C%EA%B0%95%EC%A0%90%EA%B8%B0"},{"bannerId":6407,"bannerName":"맛있는 버프를 만들어드립니다","url":"http://comics.hangame.com/titles/23553","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/23553_kv332x444.jpg","startYmdt":1560818160000,"endYmdt":1572395760000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"신쌤","linkType":"NEW","bannerNameURLEncoding":"%EB%A7%9B%EC%9E%88%EB%8A%94+%EB%B2%84%ED%94%84%EB%A5%BC+%EB%A7%8C%EB%93%A4%EC%96%B4%EB%93%9C%EB%A6%BD%EB%8B%88%EB%8B%A4"},{"bannerId":6405,"bannerName":"사이킥 위저드","url":"http://comics.hangame.com/titles/27525","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/27525_kv332x444.jpg","startYmdt":1560818100000,"endYmdt":1566952500000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"김재한","linkType":"NEW","bannerNameURLEncoding":"%EC%82%AC%EC%9D%B4%ED%82%A5+%EC%9C%84%EC%A0%80%EB%93%9C"},{"bannerId":6409,"bannerName":"눈 떠 보니 슈퍼스타","url":"http://comics.hangame.com/titles/21589","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/21589_kv332x444.jpg","startYmdt":1560818160000,"endYmdt":1577752560000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"천태거","linkType":"NEW","bannerNameURLEncoding":"%EB%88%88+%EB%96%A0+%EB%B3%B4%EB%8B%88+%EC%8A%88%ED%8D%BC%EC%8A%A4%ED%83%80"}],"COMICO_000002":[{"bannerId":6416,"bannerName":"공기심장","url":"http://comics.hangame.com/titles/1408","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/1408_kv332x444.jpg","startYmdt":1560818280000,"endYmdt":1580258280000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"김종진","linkType":"NEW","bannerNameURLEncoding":"%EA%B3%B5%EA%B8%B0%EC%8B%AC%EC%9E%A5"},{"bannerId":6418,"bannerName":"하이브리드(HYBRID)","url":"http://comics.hangame.com/titles/2342","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/2342_kv332x444.jpg","startYmdt":1560818280000,"endYmdt":1577839080000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"글 이순기, 그림 손영식","linkType":"NEW","bannerNameURLEncoding":"%ED%95%98%EC%9D%B4%EB%B8%8C%EB%A6%AC%EB%93%9C%28HYBRID%29"},{"bannerId":6415,"bannerName":"리얼터","url":"http://comics.hangame.com/titles/111","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/111_kv332x444.jpg","startYmdt":1560818220000,"endYmdt":1577147820000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"글 전진석, 김현희, 그림 최예지","linkType":"NEW","bannerNameURLEncoding":"%EB%A6%AC%EC%96%BC%ED%84%B0"},{"bannerId":6417,"bannerName":"Rock City Blues (록시티 블루스)","url":"http://comics.hangame.com/titles/2340","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/2340_kv332x444.jpg","startYmdt":1560818280000,"endYmdt":1577320680000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"최미르","linkType":"NEW","bannerNameURLEncoding":"Rock+City+Blues+%28%EB%A1%9D%EC%8B%9C%ED%8B%B0+%EB%B8%94%EB%A3%A8%EC%8A%A4%29"},{"bannerId":6424,"bannerName":"나의 멘탈은 한계입니다","url":"http://comics.hangame.com/titles/13436","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/13436_kv332x444.jpg","startYmdt":1560818340000,"endYmdt":1588034340000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"후지 아이리","linkType":"NEW","bannerNameURLEncoding":"%EB%82%98%EC%9D%98+%EB%A9%98%ED%83%88%EC%9D%80+%ED%95%9C%EA%B3%84%EC%9E%85%EB%8B%88%EB%8B%A4"},{"bannerId":6419,"bannerName":"명검","url":"http://comics.hangame.com/titles/21758","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/21758_kv332x444.jpg","startYmdt":1560818280000,"endYmdt":1572309480000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"글 하늘소, 그림 도가도","linkType":"NEW","bannerNameURLEncoding":"%EB%AA%85%EA%B2%80"},{"bannerId":6420,"bannerName":"JADE","url":"http://comics.hangame.com/titles/8301?order=ASC&showPreview=N&page=1","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/201811222.jpg","startYmdt":1560818280000,"endYmdt":1580171880000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"김명호","linkType":"NEW","bannerNameURLEncoding":"JADE"},{"bannerId":6421,"bannerName":"복수는 차갑게","url":"http://comics.hangame.com/titles/2346","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/2346_kv332x444.jpg","startYmdt":1560818280000,"endYmdt":1580171880000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"sa ku ra","linkType":"NEW","bannerNameURLEncoding":"%EB%B3%B5%EC%88%98%EB%8A%94+%EC%B0%A8%EA%B0%91%EA%B2%8C"},{"bannerId":6422,"bannerName":"새벽의 토바리","url":"http://comics.hangame.com/titles/131","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/131_kv332x444.jpg","startYmdt":1560818340000,"endYmdt":1588034340000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"모모치도리","linkType":"NEW","bannerNameURLEncoding":"%EC%83%88%EB%B2%BD%EC%9D%98+%ED%86%A0%EB%B0%94%EB%A6%AC"},{"bannerId":6423,"bannerName":"타임트리 바리스타","url":"http://comics.hangame.com/titles/20752","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/20752_kv332x444.jpg","startYmdt":1560818340000,"endYmdt":1585442340000,"bannerAgeRating":"COMMON","statusType":"SERVICE","description":"CON_R_Z (컨알지)","linkType":"NEW","bannerNameURLEncoding":"%ED%83%80%EC%9E%84%ED%8A%B8%EB%A6%AC+%EB%B0%94%EB%A6%AC%EC%8A%A4%ED%83%80"}],"COMICO_000001":[{"bannerId":1033,"bannerName":"마제","url":"http://comics.hangame.com/titles/9688?LinkService=hgc_mainsec9688","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/9688.jpg","startYmdt":1500948360000,"endYmdt":1503540360000,"bannerAgeRating":"COMMON","statusType":"DEFAULT","description":"황성","linkType":"NEW","bannerNameURLEncoding":"%EB%A7%88%EC%A0%9C"},{"bannerId":1031,"bannerName":"열혈강호","url":"http://comics.hangame.com/titles/2337?LinkService=hgc_mainsec2337","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/2337.jpg","startYmdt":1500948240000,"endYmdt":1503540240000,"bannerAgeRating":"COMMON","statusType":"DEFAULT","description":"전극진, 양재현","linkType":"NEW","bannerNameURLEncoding":"%EC%97%B4%ED%98%88%EA%B0%95%ED%98%B8"},{"bannerId":1034,"bannerName":"독고","url":"http://comics.hangame.com/titles/2187?LinkService=hgc_mainsec2187","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/2187.jpg","startYmdt":1500948540000,"endYmdt":1503540540000,"bannerAgeRating":"COMMON","statusType":"DEFAULT","description":"민(meen),백…","linkType":"NEW","bannerNameURLEncoding":"%EB%8F%85%EA%B3%A0"},{"bannerId":1032,"bannerName":"독고 리와인드","url":"http://comics.hangame.com/titles/5969?LinkService=hgc_mainsec5969","imageUrl":"https://hangame-images.toastoven.net/hangame/main2016/comics/184_246/5969.jpg","startYmdt":1500948300000,"endYmdt":1503540300000,"bannerAgeRating":"COMMON","statusType":"DEFAULT","description":"민(meen),백…","linkType":"NEW","bannerNameURLEncoding":"%EB%8F%85%EA%B3%A0+%EB%A6%AC%EC%99%80%EC%9D%B8%EB%93%9C"}]}));

    $(function() {
        var firstCategoryId = 'COMICO_000002';
        changeBanner(firstCategoryId, 1);
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
    			
    			str+="<tr>";
    			str+="<td>바뀌어라</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>Alfreds Futterkiste</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>Alfreds Futterkiste</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>Alfreds Futterkiste</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>Alfreds Futterkiste</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>바뀌었니?</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    		
    			str+="<tr>";
    			str+="<td>바뀌었니?</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    		}
    		if(tabCount==2){

    			str+="<tr>";
    			str+="<td>바뀌었니?</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>Alfreds Futterkiste</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>Alfreds Futterkiste</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>바뀌었니?</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>Alfreds Futterkiste</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>Alfreds Futterkiste</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    			str+="<tr>";
    			str+="<td>바뀌었니?</td>";
    			str+="<td>Germany</td>";
    			str+="</tr>";
    			
    		}
 
    		str+="</table>";
    		
    		document.getElementById("notice_table").innerHTML = str; 
    	}
</script>

		





<div class="plus_area half_type">
    <div class="tit_box">
        <h2 class="mix_tit">
	        <a href="https://mix.hangame.com" onclick="clickcr(this, 'mix.logo','','',event);" target="hangameMixSite" class="tit_link">
	       		 <img src="image/gallery_tit.png" class="logo_mix">HANGAME mix
	        </a>
        </h2>
    </div>
    <div class="mix_box">
        <ul class="game_info_lst">
            
                <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="image/dog.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">몽몽이들</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
                
                <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="image/dog.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">몽몽이들</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
                
                <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="image/dog.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">몽몽이들</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
                
                <br>
                
                <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="image/cat.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">고먀미</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
            
                <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="image/cat.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">고먀미</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
                
                  <li class="game_info_item">
                    <a href="https://mix.hangame.com/game/10053" >
                        <img src="image/cat.png" width="131" height="94" alt="한게임 포커 : 레볼루션">
                    </a>
                    <div class="game_info">
                        <a href="https://mix.hangame.com/game/10053" onclick="clickcr(this, 'mix.game1','','',event);" target="hangameMixSite" class="game_info_tit">고먀미</a>
                        <span class="game_info_txt">2019-06-27</span>
                    </div>
                </li>
            
        </ul>
    </div>
    <a href="https://mix.hangame.com" onclick="clickcr(this, 'mix.more','','',event);" target="hangameMixSite" class="btn_all"><span class="ico_all">HANGAME mix 전체보기</span></a>
</div>
	</div>
	
</div>

<div class="footer">

	<div class="info_section">
		<div class="inner">
			<a href="http://www.nhn.com/" onclick="clickcr(this,'ftr.nhn','','',event);" target="_blank" class="nhnent_link" title="NHN">
			<img src="image/logo_icon_miri.png" width="90px" height="90px">
			</a>
			<div class="info_area">
				<ul class="policy_lst">
				<li class="policy_item"><a class="policy_link" href="http://www.nhn.com/" target="company" onclick="clickcr(this,'ftr.corp','','',event);">회사소개</a><span class="bar"></span></li>
				<li class="policy_item"><a class="policy_link" href="/agreement.nhn?code=1" onclick="clickcr(this,'ftr.agree','','',event);">이용약관</a><span class="bar"></span></li>
		        <li class="policy_item"><a class="policy_link" href="/agreement.nhn?code=2" onclick="clickcr(this,'ftr.privacy','','',event);"><b>개인정보처리방침</b></a><span class="bar"></span></li>
		        <li class="policy_item"><a class="policy_link" href="/agreement.nhn?code=3" onclick="clickcr(this,'ftr.youth','','',event);">청소년보호정책</a><span class="bar"></span></li>
		        <li class="policy_item"><a class="policy_link" href="#" onclick="openWin('popup/emailhack.htm','emailhack',400,270,'no');clickcr(this,'ftr.emailhack','','',event);return false;">이메일 주소무단수집거부</a><span class="bar"></span></li>
		        <li class="policy_item"><a class="policy_link" href="/siteMap.nhn" onclick="clickcr(this,'ftr.map','','',event);">사이트맵</a><span class="bar"></span></li>
		        <li class="policy_item"><a class="policy_link" href="http://displayad.hangame.com" target="company" onclick="clickcr(this,'ftr.ad','','',event);">광고안내</a><span class="bar"></span></li>
		        <li class="policy_item"><a class="policy_link" href="#" onclick="openWin('http://www.nhn.com/footer/proposal/proposalRegister.nhn', 'proposal', 877, 660, 'yes'); clickcr(this,'ftr.contactus','','',event); return false;"> 제휴안내</a><span class="bar"></span></li>
        		<li class="policy_item"><a class="policy_link" href="https://cs.hangame.com/content/index.do" onclick="clickcr(this,'ftr.cs','','',event);">고객센터</a></li>
        		</ul>
				
				<p class="notice_dsc">엔에이치엔은 한게임 내 채널링 게임 및 스폰서 충전소 영역의 통신판매를 중개하고 있습니다.<br>
				해당 서비스의 제공과 관련된 모든 의무와 책임은 개별 통신판매업자에게 있으며 이용 중 발생하는 문제에 대해 당사는 법적 책임을 부담하지 않습니다.</p>
				<address>
					<ul class="info_lst">
                    <li class="info_item">
                          <span class="info_txt">상호 : 엔에이치엔(주)<span class="info_txt_bar"></span></span>
                          <span class="info_txt">대표 : 정우진<span class="info_txt_bar"></span></span>
                          <span class="info_txt">주소 : 13487 경기도 성남시 분당구 대왕판교로645번길 16 NHN 플레이뮤지엄<span class="info_txt_bar"></span></span>
                          <span class="info_txt">고객센터 : 1588-3810<span class="info_txt_bar"></span></span>
                          <span class="info_txt">기업대표 : 1544-6859</span>
                  	</li>
                  	<li class="info_item">
                          <span class="info_txt">Email : <a href="https://cs.hangame.com/content/mail/mailInquiry.do" onclick="clickcr(this,'ftr.mail','','',event);" class="mail_link" title="helpdesk@hangame.com">helpdesk@hangame.com</a><span class="info_txt_bar"></span></span>
                          <span class="info_txt">사업자 등록번호 : 144-81-15549<span class="info_txt_bar"></span></span>
                          <span class="info_txt">통신판매업신고번호 : 제2013-경기성남-1067호<span class="info_txt_bar"></span></span>
                          <span class="info_txt"><a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1448115549&amp;apv_perm_no=" target="_blank" class="license_link" title="사업자 정보확인">사업자 정보확인</a></span>
                  	</li>
					</ul>
				</address>
				<p class="copyright">©  NHN Corp. All rights reserved.</p>
			</div>
			<p class="chn" id="chinaFooter">

</p>
		</div>
		
	</div>
	
</div>
	
<div id="mobileArea" align="center" class="go_mobilehome" style="display:none;"><a href="/"><img src="https://hangame-images.toastoven.net/hangame/main/smartPhone/go_mobilehome.gif" width="960" height="132" alt="모바일 웹 포털 홈으로 이동"></a></div>
 
<script type="text/javascript">
    function show_tips() {
        top.location = 'http://www.hangame.com/';
        top.alert('죄송합니다.\n\n귀하의 브라우져에서는 자동으로 환경설정을 바뀌지 못하도록 지정되어 있으므로,\n수동으로 시작페이지 설정을 하시기 바랍니다.');
    }

    function makeMobileBanner() {
        var userAgent = navigator.userAgent;
        var regExp2 = new RegExp("^.*Mobile.*Safari.*|^Mozilla.*POLAR.*|^Mozilla.*NATEBrowser.*|^Opera.*SKT.*|^.*Windows\ CE.*Opera.*|^.*IEMobile.*|^.*iPhone.*|^.*iPod.*|^.*Android.*|^.*Windows\ CE.*POLAR.*|^.*Dolfin.*");

        if (typeof(userAgent) != "undefined") {
            if (regExp2.test(userAgent) && userAgent.indexOf('iPad') == -1) {
                $j('#mobileArea').show();
            }
        }
    }
</script>
		</div>

		<!-- [D] 이벤트 레이어 -->
		<div id="mobilePRLayer" class="evt_pop_wrap" style="display:none">
			<div class="evt_pop_cont">
				<img src="https://hangame-images.toastoven.net/hangame/www/201809/event_pop_img_0911_1.png" alt="">
				<h1 class="blind">리뉴얼 한게임 모바일웹</h1>
				<h2 class="blind">HTML5게임, 만화 등 한게임 콘텐츠를 다운로드 없이 휴대폰에서 즐겨보세요!</h2>
				<ol class="blind">
					<li>1. QR코드로 접속 - 스마트폰으로 QR코드를 찍으시면 한게임 모바일웹으로 연결됩니다.</li>
					<li>2. 포털 사이트에서 검색 후 접속 - 스마트폰으로 포털사이트에서 접속하신 후 한게임 검색하여 클릭하면 모바일웹으로 연결됩니다.</li>
					<li>3. 주소 직접 입력 - 스마트폰으로 브라우저(삼성 인터넷, 크롬, 사파리, 네이버/다음앱 등) 실행 후 주소창에 한게임 주소(www.hangame.com)를 입력하여 접속하세요!</li>
				</ol>
				<button type="button" class="pop_btn_close" onclick="closeLayer('mobilePRLayer'); return false;">레이어 닫기</button>
			</div>
			<span class="align"></span>
		</div>
		<!-- [D] //이벤트 레이어 -->

		
			






	<!-- Scripts -->
	<script type="text/javascript" src="https://id.hangame.com/common/clientscript/builded/login/login_env.js" charset="UTF-8"></script>

	<!-- º????? JS -->
	<script type="text/javascript" src="https://id.hangame.com/common/clientscript/builded/loginui/login-v20170309.js?v=20190523" charset="UTF-8"></script>

	<!-- flash UI -->
	<script type="text/javascript" src="https://id.hangame.com/common/login/loginui/js/flashLoginUIStyle_www4.js?v=201605190001" charset="UTF-8"></script>


	<!-- ·?±×?? Æ? °?·? ¼³?¤ -->
	<script type="text/javascript">
	document.msCapsLockWarningOff = true; // IE 9 : ?¸½º¶? ?ðÆ?Æ® ·¹??¾? ³??? ??½´


    LOGIN.URL_PROTOCOL = "https:";

	LOGIN.init = function() {
		// ·?±×?? Æ? ¼³?¤.
		// ¾Æ·¡ ¿?¼?¿¡ ½½¶???´? °?·? ¼³?¤?? ³??? ¼? ?????? °????Øº¸??.
		var bindOptionsLoginForm = {};

		//2009.12.14  º¸¾?·?±×??Æ? ?®´???¿??? ?§?Ø jsp·? ??³¿
		var flashBgColor = "#FAFAFA";

		if ("" == "B") {
			flashBgColor = "#313131";
		}

		var objOption = {"bgColor":flashBgColor, "wmode":"opaque", "quality":"high", "allowScriptAccess":"always", "menu":"false", "swliveconnect":"true",
				"wheelHandler":"flashWheelListener","flashVars":"","display":"inline-block" };
		var flashTag = nhn.FlashObject.generateTag(LOGIN._FLASH_SWF_RENEWAL_URL, LOGIN._FLASH_ID, "150", "65", objOption);

		// ??·¡½?Æ? ¼³?¤
		bindOptionsLoginForm.FLASH_TAG = flashTag;

		// ·?±×?? ??·? Æ?
		// ¾Æ·¡ ·?±×??Æ??? ??½???°? ¼?±?´? °??? ??¹??¸·? ???¤????, ¾Æ´?¸? ·?±×?? Æ? ±?º? ?¿???¸·? ³²±æ°?????´? ?? ´? °?¹??Øº¸??.
		bindOptionsLoginForm.AREA_IDPW = "login_box";
		bindOptionsLoginForm.AREA_FLASH = "login_flash";

		bindOptionsLoginForm.SUBMIT_BUTTON = "btnLogin";
		bindOptionsLoginForm.SUBMIT_BUTTON_IMG = "btnLoginImg";

		// UI ?³¸®¸? ?§?? ??¹? ???¤
		// TODO: ?ðÆ?Æ® ??·?°ª?? ?³¸®??´? °??? ??¹? ±¸?¶·? ??¼³°? ?? °?.
		bindOptionsLoginForm.onCapslock = LOGIN.DO_CAPSLOCK;	// capslock ?³¸® ??¹?
		bindOptionsLoginForm.onPhaseChange = LOGIN.DO_PHASE_CHANGE;	// º¸¾? ´?°? º??­½? ??¹?
		bindOptionsLoginForm.onError = LOGIN.displayError;	// ¿¡·? ¹ß??½? ?³¸®?? ??¹?

		bindOptionsLoginForm.onDefaultStatusChange = LOGIN.doDefaultStatusChange;	// ID, Password ¹?±×¶?¿???text ?³¸®¿? ??¹?)

		// binding
		LOGIN.bindElement('loginform', bindOptionsLoginForm);

		// IE ¿¡¼­ flash focus out ?? ?§?Ø ????
		document.getElementById(bindOptionsLoginForm.AREA_FLASH).onfocusout = function() { killfocus(); }

		// finger-print
        var bob = window.bobData = window.bobData || [];
        bob.push(['setInfo', 'QHcSHPwelnAZtGAr', 'login']); //  ¨? ¼??? ?¤º¸ ¼?Æ?
        bob.push(["bStart"]);                                     //  ¨? ¼??? ±?´? ½??? ¼?Æ?

        var b = document.createElement('script');
        b.src = 'https://atm.acecounter.com/bobbing_tl.js';        //  ¨? Device Fingerprint SDK °æ·?
        document.body.appendChild(b);
	};

	C.addOnReady(LOGIN.init);


	//nexturl?? ¾ø´?¸? ??°??? ¸Þ?? Æ?????·?
	LOGIN.defaultNextUrl = "https://www.hangame.com";

	// ¿¡·? ?³¸®¿? ??¹?
	// err:object
	LOGIN.displayError = function(errCode, arg2) {

		if( errCode == 20 ) {
			alert( LOGIN.VALIDATE_EMPTY_ID );
		} else if( errCode == 21 ) {
			alert( LOGIN.VALIDATE_EMPTY_PW );
		} else if( errCode == 22 ) {
			alert( LOGIN.VALIDATE_SPECIALCHAR_ID );
		} else if( errCode == 23 ) {
			alert( LOGIN.VALIDATE_SPECIALCHAR_PW );
		} else if (errCode == 24) {
			alert(LOGIN.VALIDATE_EMPTY_CAPTCHA);
		} else if( errCode == 1 ) {
			alert( "º¸¾??°¸? °¡?®¿?´? ?? ½?ÆÐ??¿´½?´?´?." );
		} else if( errCode == 2 ) {
			alert( "º¸¾??°¸? °¡?®¿??¸³ª ?³¸®??´??? ½?ÆÐ??¿´½?´?´?." );
		} else {
			alert( "displayError :: " + errCode );
		}

	};

	LOGIN.doDefaultStatusChange = function(objSrc, fieldType, isFocused) {
		var objIdDiv = C.get(LOGIN._ID_DIV);
		var objPwDiv = C.get(LOGIN._PASSWORD_DIV);

		if( typeof objSrc == null || objSrc === "undefined" ) {
			return;
		}

		if (fieldType === "ID" ) {
			if (isFocused) {
				objIdDiv.className = "login_form_item input_id input_mouseover";
			} else if (STR.isBlank(objSrc.value)) {
				objIdDiv.className = "login_form_item input_id";
			} else {
				objIdDiv.className = "login_form_item input_id input_writeafter";
			}
		} else if (fieldType === "PASSWORD") {
			if (isFocused) {
				objPwDiv.className = "login_form_item input_pw input_mouseover";
			} else if (STR.isBlank(objSrc.value)) {
				objPwDiv.className = "login_form_item input_pw";
			} else {
				objPwDiv.className = "login_form_item input_pw input_writeafter";
			}
		}
	}

	function goNewRegist() {
		var url_account = "https://accounts.hangame.com";
		var inflow = 'PH';
		var qstr = "inflow=" + inflow + "&docref=" + encodeURIComponent(top.location.href) + "&callbackUrl=" + encodeURIComponent('');
		var registerUrl = url_account + "/register/index?" + qstr;
		top.location.href = registerUrl;
	}

</script>
<!--[if lte IE 9]>
<script>
	LOGIN.IS_IE_UNDER_9 = true;
</script>
<![endif]-->



		

		<script type="text/javascript">
			var nsc = "hangame.nologin"; //nClicks 서비스 코드
			var ccsrv="cc.hangame.com";

            $(function () {
                // 2012-02-13 by eproable
                setTimeout(function () {
                    chinaFooter.load();
                }, 500);

                // 모바일 기기 여부 판별
                makeMobileBanner();
            });

			function openLayer(layerId) {
				$("#" + layerId).show();
			}

			function closeLayer(layerId) {
				$("#" + layerId).hide();
			}
		</script>

		
		<script src="/support/js/acecounter/acecounter.js?201906170848" type="text/javascript"></script><script src="/support/js/acecounter/AceCounter_v70c.js?rnd=1560841684103" type="text/javascript"></script>

		<noscript><img src='http://gtc20.acecounter.com:8080/?uid=AS2A40435765699&je=n&' border='0' width='0' height='0' alt=''></noscript>
		

	

<script src="https://atm.acecounter.com/bobbing_tl.js"></script></body>
</html>
