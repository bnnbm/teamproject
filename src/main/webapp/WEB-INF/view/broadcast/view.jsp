<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="keywords" content="아프리카TV,아프리카,개인방송,신대륙,UCC" />
	<meta name="Description" content="보이는라디오,개인방송 신대륙,아프리카TV" />
	<meta property="fb:app_id" content="118793551515130" />
	<meta property="og:title" content="[생]제목제목제목제목제목" />
	<meta property="og:type" content="website"/>
	<meta property="og:image" content="//liveimg.afreecatv.com/220013402_480x270.jpg?637" />
	<meta property="og:site_name" content="AfreecaTV"/>
	<meta property="og:description" content="LOL | BJ아이디"/>
	<meta property="og:updated_time" content="1578470749"/>
	<meta name="twitter:card" content="summary">
	<meta name="twitter:site" content="@afreecatv">
	<meta name="twitter:title" content="[생]제목제목제목제목제목">
	<meta name="twitter:description" content="LOL | BJ아이디">
	<meta name="twitter:image" content="//liveimg.afreecatv.com/220013402_480x270.jpg?637">
	<meta name="twitter:player" content="http://play.afreecatv.com/lshooooo/embed">
	<meta name="twitter:player:width" content="1280">
	<meta name="twitter:player:height" content="720">
	<meta name="weibo:video:embed_code" content="http://play.afreecatv.com/lshooooo/embed">
	<link rel="shortcut icon" type="image/x-icon" href="//res.afreecatv.com/afreeca.ico" />
	<!-- 2019-0611 css 경로 정리 -->
	<link rel="stylesheet" type="text/css" href="//res.afreecatv.com/css/global/common_set.css">
	<link rel="stylesheet" type="text/css" href="//res.afreecatv.com/css/global/chat/chat_wrap_live.css"> <!-- 채팅용 css -->
	<link rel="stylesheet" type="text/css" href="//res.afreecatv.com/css/global/webplayer/webplayer_live.css"> <!-- 웹플레이어용 css -->
	<!-- //2019-0611 css 경로 정리 -->

	<script type="text/javascript" src="//res.afreecatv.com/script/new_main/_config.js" charset="euc-kr"></script>
	<script type="text/javascript" src="//res.afreecatv.com/script/new_main/common.js" charset="euc-kr"></script>
	<script type="text/javascript" src="//res.afreecatv.com/script/common/placeholders.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="//static.afreecatv.com/asset/app/notification/ko_KR/noti.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="//res.afreecatv.com/script/ad/af_ad_block.js"></script>
	<script>
		function getIeVersion () {

			var word;
			var version = "N/A";

			var agent = navigator.userAgent.toLowerCase();
			var name = navigator.appName;

			if ( name == "Microsoft Internet Explorer" )
			{
				word = "msie ";
			}
			else
			{
				if ( agent.search("trident") > -1 )
				{
					word = "trident/.*rv:";
				}
				else if ( agent.search("edge/") > -1 )
				{
					word = "edge/";
				}
			}

			var reg = new RegExp( word + "([0-9]{1,})(\\.{0,}[0-9]{0,1})" );

			if (  reg.exec( agent ) != null  ) version = RegExp.$1 + RegExp.$2;

			return version;
		}

		if(getIeVersion() == '7.0' || getIeVersion() == '8.0')
		{
			alert('익스플로러10 이상부터 이용 가능합니다.');
			location.href = AFREECA;
		}
		else if(getIeVersion() == '9.0')
		{
			alert("서비스 이용이 원활하지 않을 수 있습니다.\n익스플로러10 이상으로 이용해주세요.");
		}
	</script>
	<title>BJ아이디 | 아프리카TV 플레이어</title>
</head>
<!-- 2018-0907 extend_smode  클레스 추가 -->
<!-- 전체화면에서 채팅 오픈시 출력 -->
<body class="ko_KR"> 
<!--
	wrap 에 아래 클레스 추가시 레이아웃 변경
	chat_open
	list_open
	list_bookmark_open
-->
<!-- wrap -->
<div id="webplayer" class="webplayer_live chat_open">
	<div id="webplayer_top">
		<h1 class="logo"><a href="index.shop" title="홈으로" target="_blank"><img src="jpg.jpg" alt="쿠프리카TV" /></a></h1>
		<!-- 광고배너  -->
		<div class="banner" id="header_ad" style="display:none;">
			<a href="#n"><img src="//res.afreecatv.com/images/flashplayer/@bn1.jpg" alt="광고용 베너"></a>
		</div>
		<!-- //광고배너 -->
		<div class="top_item">
			<div id="FeedRoot" class="feed_area" style="display:none;">
			</div>
			<div class="log_area">

								<button type="button" class="btn_more" id="btnMore" >더보기</button>
				<div class="mode_set_area" id="modeSetArea" style="display:none;">
					<div class="mode_set">
						<strong class="my_mode">어두운모드</strong>
						<input type="checkbox" id="modecheck">
						<label class="modecheck" for="modecheck"></label>
						<p>이 브라우저에만 적용됩니다</p>
					</div>
					<ul>
						<li><a href="//item.afreecatv.com/quickview.php" class="my_item" target="_blank">아이템</a></li>
						<li><a href="//item.afreecatv.com/starballoon.php" class="my_balloon" target="_blank">별풍선</a></li>
						<li><a href="http://sotong.afreecatv.com" class="my_sotong" target="_blank">소통센터</a></li>
						<li><a href="//help.afreecatv.com/atv.php" class="my_custom" target="_blank">고객센터</a></li>
						<li><a href="//www.afreecatv.com/afreeca_intro.htm" class="my_service" target="_blank">서비스 소개</a></li>
					</ul>
				</div>
				
				<!-- on 클레스로 로그인상태 활성화 -->
				<a href="javascript:;" class="nickname"><em class="new" style="display:none;">New</em><span class="text_login">로그인</span><span class="text_nickname" style="display:none;"></span></a>

				<!-- 개인화레이어 -->
				<div class="user_area" id="layerMyInfo">
					<div class="btn_set1">
						<a href="javascript:;" target="_blank" class="mybs"><span>방송국</span></a>
					</div>
					<ul class="my_tlist">
						<li><a class="my_item" href="https://point.afreecatv.com/report/AfreecaUseList.asp" target="_blank">내 아이템</a></li>
						<li><a class="my_balloon" href="https://point.afreecatv.com/report/afreecaballoonlist.asp" target="_blank">내 별풍선</a></li>
												<li><a class="my_gd" href="https://point.afreecatv.com/Subscription/SubscriptionList.asp" target="_blank">내 구독</span></a></li>
						<li><a class="my_Hopeballoon" href="https://point.afreecatv.com/Hope/HopePassFrm.asp?pagetype=Hope" target="_blank"><span>내 희망풍선</span></a></li>
						<li><a class="my_bene" href="https://adrevenue.afreecatv.com" target="_blank">내 광고</a></li>
						<li><a class="my_point" href="//mypoint.afreecatv.com/index.php?szWork=status" target="_blank">내 포인트</a></li>
						<li><a class="my_tk" href="http://token.afreecatv.com/index.php?page=my_list" target="_blank">내 토큰</span></a></li>

						<li>
							<a class="my_spon" href="https://adballoon.afreecatv.com/statistic.php" target="_blank"><span>내 애드벌룬</span></a>
						</li>
						<li>
							<a class="my_stat" href="http://broadstatistic.afreecatv.com/" target="_blank"><span>내 통계</span></a>
						</li>
												<li>
							<a class="my_message" href="http://note.afreecatv.com:8133/app/index.php"  target="_blank">
								<span>내 쪽지 </span><span class="cnt memo">0</span><span>개<span class="new" style="display:none;">New</span></span>
							</a>
						</li>
					</ul>
										<ul>
						<li><a class="my_shopping" href="http://shop.afreecatv.com/mypage" target="_blank">MY쇼핑</a></li>
						<li><a class="my_ffom" href="http://ffom.afreecatv.com/MyFFom/getMain?nFFomUserId=" target="_blank"><span>MY 뽐</span></a></li>
					</ul>
					<div class="mode_set">  <!-- 2019-1031  -->
						<strong class="my_mode">어두운모드</strong>
						<input type="checkbox" id="modecheck2">
						<label class="modecheck" for="modecheck2"></label>
						<p>이 브라우저에만 적용됩니다</p>
					</div>
					
					<div class="btn_set2">
						<a href="https://member.afreecatv.com/app/user_info.php" class="myinfo" target="_blank">내 정보</a>
						<a href="https://member.afreecatv.com/app/user_security.php" class="my_info_security" target="_blank"><em>내 정보 보호</em></a>
						<a href="javascript:;" class="logout">로그아웃</a>
					</div>
				</div>
				<!-- 개인화레이어 -->
			</div>

			<ul class="view_ctrl">
				<li class="btn_chat"><button type="button"><span>채팅창</span></button></li>
				<li class="btn_list"><button type="button"><span>방송리스트</span></button></li>
				<li class="btn_list_bookmark"><button type="button"><span>즐겨찾기</span></button></li>
			</ul>
			<div class="search">
				<input type="text" title="검색어" id="szKeyword" value="" class="input_text" maxlength="20" size="20" autocomplete="off" />
				<button type="button" class="btn_search"><span>검색하기</span></button>
				<!-- 레이어_검색 자동입력 관련 -->
				<div class="search_list">
					<!--자동검색어-->
					<div class="sear_auto" id="divSearchAuto">
						<ul>
						</ul>
					</div>
					<!--//자동검색어-->
					<!-- 최근 검색어 -->
					<div class="mysch" style="left:0px">
					</div>
					<!-- //최근 검색어 -->
					<!-- 실시간 인기 검색어 -->
					<div class="livesch" style="left:0px;">
					</div>
					<!-- //실시간 인기 검색어 -->
				</div>
			</div>
		</div>
	</div>
	<!-- webplayer_scroll -->
	<div id="webplayer_scroll">
		<!-- WebPlayer 영역 webplayer_contents -->
		<div id="webplayer_contents">
			<!-- 영상 출력영역 player_area -->
			<div id="player_area" >
				<!-- htmlplayer_wrap -->
				<div class="htmlplayer_wrap">
					<div class="htmlplayer_content">
						<style>
    .bxSliderWrapper {
        max-width: 250px;
        margin: auto;
    }
</style>

<!--script type="text/javascript" src="//res.afreecatv.com/script/common/jquery.js"></script-->
<script type="text/javascript" src="//static.afreecatv.com/asset/app/liveplayer/player/dist/vendor.js?_=20191223"></script>
<script type="text/javascript" src="//static.afreecatv.com/asset/app/liveplayer/player/dist/LivePlayer.js?_=20191223"></script>
<script type="text/javascript" src="//static.afreecatv.com/asset/app/liveplayer/view/dist/ViewVendor.js?_=20191223"></script>
<script type="text/javascript" src="//static.afreecatv.com/asset/app/liveplayer/view/dist/LiveView.js?_=20191223"></script>
<script src="//static.afreecatv.com/asset/app/sentry/afsentry.php"></script>
<script type="text/javascript" charset="utf-8" src="//static.afreecatv.com/asset/service/config/constant.js"></script>
<script type="text/javascript" src="//static.afreecatv.com/asset/service/common/common_analysis.js?_=20191210"></script>
<script>
	var bEmbed = ('landing' == 'embed' || 'landing' == 'direct') ? true : false;
	var isSimpleMode = Boolean();
	var szLang = 'ko_KR';
	var szLocalCode = 'KR';
    var livePlayer = null;
    var liveView = null;
	var szBjId   = 'lshooooo';
	var szBjNick   = 'BJ아이디';
	var nBroadNo = 220013402;
	var szBroadTitle   = '[생]제목제목제목제목제목';
	var szBroadThumPath = '//liveimg.afreecatv.com/220013402_480x270.jpg?637';
	var isDev = Boolean();
	var szMode = 'landing';
	var defaultConfig = '//static.afreecatv.com/asset/service/config/config.js';
	var ver = '20190516';
    var szInflow = 'path_key=0xe14da03a90515b9a_220013402_1578470750874&path1=main&path2=list&path3=total';

    var categories = JSON.parse('{"00130000":"\ud1a0\ud06c\/\ucea0\ubc29","00330000":"\uba39\ubc29\/\ucfe1\ubc29","00040000":"\uac8c\uc784","00040019":"LOL","00040075":"TFT","00040103":"\ub808\uc804\ub4dc \uc624\ube0c \ub8ec\ud14c\ub77c","00040066":"\ubc30\ud2c0\uadf8\ub77c\uc6b4\ub4dc","00040070":"\ud53c\ud30c\uc628\ub77c\uc7784","00040073":"Apex \ub808\uc804\ub4dc","00040001":"\uc2a4\ud0c0","00040016":"\uc2a4\ud0c02","00040074":"\ud328\uc2a4\uc624\ube0c\uc5d1\uc790\uc77c","00040067":"\ub85c\uc2a4\ud2b8\uc544\ud06c","00040005":"\uc11c\ub4e0\uc5b4\ud0dd","00040012":"\ub9ac\ub2c8\uc9c0","00040039":"\ud558\uc2a4\uc2a4\ud1a4","00040055":"\uc2a4\ud300\uac8c\uc784","00040009":"\ube44\ub514\uc624\uac8c\uc784","00040058":"\uc624\ubc84\uc6cc\uce58","00040032":"\uba54\uc774\ud50c\uc2a4\ud1a0\ub9ac","00040004":"\ub358\ud30c","00040096":"\uac70\uc0c1","00040105":"\uac80\uc740\uc0ac\ub9c9","00040086":"\uac9f\uc570\ud504\ub4dc","00040079":"\ub2e4\ud06c\uc5d0\ub374","00040080":"\ub370\ub4dc \ubc14\uc774 \ub370\uc774\ub77c\uc774\ud2b8","00040082":"\ub3c4\ud0c02","00040081":"\ub514\uc544\ube14\ub85c2","00040020":"\ub514\uc544\ube14\ub85c3","00040100":"\ub450\uadfc\ub450\uadfc \ubb38\uc608\ubd80","00040093":"\ub77c\uadf8\ub098\ub85c\ud06c \uc628\ub77c\uc778","00040094":"\ub808\uc778\ubcf4\uc6b0 \uc2dd\uc2a4","00040088":"\ub9c8\uad6c\ub9c8\uad6c","00040040":"\ub9c8\ube44\ub178\uae30","00040017":"\ub9c8\uc778\ud06c\ub798\ud504\ud2b8","00040089":"\uba54\uc774\ud50c\uc2a4\ud1a0\ub9ac2","00040090":"\ubaac\uc2a4\ud130\ud5cc\ud130","00040065":"\ubc14\ub78c\uc758\ub098\ub77c","00040042":"\ubc84\ube14\ud30c\uc774\ud130","00040071":"\ube14\ub799\uc635\uc2a44","00040022":"Blade N Soul","00040033":"\uc0ac\uc774\ud37c\uc988","00040097":"\uc0bc\uad6d\uc9c0 \uc870\uc870\uc804","00040101":"\uc138\ud0a4\ub85c: \uc250\ub3c4\uc6b0 \ub2e4\uc774 \ud2b8\uc640\uc774\uc2a4","00040007":"\uc2a4\ud398\uc15c\ud3ec\uc2a4","00040095":"\uc2ac\ub7ec\uac70","00040015":"\uc544\uc774\uc628","00040077":"\uc544\ud06c \uc11c\ubc14\uc774\ubc8c \uc774\ubcfc\ube0c\ub4dc","00040092":"R2","00040083":"\uc5d8\uc18c\ub4dc","00040091":"OSU","00040076":"\uc624\ud1a0\uccb4\uc2a4","00040098":"\uc628\ub77c\uc778 \uc0bc\uad6d\uc9c0 2","00040011":"WOW","00040002":"\uc6cc\ud06c\ub798\ud504\ud2b8","00040102":"\uc6d4\ub4dc \uc624\ube0c \ud0f1\ud06c","00040087":"\uc774\uce74\ub8e8\uc2a4","00040035":"GTA5","00040061":"\ucca0\uad8c","00040078":"\uce74\uc6b4\ud130 \uc2a4\ud2b8\ub77c\uc774\ud06c \uc628\ub77c\uc778","00040014":"\uce74\ud2b8\ub77c\uc774\ub354","00040057":"\ud14c\ub77c","00040043":"\ud14c\uc77c\uc988\ub7f0\ub108","00040099":"\ud2b8\ub9ac \uc624\ube0c \uc138\uc774\ube44\uc5b4","00040069":"\ud3ec\ud2b8\ub098\uc774\ud2b8","00040084":"\ud3ec\ud2b8\ub9ac\uc2a4","00040085":"\ud504\ub9ac\uc2a4\ud0c0\uc77c","00040050":"\ud788\uc624\uc2a4","00040008":"\uace0\uc804\uac8c\uc784","00040010":"PC \uae30\ud0c0\uac8c\uc784","00360000":"\ubaa8\ubc14\uc77c\uac8c\uc784","00360046":"V4","00360022":"\ub9ac\ub2c8\uc9c0M","00360050":"\ub9ac\ub2c8\uc9c02M","00360021":"\ub9ac\ub2c8\uc9c02:\ub808\ubcfc\ub8e8\uc158","00360030":"\uac80\uc740\uc0ac\ub9c9M","00360041":"\ub2e4\ud06c\uc5d0\ub374M","00360047":"\ub2ec\ube5b\uc870\uac01\uc0ac","00360028":"\ub77c\uadf8\ub098\ub85c\ud06cM","00360037":"\ub77c\uc774\ud504\uc560\ud504\ud130","00360012":"\ubaa8\ub450\uc758\ub9c8\ube14","00360031":"\ubc30\ud2c0\uadf8\ub77c\uc6b4\ub4dcM","00360043":"\ube14\ub808\uc774\ub4dc \uc564 \uc18c\uc6b8 \ub808\ubcfc\ub8e8\uc158","00360045":"\uc0bc\uad6d\uc9c0 \uc870\uc870\uc804 \uc628\ub77c\uc778","00360014":"\uc138\ube10\ub098\uc774\uce20","00360035":"\uc2ed\uc774\uc9c0\ucc9cM","00360033":"\uc5d0\ud53d\uc138\ube10","00360049":"\uc5d1\uc18c\uc2a4\ud788\uc5b4\ub85c\uc988","00360048":"\uc5d0\uc624\uc2a4 \ub808\ub4dc","00360026":"\uc624\ubc84\ud788\ud2b8","00360034":"\uc624\ud06c","00360042":"\ud06c\ub808\uc774\uc9c0 \uc544\ucf00\uc774\ub4dc M","00360044":"\ud074\ub798\uc2dc \uc624\ube0c \ud074\ub79c","00360018":"\ud074\ub798\uc2dc\ub85c\uc584","00360036":"\ud2b8\ub77c\ud558","00360038":"\ud398\uc774\ud2b8 \uadf8\ub79c\ub4dc \uc624\ub354","00360020":"\ud3ec\ucf13\ubaacGO","00360029":"\ud504\ub80c\uc988\ub9c8\ube14","00360040":"\ud504\ub9b0\uc138\uc2a4 \ucee4\ub125\ud2b8 \ub9ac:\ub2e4\uc774\ube0c","00360003":"\ubaa8\ubc14\uc77c \uc885\ud569 \uac8c\uc784","00580000":"\ud3ab\ubc29","00390000":"\uc9c0\uc0c1\ud30c\/\ucf00\uc774\ube14","00140000":"\ud504\ub85c\uc57c\uad6c","00140001":"\ub450\uc0b0","00140002":"\ud55c\ud654","00140003":"\ub86f\ub370","00140004":"\ud0a4\uc6c0","00140005":"\uc0bc\uc131","00140006":"KIA","00140007":"LG","00140008":"SK","00140010":"NC","00140011":"kt","00140009":"\uc911\ub9bd","00180000":"MLB","00170000":"\uad6d\ub0b4\ucd95\uad6c","00370000":"\ud574\uc678\ucd95\uad6c","00370001":"\uccbc\uc2dc","00370002":"\ud1a0\ud2b8\ub118","00370003":"\ub9e8\uc2dc\ud2f0","00370004":"\ub9ac\ubc84\ud480","00370005":"\uc544\uc2a4\ub0a0","00370006":"\ub9e8\uc720","00370008":"\uc911\ub9bd","00370010":"\ucc54\ud53c\uc5b8\uc2a4\ub9ac\uadf8","00370007":"\ubd84\ub370\uc2a4\ub9ac\uac00","00060000":"WKBL","00100000":"\ud504\ub85c\ubc30\uad6c","00190000":"\uaca9\ud22c\uae30","00570000":"\uc2a4\ud3ec\uce20\uc77c\ubc18","00570001":"\ub09a\uc2dc","00570002":"\ub2f9\uad6c","00570003":"\uc6b4\ub3d9","00570006":"\ubcfc\ub9c1","00570007":"\uace8\ud504","00570004":"\ud1a0\ud06c\/\ubd84\uc11d","00570005":"\uae30\ud0c0","00350000":"\uc560\ub2c8","00350025":"\uc6d0\ud53c\uc2a4","00350019":"\uc544\uae30\uacf5\ub8e1 \ub458\ub9ac","00350001":"\ub098\ub8e8\ud1a0","00350013":"\ube14\ub9ac\uce58","00350002":"\uba85\ud0d0\uc815 \ucf54\ub09c","00350018":"\uac80\uc815\uace0\ubb34\uc2e0","00350022":"\uba38\ud138\ub3c4\uc0ac","00350023":"\uac1c\uad6c\uc7c1\uc774 \uc2a4\uba38\ud504","00350024":"\ud615\uc0ac \uac00\uc81c\ud2b8","00350004":"\uae30\ud0c0","00030000":"\uc74c\uc545","00020000":"\uc0dd\ud65c\/\uc815\ubcf4","00020008":"\uc5ec\ud589","00020007":"\ucde8\ubbf8","00020006":"\ubdf0\ud2f0","00020009":"\ubbf8\uc220","00020004":"\uae30\ud0c0","00590000":"\ub354\ube59\/\ub77c\ub514\uc624","00290000":"\uad50\uc591\/\ud559\uc2b5","00290005":"\uc2dc\uc0ac","00290002":"\uc9c0\uc2dd","00290001":"\uc790\uc2b5","00290006":"\uc885\uad50","00270000":"\uacbd\uc81c\/\uae08\uc735","00270001":"\uad6d\ub0b4\uc8fc\uc2dd","00270002":"\uad6d\ub0b4\uc120\ubb3c","00270003":"\ud574\uc678\uc8fc\uc2dd","00270004":"\ud574\uc678\uc120\ubb3c","00270005":"\ubd80\ub3d9\uc0b0","00270006":"\uc554\ud638\ud654\ud3d0","00270007":"\uae30\ud0c0\uc815\ubcf4","00600000":"\uc74c\uc545(\uc2a4\ud2b8\ub9ac\ubc0d)","00300000":"\uc5f0\ub839\uc81c\ud55c"}');

	//변수 선언
	//if (szMode == 'picaplay' || szMode == 'dashboard')
	//기존에 requirejs내에 있엇던 선언이 있음. 모두 afreecatv.com이기때문에  if없이 걍 넣음
	window.document.domain = "afreecatv.com";

	try{
		LIVEIMG_9090 = "//liveimg.afreecatv.com";
        DOMAIN = "afreecatv.com";
	}catch(e){}

	// 국내가 아닐 때 CF로 변경
	if(szLocalCode != 'KR') {
		defaultConfig = '//static.afreecatv.com/asset/service/config/config_global.js';
		AFREECA = 'http://res-cf.afreecatv.com';
		AFREECA_SSL = "https://res-cf.afreecatv.com";
		AFREECA_AUTO = (document.location.protocol == "https:") ? AFREECA_SSL : AFREECA;
		RES_AFREECA = ((document.location.protocol == "https:") ? "https" : "http")+"://res-cf.afreecatv.com";
		STATIC_AFREECA = ((document.location.protocol == "https:") ? "https" : "http")+"://static-cf.afreecatv.com";
		STATIC_AFREECA_80 = "http://static-cf.afreecatv.com";
		LIVEIMG_9090 = 'http://liveimg-cf.afreeca.tv';
		STATION_IMG = "http://stimg-cf.afreecatv.com";
		ADMIN_IMG = "http://admin-cf.img.afreecatv.com";
	}

	$(document).ready(function() {
		livePlayer = new LivePlayer({
            isDev : isDev,
            mode : szMode,
            inflow : szInflow
        });
		liveView = new LiveView(livePlayer.externalInterface, {
            isDev : isDev,
            mode : szMode
        });

        liveView.isLoaded().then(function() {
            livePlayer.loadBroad(szBjId, nBroadNo);
		});
	});

	// if("LiveView" in window && typeof LiveView !== "undefinded") {
	// 	liveView = new LiveView.default(LivePlayer.externalInterface);
	// } else {
	// 	loadViewScript();
	// }
	function loadPlayerScript() {
        // var head = document.getElementsByTagName("head")[0];
        // var script = document.createElement("script");
        // //script.src = "//static.afreecatv.com/asset/app/html5/dist/ko_KR/LivePlayer.min.js";
        // script.onload = function() {
        //     livePlayer = new LivePlayer.default(szBjId, nBroadNo, szLang, isDev);
        // }
        // head.appendChild(script);
    }
	function loadViewScript() {
        var head = document.getElementsByTagName("head")[0];
        var script = document.createElement("script");
        script.src = "//static.afreecatv.com/asset/app/liveplayer/view/dist/ko_KR/LiveView.min.js";
        script.onload = function() {
            liveView = new LiveView(LivePlayer.externalInterface);
        }
        head.appendChild(script);
    }
</script>

	<!--
	Description  : html 플레이어
	Author : dk

	공통 관리를 위해 include 로 호출
	모든 element 수정시 플레이어 기능 영향있을수 있으므로 확인 필요
	 -->



	<!--
	player index 값 정리
	video 1
	추천방송 10
	watermark  15
	버튼 및  타이틀 20
	툴팁 30
	백그라운드 이미지 : 35
	버퍼링 및 블라인드 40
	-->



	<!--
	상황별 출력 클레스
	mouseover -> 마우스 오버 시 출력 , 스크립트 로 관리됨
	live . editor , video , offline  -> 개상황에 따른 출력 컨텐츠들을 관리하는 클레스
	 -->
<!-- 2016-1005 embed iframe video 모두 가능-->
<div class="vr_player"></div>
<div id="afreecatv_player" class="">


		<!-- 플에이어  사이즈 비율 출력 엘리먼트   -->
		<div class="afreecatv_player_size"></div>



		<!-- 비디오 영역 div 는  개발 요청으로 추가  -->
		<div id="videoLayer">
		</div>

        <div id="videoLayerCover" tabindex="1"
             style="position: absolute;top: 0;left: 0;right: 0;bottom: 0;z-index: 2; display: none;"></div>
		<!-- 워터마크 -->
		<!-- tl , tc , tr  , bl , bc , br  클레스로 포지션 지정 , 포지션 지정되지 않을시 출력되지 않음
			opacity 클레스 추가시 불투명하게 출력 -->
		<div class="watermark tl opacity" style="display:none;">afreecaTV</div>

		<!--  기본로고 출력 -->
		<div class=" default_logo">쿠프리카TV</div>

		<!-- 툴팁-->
		<div class="tooltip" style="top:50px;  left: 100px;">툴팁툴팁툴팁툴팁<em></em></div>

		<!-- body 에  embedded_mode 클레스 추가시 출력됨-->
		<!-- <h1 class="player_title"> <span></span><strong>AfreecaTV</strong> </h1> -->

		<!-- 2018-0907
			사전탐방 송출제한  엘리먼트 이동 (tuneou)   , 기본값은 none
			smode , extend_mode , 퍼가기 모드출력될 수 있도록  css 컨트로
			로고는
		-->
		<div class="player_info">
						<div id="tuneOut" class="tuneout" style=" display:none; ">
				<p>사전 협의되지 않은 탐방 및 재송출은 정중히 사절합니다.</p>
			</div>
						<div class="title"> <!-- -->
				<div>
					<span id="bjNick"></span>
					<span id="viewerCnt"><em></em></span>
				</div>
				<h1 id="broadTitle"></h1>
							</div>
		</div>

		<!-- 플레이어 컨트롤 버튼 -->
		<div class="player_ctrlBox" tabindex="1">
			<!-- <div class="ms-test-cont" style="display:inline-block;">
				<ul>
					<li class="content-type" style="display:inline-block">LIVE  </li>
					<li class="bj-nick"style="display:inline-block">뷁키 </li>
					<li class="viewer-cnt" style="display:inline-block">123 </li>
				</ul>
				<div class="broad-title">

				</div>
			</div> -->
			<div class="ctrl">
				<div class="progress" style="display: none;">
					<div class="progress_track">
						<div class="video_thumbnail time">
							<!-- <img src="http://loremflickr.com/126/69" alt=""> -->
							<span class="reverse_time"><em></em></span>
							<span class="dev_positive_time" style="bottom : 25px; display: none;"><em></em></span>
						</div>
						<div class="watched" style="width:100%;"></div>
						<button class="handler" style="left:100%;"><span></span></button>
						<div class="download" style="width:0%; display: none;"></div>
						<div class="progress_bar"></div>
					</div>
				</div>
				<!-- 타임 시프트 용 play pause 버튼 -->
				<button type="button" id="time_shift_play" class="pause" aria-label="재생" style="display: none;"></button>
				<!-- 재생버튼 stop 클레스 변경시 정지버튼으로 변경됨 -->
				<button type="button" id="play" class="play" aria-label="재생"></button>
				<!-- 볼륨 -->
				<div class="volume">
					<button type="button" class="sound" id="btn_sound">
						<span></span><span></span>
					</button>
					<div class="volume_slider_wrap">
						<div class="volume_slider">
							<div class="volume_range" style="width: 50%;"></div>
							<button class="volume_handler" style="left:50%;"></button>
						</div>
					</div>
				</div>
				<button type="button" id="liveButton" class="live_state" style="display: block;"><em></em><span>LIVE</span></button>

			</div>

			<div class="right_ctrl">

				<!-- 임베디드 아프리카티비 바로가기 -->
				<!--<button type="button" class="btn_afreecatv">아프리카 티비에서 보기</button>-->

                <!-- 플레이어 타입 관련 셋팅버튼 -->
    			<div class="setting_box" style="display:none;">
    				<button type="button" class="btn_setting">
    					setting
    					<div class="tooltip" style="display: none;"><span>설정</span><em></em></div>
    				</button>
    				<div>
    					<strong>플레이어 타입</strong><a href="http://sotong.afreecatv.com/?board_type=help&work=view&b_no=11443" target="_blank">플레이어 타입 안내 링크</a>
    					<p>타입 변경 시 시청 중인 방송에 <br> 재입장합니다.</p>
    					<button type="button" class="btn_player_select">HTM5<em></em></button>
    					<ul>
    						<li><button type="button" class="html5">HTML5</button></li>
    						<li><button type="button" class="flash">FLASH</button></li>
    					</ul>
    				</div>
    			</div>

                <!-- 임베디드 공유하기 -->
                <button type="button" class="btn_share"></button>

				<!-- 화질선택 임베디드는 미노출 -->
				<div class="quality_box">
					<button type="button" class="btn_quality_mode"><span>일반화질</span></button>
					<ul>
						<li><button type="button" class="high_quality"><span>원본화질</span></button></li>
						<li><button type="button" class="hd_quality"><span>일반화질</span></button></li>
						<li><button type="button" class="low_quality"><span>저화질</span></button></li>
					</ul>
				</div>

				<!-- PIP -->
				<button type="button" class="btn_pip_mode" style="display: none;">
					<div class="tooltip"><span>PIP 모드(P)</span><em></em></div>
				</button>

				<!-- 씨네마 -->
				<button type="button" class="btn_smode">
					<!-- 툴팁 2016-0923--><div class="tooltip"><span>스크린모드(S)</span><em></em></div>
				</button>
				<!-- 전체모드 클레스 추가시 버튼형태 변경 -->
				<button type="button" class="btn_extend_mode">
					<div class="tooltip"><span>전체화면(F)</span><em></em></div>
				</button>

			</div>

		</div>

		<div class="center_btn" style="display: none;">
			<button type="button" class="btn_cneter_play" style="display: none;"><span>PLAY</span></button>

			<div class="volume_icon"  style="display: none;"><span></span><span></span><span></span><span></span><span></span></div>
		</div>

        <!-- 5초 앞,뒤로 이벤트 -->
        <div class="center_msg" style="display: none;"><span>5초</span></div>

        <div class="nextvideo" id="stop_screen">
            <dl>
                <dt class="tit">다음 VOD</dt>
                <dd class="stit">title</dd>
                <dd class="nextplay"><a href="#n">VOD 보기</a></dd>
            </dl>
            <em class="cancel"><a href="#n">자동재생 취소</a></em>
            <span class="timer"><em></em> 후 자동재생</span>
            <span class="bg"></span>
        </div>

		<!-- 화면 블라인드 상태 -->
		<!-- <div class="video_blind"> -->
		<div class="video_blind" style="display:none;">
			<div class="video_blind_in">
				<div class="content">
					
						<!-- PPV 방송  -->
						<div class="dialog type_ppv_not_allow" style="display:none;">
							<p>본 방송은 티켓 구매 후 시청가능 합니다.</p>
							<div class="btn_set">
								<button type="button" class="enter"><span>확인</span></button>
							</div>
						</div>

						<div class="dialog type_ppv_not_login" style="display:none;">
							<p>본 방송은 로그인이 필요한 서비스 입니다.</p>
							<div class="btn_set">
								<button type="button" class="enter"><span>로그인</span></button>
							</div>
						</div>
						<!-- //PPV 방송 -->

					<!-- 성인 -->
					<div class="dialog type_adult" style="display:none;">
						<h2>19</h2>
						<p>이 정보내용은 청소년 유해매체물로서 정보통신망<br> 이용촉진 및 정보보호등에 관한 법률 및 청소년 보호법의 규정에<br> 의하여 만 19세 미만의 청소년이 이용할 수 없습니다</p>
						<div class="btn_set">
							<button type="button" class="enter"><span>들어가기</span></button> <button type="button" class="close"><span>되돌아가기</span></button>
						</div>
					</div>
					<!-- //성인 -->

					<div class="dialog type_maxuser" style="display:none;">
                        <h2>시청 가능한 인원이 초과되었습니다.<br>잠시 후 입장해 주세요.</h2>
                        <p class="txt">Full방에 바로 입장이 가능한 퀵뷰 아이템 구매페이지로 이동하시겠습니까?</p>
                        <p class="txt_desc" style="display:none">퀵뷰 아이템을 사용 중인 경우, 로그인을 하시면 바로 시청하실 수 있습니다.</p>
                        <div class="btn_set">
                            <button type="button" class="enter"><span>예</span></button>
                            <button type="button" class="close" style="display:none"><span>로그인</span></button>
                        </div>
                    </div>
					
					<div class="dialog type_adult_lock" style="display:none;">
						<h2><span class="adult">19</span><span class="lock">lock</span></h2>
						<p>이 방송은 BJ가 만 19세 미만 시청을 <br> 제한한 방송이며 비밀번호가 설정되어 있습니다.</p>
					</div>

					<!-- 무중단 -->
					<div class="dialog type_continue" style="display:none;">
						<h2>앗, 잠깐만 기다려주세요</h2>
						<p class="txt">방송이 잠시 중단되었습니다.</p>
                        <p class="txt_desc">대기 시간 내에 BJ님이 재접속하면 방송이 다시 시작됩니다.</p>
						<span>대기시간 <em>00:00</em></span>
					</div>
					<!-- //무중단 -->

					<!-- 비번방 -->
					<div class="dialog type_password" style="display:none;">
						<h2>비밀번호 설정 방송</h2>
						<p>방송을 보려면 BJ가 정해놓은 비밀번호를 입력해야 합니다.</p>
						<div><label for="pwd">비밀번호</label><input type="password" id="pwd"></div>
						<p class="red" style="display:none;">비밀번호가 일치하지 않습니다.</p>
						<div class="btn_set">
							<button type="button" class="enter"><span>들어가기</span></button> <button type="button" class="close"><span>되돌아가기</span></button>
						</div>
					</div>
					<!-- //비번방 -->

					<!-- 블라인드 -->
					<div class="dialog type_blind" style="display:none;">
						<h2>BLIND</h2>
						<strong>채팅금지 횟수 초과로 인해 <span>2</span>분간 블라인드 처리됩니다.</strong>
						<p>블라인드 상태에서는 화면과 채팅이 보이지 않으며 <br> 블라인드 상태로 방송에서 나갈 경우 <br> 자동 강제퇴장 처리되며 재입장이 불가능합니다.</p>
					</div>
					<!-- //블라인드 -->

					<!-- 방송종료  -->
					<div class="dialog type_end" style="display:none;"><h2>방송 중이지 않습니다.</h2></div>
					<!-- //방송종료  -->

					<div class="dialog type_mobile_pause" style="display:none;">
						<h2>BJ가 방송을 일시정지 하였습니다.</h2>
						<p>다시 시작할때까지 잠시만 기다려 주세요</p>
					</div>


					<!-- 공통케이스 -->
					<div class="dialog type_common" style="display:none;">
						<!--p><span class="blue">DARgooni</span>에 의해 강제 퇴장되었습니다.</p>
						<p>운영자에 의해 강제 퇴장되었습니다.</p>
						<p>BJ에 의해 강제 퇴장되었습니다.</p>
						<p>운영자에 의해 방송이 종료되었습니다.</p>
						<p>동일한 방송을 여러 개 시청하실 수 없습니다. <br><strong>해당 방송은 이미 시청 중입니다.</strong></p>
						<p>BJ에 의해 블랙리스트로 등록되어 방송을 시청할 수 없습니다.</p>
						<p>아프리카TV 운영원칙 위반으로 서비스 이용이 정지되었습니다.</p>
						<p>정상적인 접근이 아니므로 방송을 시청할 수 없습니다.</p>
						<p>해외 지역 제한 서비스입니다.</p>
						<p><strong>[AfreecaTV 서비스 점검] </strong><br><span>2016년 8월 13일(수) 03:00~08:00</span> 까지 서비스 점검 중 입니다.</p-->
					</div>
					<!-- //공통케이스 -->
				</div>
			</div>
		</div>
		<!-- 크롬 브라우저 설치 유도 -->
		<div class="ui-pop chrome_install" style="display:none">
			<div class="pop-body">
				<strong>Chrome 브라우저로 시청해 보세요!</strong>
				<p>
					최신 버전의 Chrome 브라우저를 이용하시면<br>보다 안정적인 시청을 지원하는 HTML5 플레이어로<br>방송을 보실 수 있습니다.				</p>
				<a href="https://www.google.com/chrome" target="_blank" class="btn_download">Chrome 브라우저 다운로드</a>
			</div>
			<div class="chk-box">
				<input type="checkbox" name="" id="chk1">
				<label for="chk1">30일간 열지 않기</label>
			</div>
			<a href="javascript:;" class="pop-close"><span>레이어 닫기</span></a>
		</div>

		<!-- 로딩바 -->
		<div class="loading" style="display: none;"><span></span></div>
		<!-- //로딩바 -->
		<!-- 버퍼링 바 -->
		<div class="buffering" style="display: none;"><span></span></div>
		<!-- //버퍼링 바 -->

		<!-- 광고영역 -->
		<!-- 2016-1007 -->
		<div class="promotion_area" style="display:none;"><a href="javascript:;" ></a></div>
        <button type="button" style="display:none;" class="promotion_area_left"  id="promotion_btn_click"><span>CLICK</span><em>-00:00</em></button>
        <button type="button" style="display:none;" class="promotion_area_right" id="promotion_btn_skip"><em>00</em><span>초 후 광고 SKIP</span></button>
		        <div id="tuneOut" class="tuneout" style="display:none;">
			<p>사전 협의되지 않은 탐방 및 재송출은 정중히 사절합니다.</p>
		</div>
		
		<!--160713-->
		<div class="item_ten" style="display: none;">
			<div class="blind">불타는 텐미닛</div>
			<div class="min">1</div>
			<div class="min2"><strong>1</strong> 초 후 자동으로 UP합니다.</div>
			<button type="button" class="btn_up"><span class="blind">바로UP</span></button>
			<button type="button" class="btn_next"><span class="blind">다음 기회에</span></button>
			<button type="button" class="btn_close"><span class="blind">닫기</span></button>
		</div>
		<!--//160713-->

		<!--adcon-->
		<div class="adballoon_icon" style="display: none; z-index:999;">
			<a href="javascript:;" class="adcon-area" style="z-index:999;">
				<span class="thumb"><img src="" ></span>
				<span class="con_desc">
					<span class="area">
						<em class="con_tit">ADCON</em>
						<span class="con_stit">BJ가 선택한 ADCON 클릭</span>
					</span>
				</span>
			</a>
			<button type="button" class="adballoon_close"><span></span></button>
		</div>
		<!--//adcon-->

        		<!-- 채팅창 열기 -->
		<div class="smode_chatbtn" style="display:none;"><a href="javascript:;">채팅창 열기</a></div>
		<!-- //채팅창 열기 -->
        </div>

						<div class="player_item_list on preroll">
							<div class="text_output"> <p></p> </div>  <!-- 추가  2018-0803-->
							<ul>
								<!-- button에 off 클레스 추가 시 클릭안되는 상태  -->
								<!-- 2019-0611 button  에 title 값 tip로 변경 , 디자인 툴팁 출력  -->
								<li class="multi" style="display:none;"><button type="button" tip="멀티"><em></em><span>멀티</span></button></li>
								<li class="vr" style="display:none;"><button type="button" tip="VR"><em></em><span>VR시작</span></button></li>
								<li class="shopping" style="display:none;"><button type="button" tip="쇼핑"><em></em><span>쇼핑</span></button></li>
								<li class="count_vote" style="display:none;"><button type="button" tip="투표집계"><em></em><span>투표집계</span></button></li>
								<li class="vote_result" style="display:none;"><button type="button" tip="투표결과"><em></em><span>투표결과</span></button></li>
								<li class="vote" style="display:none;"><button type="button" tip="투표하기"><em></em><span>투표하기</span></button></li>
								<li class="subscribe" style="display:none;">
									<button type="button"><em></em><span>구독하기</span></button>
									<div class="tooltip_bx">
										<em></em>
										<div class="subscribe_info">
											<span class="icon"></span>
											<p>지금 이 <span class='cr01'>BJ 후원</span>하고<br><span class='cr02'>본방입장+퍼스나콘 혜택</span>까지!?</p>
										</div>
									</div>
								</li>
								<li class="star_balloon"><button type="button" tip="별풍선"><em></em><span>별풍선</span></button></li>
								<li class="adballoon"><button type="button" id="btnGiftAdBalloon" tip="애드벌룬" ><em></em><span>애드벌룬</span></button></li>
								<li class="sticker"><button type="button" tip="스티커"><em></em><span>스티커</span></button></li>
								<li class="chocolate"><button type="button" tip="초콜릿"><em></em><span>초콜릿</span></button></li>
								<li class="edit_angle" style="display: none;"><button data-target="edit_angle" type="button" tip="편집각"><em></em><span>편집각</span></button></li>
								<li class="honey_fun"><button data-target="honey_fun_text" type="button" tip="꿀잼각"><em></em><span>꿀잼각</span></button></li>
								<li class="user_clip">
									<button type="button"><em></em><span>유저 클립</span></button>
									<div class="item_list_layer">
										<em class="ic_userclip"></em>
										<strong>누구나 만들 수 있는 유저클립!</strong>
										<p>지금 보고 계신 장면을 누구나<br>바로 클립으로 만드실 수 있습니다.</p>
										<a href="javascript:;" class="close">닫기</a>
									</div>
									<div class="item_list_layer tooltip">
										<em class="ic_userclip"></em>
										<p>지금 보고 계신 장면을 누구나<br>바로 클립으로 만드실 수 있습니다.</p>
									</div>
								</li>
								<li class="laterwatch"><button data-target="laterwatch_text" type="button" tip="나중에보기"><em></em><span>나중에보기</span></button></li>
								<li class="bookmark" ><button data-target="bookmark_text" type="text" tip="즐겨찾기"><em></em><span>즐겨찾기</span></button></li>
								<li class="up_recommend" ><button data-target="up_text" type="text" tip="UP"><em></em><span>UP</span></button></li>
								<li class="share" ><button type="button" tip="공유하기"><em></em><span>공유하기</span></button></li>
							</ul>

							<div class="layer_tooltip">
								<p class="error_text" style="display:none;"><em></em>본인을 즐겨찾기 할 수 없습니다. <br/> 다른 BJ를 즐겨찾기 해주세요.</p>
								<p class="up_text" style="display:none;"><em></em><span>닉네임</span>님을 UP 하였습니다. <br/>UP은 하루에 한번씩!</p>
								<p class="bookmark_text" style="display:none;"></p>
								<p class="honey_fun_text" style="display:none;"><em></em>꿀잼각으로 선정하였습니다.</p>
								<p class="laterwatch_text" style="display: none;"></p>
								<p class="edit_angle_text" style="display:none"></p>
								<p class="time_shift_text alert_text" style="display:none;"><em></em>퀵뷰 사용 시 타임머신 기능을<br>이용할 수 있는 공식 방송입니다.</p>
								<!-- <p class="bookmark_text">이미 즐겨찾기 하신 방송입니다. <br/> 자주 시청해 주세요~</p> -->
								<!-- <p class="honey_fun_text" style="display: block;"><em></em>지금이 꿀잼타이밍이라면? 꿀잼각 버튼을 눌러주세요~.</p> -->
								<!-- <p class="up_text"><em></em>이미 UP한 BJ입니다. <br/> 내일 또 UP해주세요.^^</p> -->
								<!-- <p class="error_text"><em></em>즐겨찾기는 500개까지 추가 가능합니다. <br/> 즐겨찾기 정리 후 추가해주세요.</p> -->
								<!-- <p class="error_text"><em></em>일시적인 문제로 UP을 실패하였습니다. <br/>잠시 후 다시 시도해 주세요.</p> -->
								<!-- <p class="error_text"><em></em>본인을 UP 할 수 없습니다. <br/>다른 BJ를 추천해주세요.</p> -->
								<!-- <p class="error_text"><em></em>본인의 방송은 꿀잼각으로 선정할 수 없습니다.</p> -->
								<!-- <p class="error_text"><em></em><i>1</i>초 후에 다시 시도할 수 있습니다.</p> -->
								<!-- <p class="error_text" style="display:none;"><em></em>1080p 방송 시청이 원활하지 않을 경우<br/> 일반화질로 변경해보세요.</p> -->
								<!-- <p class="error_text" style="display:block"><em></em>멀티 효과가 적용되었습니다.<br>화면 왼쪽에서 원하는 화면을 선택하세요.</p> -->
								<!-- <p class="error_text"><em></em>BJ가 타임머신 기능이 지원되지<br/>않는 방송 옵션을 사용하여<br/>타임머신 기능을 제공하지 못합니다.</p> -->
							</div>
						</div>
					</div>
				</div>
				<!-- //htmlplayer_wrap -->
				<!-- broadcast_information -->
				<div class="broadcast_information">
					<input type="hidden" id="szBjId" value="lshooooo" />
					<input type="hidden" id="nStationNo" value="7301897" />
					<div class="bj_thumbnail">
						<a href="../shop/index.shop" target="_blank" title="방송국 가기">
							<img src="//res.afreecatv.com/images/afmain/img_thumb_profile.gif" onerror="this.src='//res.afreecatv.com/images/afmain/img_thumb_profile.gif'" alt="BJ 로고" class="thum">
							<p><span>방송국<br />가기</span></p>
						</a>
					</div>
					<div class="text_information">
						<div class="nickname">BJ아이디</div>
						<div class="broadcast_viewer_cnt">
							<span><em id="nAllViewer">0</em></span>
							<div class="viewer_cnt_detail">
								<strong>현재 시청자수</strong>
								<ul>
									<li>
										<i></i><span>본방</span>:<span id="nCurrentViewer">0</span>
										(<div><i></i><span>PC</span>:<span id="nPcViewer">0</span></div>/
										<div><i></i><span>MOBILE</span>:<span id="nMobileViewer">0</span></div>)
									</li>
									<li><i></i><span>중계방</span>:<span id="nRelayViewer">0</span></li>
									<li><i></i><span>누적 시청자 수</span>:<span id="nTotalViewer">0</span></li>
								</ul>
							</div>
						</div>
						<div class="btn_bjaward_poll" style="display:none;">
							<button type="button" class="btn_bjpoll">BJ대상 투표</button>
						</div>
						
						<div class="broadcast_title">
							<div class="btn_shopping" style="display:none;">
								<a href="#n">구매버튼</a>
								<div class="layer_shopping">
									<div>
										판매 수익은 방송중인<br><em class="nick">BJ아이디</em> 님과 공유됩니다.									</div>
									<button href="#n" class="close">닫기</button>
									<span class="arr"></span>
								</div>
							</div>
							<span>[생]제목제목제목제목제목</span>
						</div>
						<div class="hashtag" id="hashtag"></div>
						<div class="etc">
							<ul>
								<li class="up_cnt"><em>up</em><span class="count">0</span></li>
								<li class="boomark_cnt"><em>즐겨찾기</em><span class="count">0</span></li>
								<li class="detail"><button class="on">방송정보</button></li>
								<li class="gamebuy" style="display:none"><a href="javascript:;">상품구매</a></li>
							</ul>
						</div>
						<ul class="detail_view" style="display:block;">
							<li><strong>방송시작시간</strong><span>2020-01-07 17:59:21</span></li>
							<li><strong>해상도</strong><span>1920X1080</span></li>
							<li><strong>화질</strong><span>8000K</span></li>
							<li><strong>카테고리</strong><span></span></li>
							<li><strong>방송국</strong><span><a href="#" target="_blank">AfreecaTV</a></span></li>
						</ul>
					</div>
				</div>
				<!-- //broadcast_information -->
			</div>
			<!-- //player_area -->
			<!-- 채팅영역 chatting_area-->
			<div id="chatting_area" class="">
				<!-- chatbox -->
				<div id="chatbox" class="chatbox">
					<div class="area_header">
						<h2>
							<span>채팅</span>
							<a href="javascript:;" id="chatbox_btn_org" style="display:none">본방입장</a>
						</h2>
						<!-- 세팅 버튼들 -->
						<ul id="btnset">
							<li id="setbox_chatnotice" class="c-notice" style="display:none;">
								<a href="javascript:;" class="" tip="BJ 공지">BJ 공지</a>
							</li>
							<li id="setbox_mchat" class="mchat" style="display:none;">
								<a href="javascript:;" class="off" tip="매니저 채팅">매니저 채팅</a>
							</li>
							<li id="setbox_kicklist" class="c-out" style="display:none;">
								<a href="javascript:;" class="off" tip="강제퇴장인원">강제퇴장인원</a>
							</li>
							<li id="setbox_ice" class="ice" style="display:none;">
								<a href="javascript:;" class="freeze" tip="얼리기">얼리기</a>
							</li>
							<li id="setbox_viewer" class="viewer">
								<a href="javascript:;" class="off" tip="채팅참여인원">채팅참여인원</a>
							</li><!-- 활성화  class="on" 추가 -->
							<li id="setbox_set" class="set">
								<a href="javascript:;" class="off" tip="설정">설정</a>
							</li>
							<li id="setbox_close" class="close">
								<a href="javascript:;" class="tip-right" tip="채팅영역 숨기기">채팅영역 숨기기</a>
							</li>
						</ul>
						<!-- //세팅 버튼들 -->
						<!-- idsearch 2015-07-31 추가 -->
						<div id="idsearch" class="idsearch" style="display:none;">
							<input type="text" id="searchId" class="input_text" title="아이디" placeholder="아이디" />
							<!-- SORT -->
							<div class="sel"><!-- 1개나 첫번째엔 first 추가 -->
								<a href="javascript:;" id="selChatOpt">채팅금지</a>
								<ul id="selChatOptList" style="display: none;">
									<li><a href="javascript:;">채팅금지</a></li>
									<li><a href="javascript:;">강제퇴장</a></li>
									<!-- <li><a href="javascript:;">블랙리스트 추가</a></li> -->
									<li><a href="javascript:;">매니저 임명/해임</a></li>
								</ul>
							</div>
							<!-- //SORT -->
							<a id="applyChatOpt" href="javascript:;" class="btn_apply">적용</a>
						</div>
						<!-- //idsearch -->
						<!-- 채팅 공지 -->
						<div class="chat_notice "> <!-- 클래스 open 추가 공지 열기 -->
							<span class="ico new"><em></em></span> <!-- 새 공지 작성시 new 클래스 추가 -->
							<div class="msg">
								<p>BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인BJ가 작성한 공지의 첫번째 텍스트 라인</p>
							</div>
							<a href="javascript:;" class="btn_chat_notice"><span>채팅 공지 열고 닫기</span></a>
						</div>
						<!-- //채팅 공지 -->
					</div>

					<!-- 레이어_시청자리스트 -->
					<div id="wrap_lv" class="wrap_lv" style="display:none;">
						<h2 class="blind">시청자리스트</h2>
						<div id="list_viewer" class="list_viewer">
							<h3 id="lv_h3_bj" style="display:none"><strong>BJ</strong></h3>
							<p  id="lv_p_bj" style="display:none" class="bj_info man"></p>

							<h3 id="lv_h3_manager" style="display:none">매니저</h3>
							<ul id="lv_ul_manager" style="display:none" class="vlist"></ul>

							<h3 id="lv_h3_topfan" style="display:none">열혈팬</h3>
							<ul id="lv_ul_topfan" style="display:none" class="vlist"></ul>

							<h3 id="lv_h3_gudok" style="display:none">구독자</h3>
							<ul id="lv_ul_gudok" style="display:none" class="vlist"></ul>

							<h3 id="lv_h3_fan" style="display:none">팬</h3>
							<ul id="lv_ul_fan" style="display:none" class="vlist"></ul>

							<h3 id="lv_h3_supporter" style="display:none">서포터</h3>
							<ul id="lv_ul_supporter" style="display:none" class="vlist"></ul>

							<h3 id="lv_h3_user" style="display:none">일반 시청자</h3>
							<ul id="lv_ul_user" style="display:none" class="vlist"></ul>
							<!-- //로딩 -->
							<div id="list_viewer_loading" class="loading" style="display:none">loading</div>
						</div>

						<!-- 리스트열기 -->
						<!-- 펼침버튼_전 -->
						<div id="toggle_op" class="toggle_op">
							<a href="javascript:;" class="btn_toggle_op"><span>리스트 열기</span></a>
							<div id="t_big" class="tooltip t_big"><div class="tipcont">크게보기</div></div>
						</div>
						<!-- //펼침버튼_전 -->
						<!-- 펼침버튼_후 -->
						<div id="toggle_cs" class="toggle_cs">
							<a href="javascript:;" class="btn_toggle_cs"><span>리스트 열기</span></a>
							<div id="t_small" class="tooltip t_small"><div class="tipcont">작게보기</div></div>
						</div>
						<!-- //펼침버튼_후 -->
						<!-- //리스트열기 -->
					</div>
					<!-- //레이어_시청자리스트 -->

					<!-- 레이어_설정 -->
					<div id="wrap_st" class="wrap_st" style="display: none;">
						<div class="list_setting">
							<h2 class="blind">설정</h2>
							<ul class="list_st1">
								<li id="st1_emoticon"><input type="checkbox" id="setting1" name="setting" checked> <label for="setting1">이모티콘 보기</label></li>
								<li id="st1_ogq"><input type="checkbox" id="setting7" name="setting"> <label for="setting7">이모티콘 작게보기</label></li>
								<li id="st1_joinout"><input type="checkbox" id="setting2" name="setting"> <label for="setting2">시청자 출입 표시</label></li>
								<!--나중에 추가된거라 setting6-->
								<li id="st1_ban_msg" style="display:none"><input type="checkbox" id="setting6" name="setting" style="vertical-align:super"> <label for="setting6" style="display:inline-block">강제퇴장메시지<br/>시청자에게 보이기</label></li>
								<li id="st1_whisper"><input type="checkbox" id="setting3" name="setting" checked> <label for="setting3">귓속말 수신 허용</label></li>
								<li id="st1_trans" style="display: none;"><input type="checkbox" id="setting4" name="setting" checked> <label for="setting4">해외 언어 번역</label></li>
								<li id="st1_fanchatcolor"><input type="checkbox" id="setting5" name="setting" checked> <label for="setting5">팬채팅 색상 사용</label></li>
							</ul>
							<ul class="list_st2">
								<!-- li class="li_chat_popout"><a href="javascript:;">채팅창 분리하기</a></li -->
								<li id="li_nick_change" class="li_nick_change"><a href="javascript:;"><em>닉네임 변경</em></a></li>
								<li id="li_subscription_nick_change" class="li_nick_change" style="display:none;"><a href="javascript:;"><em>구독 닉네임 변경</em></a></li>
								<li id="li_chat_memodel"  class="li_chat_memodel"><a href="javascript:;"><em>채팅 지우기</em></a></li>
								<li id="li_relay_broad_manage"  class="li_relay_broad_manage" style="display:none;"><a href="javascript:;"><em>중계방 관리</em></a></li>
								<!-- <li class="li_help"><a href="javascript:;">도움말</a></li> -->
							</ul>
						</div>
						<span class="kko"></span>
					</div>
					<!-- //레이어_설정 -->

					<!-- 2018-0118 채팅 하단 이동 버튼 추가 -->
					<div class="chat_scroll_down">
						<button type="button">채팅 아래로 스크롤</button>
					</div>
					<!-- //2018-0118 채팅 하단 이동 버튼 추가 -->
					<!-- 2019-1202  on 클레스 추가시 출력  -->
					<div class="emoticon_output">
						<button type="button" class="btn_output"><img src="" onerror="this.src='//res.afreecatv.com/images/chat/ogq_default.png'" alt=""></button>
						<button type="button" class="close"><span>닫기</span></button>
					</div>
					<!-- actionbox -->
					<div id="actionbox" class="actionbox">
						<!-- 버튼들 -->
						<ul id="ul1" class="ul1">
							<li id="btn_emo" class="emo first off"><a href="javascript:;" tip="이모티콘">이모티콘</a><span class="emo_tiplayer" id="emoLayer" style="display:none;"><em class="txt">기본/구독 이모티콘은 한번에 3개까지만 사용이 가능합니다.</em><span class="icon"></span><button type="button" class="close">닫기</button></span></li><!-- 활성화  class="on" 추가 -->
							<li id="btn_police" class="police off"><a href="javascript:;" tip="신고">신고</a></li>
							<li id="btn_translation" class="translation" style="display:none;"><em></em><a href="#n" tip="번역">번역</a></li>
						</ul>
						<ul id="ul2" class="ul2">
							<li id="btn_star" class="star off"><a href="javascript:;" tip="별풍선 선물하기">별풍선 선물하기</a></li>
							<li id="btn_adballoon" class="adballoon off"><a href="javascript:;" tip="애드벌룬 선물하기">애드벌룬 선물하기</a></li>
							<li id="btn_sticker" class="sticker off"><a href="javascript:;" tip="스티커 선물하기">스티커 선물하기</a></li>
							<li id="btn_choco" class="choco off"><a href="javascript:;" tip="초콜릿  선물하기">초콜릿  선물하기</a></li>
						</ul>
						<!-- //버튼들 -->
						<div class="translation_select">
							<div class="translation_select_con">
								<div class="select_btn off"> <!-- on off 로 리스트 출력 -->
									<a href="#n"><span id="trans_selected_lang" data="zh_CN" langCode="4">중국어 간체</span><em></em></a>
									<ul>
										<li class="translation_lang"><a href="#n" data="zh_CN" langCode="4">중국어 간체</a></li>
										<li class="translation_lang"><a href="#n" data="zh_TW" langCode="5">중국어 번체</a></li>
																				<li class="translation_lang"><a href="#n" data="ja_JP" langCode="2">일본어</a></li>
										<li class="translation_lang"><a href="#n" data="en_US" langCode="1">영어</a></li>
										<li class="translation_lang"><a href="#n" data="th_TH" langCode="6">태국어</a></li>
									</ul>
								</div><span>로</span><button type="button" id="trans_submit">번역</button>
							</div>
						</div>
						<!-- chat_write -->
						<div id="chat_write" class="chat_write">
							<h3>채팅쓰기</h3>
							<div class="ad_toggle">
									<span class="blue">
										<input id="manage" type="radio" name="managerchat" checked="checked" class="on" data-message-type="1">
										<label for="manage" class="on">운영</label>
									</span>
								<span class="red">
										<input id="warning" type="radio" name="managerchat" data-message-type="2">
										<label for="warning">경고</label>
									</span>
							</div>
							<div id="write_area" class="write_area" contenteditable="true" ondragenter="return false;" ondrop="return false;" ondragover="return false;" placeholder="채팅 입력 (C)"></div>
						<button type="button" id="btn_send" class="btn_send" title="보내기">보내기</button>
					</div>
					<!-- //chat_write -->
					<!-- vote button -->
					<div class="poll_layer" id="layer_poll">
						<!-- <a href="javascript:;" class="poll"><span>투표하기</span>새 투표가 시작되었습니다.</a>
            <a href="#" class="poll_end"><span>투표 마감</span>투표가 마감되었습니다.</a>//
            <a href="#" class="poll_result"><span>투표 결과</span>투표결과가 발표되었습니다.</a>//
            <button type="button" class="btn_close" onclick="document.getElementById('layer_poll').style.display='none'"><span class="blind">닫기</span></button> -->
					</div>
					<!-- //vote button -->
				</div>
				<!-- //actionbox -->

				<!-- 레이어_이모티콘 2015-09-07 추가 -->
				<div id="emoticonArea">
					<div id="emoticonBox" class="ogq">
						<div class="tab_area">
							<ul>
								<li><a href="javascript:;">이모티콘</a></li>
							</ul>
							<div class="item_list">
								<button class="prev off">이전</button> <!-- off 클레스로 비활성화  -->
								<div>
									<ul>
										<li data-type="SUBSCRIPTION"><button type="button"><img src="//res.afreecatv.com/images/webplayer/chat/icon_small1.png" alt="구독"></button></li>
										<li class="on" data-type="DEFAULT"><button type="button"><img src="//res.afreecatv.com/images/webplayer/chat/icon_small2.png" alt="AF기본"></button></li>
									</ul>
								</div>
								<button class="next off">다음</button> <!-- off 클레스로 비활성화  -->
							</div>
						</div>
						<div class="scroll_area subscription_emoticon" style="display: none;">
							<div class="sg_area"></div>
						</div>
						<div class="scroll_area common_emoticon"></div>
						<div class="btn_close"><a href="javascript:;" title="닫기">닫기</a></div>
					</div>
				</div>
				<!-- //레이어_이모티콘 -->

				<div id="chat_area" class="chat_area"></div>
				<!-- //chat_area -->

				<!-- 광고배너 ti_wrap3 플래시 채팅창TI 214*400px 2015-11-19 추가 -->
				<div id="chat_ad" class="chat_banner" style="display:none;"><div class="ti_in">
						<a href="#" target="_blank"><img src=""></a>
						<a href="javascript:;" onclick="document.getElementById('chat_ad').style.display='none';"><img src="//res.afreecatv.com/new_player/img/btn_adclose.png" class="btn_close" alt="닫기"></a>
					</div></div>
				<!-- //광고배너 ti_wrap3 -->
			</div>
			<!-- //chatbox -->

		</div>
		<!-- //채팅영역 chatting_area-->
		<!-- 영상리스트 영역 list_area-->
		<div id="list_area" class="list_area">
			<div class="area_header">
				<h2><span>리스트</span></h2>
				<ul>
					<li class="refresh"><a href="#n">새로고침</a></li>
					<li class="close"><a href="#n">닫기</a></li>
				</ul>
				<ul id="tabSearchItemTab" class="list_tab" style="display:none;">
					<li class="on" id="searchAll" data-type="searchAll"><a href="#n">통합검색</a></li>
					<li id="searchBroad" data-type="searchBroad"><a href="#n">생방송</a></li>
					<li id="searchVod" data-type="searchVod"><a href="#n">VOD</a></li>
					<li id="searchClose" class="close"><a href="#n">검색 닫기</a></li>
				</ul>
			</div>
			<div class="loading">loading</div>
			<div class="list_contents randomBtn_add" id="tabList">
				<div class="bjvod">
				</div>
				<div class="recom">
				</div>
				<div class="curation">
				</div>
				<!-- LIST SECTION TEMPLETE-->
				<dl class="section_templete" style="display:none">
					<dt><h3 class="section_title">BJ아이디의 VOD</h3></dt>
					<dd>
						<ul class="contents_list">
						</ul>
					</dd>
				</dl>
				<!-- //LIST SECTION TEMPLETE-->
			</div>
			<div class="list_contents" id="tabSearch" style="display:none;">

				<div class="list_contents_item" id="tabSearchItemSel">
					<div class="select_box" id="selLiveSearch1">
						<a class="selected" href="#n" data="">정확도 순</a>
						<ul>
							<li><a href="javascript:;" data="rank">BJ 랭킹 순</a></li>
							<li><a href="javascript:;" data="pc_total_view_cnt">시청인원 순</a></li>
							<li><a href="javascript:;" data="broad_start">최신 순</a></li>
							<li><a href="javascript:;" data="broad_bps">고화질 순</a></li>
							<li><a href="javascript:;" data="broad_resolution">고해상도 순</a></li>
							<li><a href="javascript:;" data="">정확도 순</a></li>
						</ul>
					</div>
					<div class="select_box" id="selVodSearch1">
						<a class="selected" href="#n" data="ALL">전체</a>
						<ul>
							<li><a href="javascript:;" data="ALL">전체</a></li>
							<li><a href="javascript:;" data="REVIEW">방송 다시보기</a></li>
							<li><a href="javascript:;" data="HIGHLIGHT">방송 하이라이트</a></li>
							<li><a href="javascript:;" data="NORMAL">일반 VOD</a></li>
							<li><a href="javascript:;" data="CLIP">유저 클립</a></li>
						</ul>
					</div>
					<div class="select_box" id="selVodSearch2">
						<a class="selected" href="#n" data="">정확도 순</a>
						<ul>
							<li><a href="javascript:;" data="">정확도 순</a></li>
							<li><a href="javascript:;" data="reg_datetime">최신 순</a></li>
							<li><a href="javascript:;" data="view_cnt">누적시청자 순</a></li>
						</ul>
					</div>
					<div class="select_box" id="selVodSearch3">
						<a class="selected" href="#n" data="1year">1년</a>
						<ul>
							<li><a href="javascript:;" data="">전체</a></li>
							<li><a href="javascript:;" data="1day">1일</a></li>
							<li><a href="javascript:;" data="1week">1주</a></li>
							<li><a href="javascript:;" data="1month">1개월</a></li>
							<li><a href="javascript:;" data="1year">1년</a></li>
						</ul>
					</div>
				</div>
				<p class="no_result" style="display:none;"> 입력하신 검색어 <span></span>에 대한 <br> 검색 결과가 없습니다. </p>
				<dl class="search_templete" style="display:none">
					<dt class="section_title"><h3><em></em>생방송 검색결과 <span>86건</span></h3><a href="#n">더보기</a></dt>
					<dd>
						<ul class="contents_list">
						</ul>
					</dd>
				</dl>
				<div class="paging" style="display:none;">
				</div>
			</div>
			<!-- 2016-0919 생방송일때만 출력 -->
			<div class="random_broadcast" id="btn_random_broad_frame">
				<a href="javascript:;" id="btn_random_broad_view" class="btn_random">랜덤으로 방송입장</a>
				<a href="javascript:;" id="btn_random_broad_setting" class="btn_random_setting"> <span class="blind">환경설정</span> </a>
				<!-- <div class="icon_new" style=""> <span class="blind">new</span></div> -->
			</div>
		</div>
		<!-- //영상리스트 영역 list_area-->
		<!-- 즐겨찾기리스트 영역 list_bookmark_area-->
		<div id="list_bookmark_area" class="list_area seach_view">
			<div class="area_header">
				<h2><span>즐겨찾기</span></h2>
				<!-- 2019-0611 -->
				<ul class="list_tab">
					<li data-type="LIST_ALL"><a href="javascript:;">전체</a></li>
					<li  data-type="LIST_ONAIR"><a href="javascript:;">방송중</a></li>
					<li data-type="LIST_VOD"><a href="javascript:;">VOD</a></li>
					<li data-type="LIST_BJ"><a href="javascript:;">BJ</a></li>
				</ul>
				<!-- 2019-0611 -->
				<ul>
					<li class="refresh"><a href="#n">닫기</a></li>
					<li class="close"><a href="#n">닫기</a></li>
				</ul>
			</div>
			<div class="loading">loading</div>
			<div class="list_contents">
				<div class="list_contents_item">
					<!-- <div class="select_box" id="selFavorite1">
              <a class="select_label" href="javascript:;" data-type="LIST_ALL">전체</a>
              <ul>
          <li><a href="javascript:;" data-type="LIST_ALL">전체</a></li>
          <li><a href="javascript:;" data-type="LIST_ONAIR">방송중</a></li>
          <li><a href="javascript:;" data-type="LIST_VOD">VOD</a></li>
        <li><a href="javascript:;" data-type="LIST_BJ">BJ</a></li>
        </ul>
          </div> -->
					<div class="select_box" id="selFavorite2" style="display:none;">
						<a class="select_label" href="javascript:;">전체</a>
						<ul>
							<li><a href="javascript:;">전체</a></li>
							<li><a href="javascript:;">방송중</a></li>
							<li><a href="javascript:;">VOD</a></li>
							<li><a href="javascript:;">BJ</a></li>
						</ul>
					</div>
				</div>
				<p class="no_result" style="display:none;">즐겨찾기한 BJ가 없습니다.</p>
				<!-- <div class="list_contents_item">
            <ul class="list_tab">
                <li class="on"><a href="#n">통합검색</a></li>
                <li><a href="#n">생방송</a></li>
                <li><a href="#n">VOD</a></li>
                <li class="close"><a href="#n">검색 닫기</a></li>
            </ul>
        </div> -->
				<dl class="section" id="listOnAirFavorite"  style="display:none;">
					<dt class="section_title"><h3>방송중</h3></dt>
					<dd>
						<ul class="contents_list">
						</ul>
					</dd>
				</dl>

				<dl class="section" id="listVodFavorite"  style="display:none;">
					<!--
            2019.02.27
            더보기 이아콘이 없으면 <h3>내용</h3>
            더보기 아이콘이 있으면 <h3><a href="#" title="내용 + 더보기">내용</a></h3>
          -->
					<dt class="section_title"><h3>즐겨찾기한 BJ의 VOD</h3></dt>
					<dd>
						<ul class="contents_list">
						</ul>
					</dd>
				</dl>

				<dl class="section" id="listAllFavorite"  style="display:none;">
					<!--
            2019.02.27
            더보기 이아콘이 없으면 <h3>내용</h3>
            더보기 아이콘이 있으면 <h3><a href="#" title="내용 + 더보기">내용</a></h3>
          -->
					<dt class="section_title"><h3>즐겨찾기 BJ</h3></dt>
					<dd>
						<ul class="bookmook_list contents_list">
						</ul>
					</dd>
				</dl>
				<div class="paging" style="display:none;">
					<a class="page-item prev" href="#">이전</a>
					<a class="page-item on" href="#">1</a>
					<a class="page-item" href="#">2</a>
					<a class="page-item" href="#">3</a>
					<a class="page-item" href="#">4</a>
					<a class="page-item" href="#">5</a>
					<!-- <a class="page-item" href="#">6</a>
          <a class="page-item" href="#">7</a>
          <a class="page-item" href="#">8</a>
          <a class="page-item" href="#">9</a>
          <a class="page-item" href="#">10</a>
          <span>...</span>
          <a class="page-item" href="#">15</a> -->
					<a class="page-item next" href="#">다음</a>
				</div>

			</div>
		</div>
		<!-- //즐겨찾기리스트 영역 list_bookmark_area-->
	</div>
	<!-- //webplayer_contents -->
</div>
<!-- //webplayer_scroll -->

<!-- 각종 레이어 위치 -->
<!-- 이동가능한 레이어 위치 -->
<div class="moveLayer">
	<!-- //매니저 채팅 -->
	<div id="layer_mchat" class="layer_mchat" style="display: none;">
		<h2>매니저 채팅</h2>
		<a class="btn_close" href="javascript:;">닫기</a>
		<!-- sendbox -->
		<div class="sendbox">
			<!--input type="text" id="m_write_area" class="input" /-->
			<div><textarea id="m_write_area" class="input" style="resize:none;"></textarea></div>
			<a class="send" id="m_btn_send" href="javascript:;">보내기</a>
		</div>
		<!-- //sendbox -->
		<!-- mchatlist -->
		<div id="mchatlist" class="mchatlist">
			<div id="m_chat_area" class="m_chat_area">
				<div id="m_chat_memoyo" class="chat_memoyo">
				</div>
			</div>
		</div>
		<!-- //mchatlist -->
	</div>
	<!-- //매니저 채팅 -->
	<!--채팅지킴이 관리목록 width:364px;height:494px-->
	<div class="chat-keeper" id="adminManagerList" style="display: none;">
		<div class="layer_in">
			<strong class="title">채팅지킴이 관리목록</strong>
			<div class="inwrap">
				<div class="section relay">
					<strong>BJ중계방</strong>
					<div class="box_tb">
						<table cellspacing="0" cellpadding="0" id="relayBroadList"><!--160830 span 추가-->
						</table>
					</div>
				</div>
			</div>
			<div class="btn_wrap">
				<a href="javascript:;" class="btn_st2">닫기</a>
			</div>
			<a href="javascript:;" class="btn_close2">닫기</a>
		</div>
	</div>
	<!--//채팅지킴이 관리목록-->

	<!--매니저 중계방 관리 목록-->
	<div class="ui-pop relay" id="relayBroadManageList" style="display: none;">
		<div class="pop-title"><p>중계방 관리</p>
			<button type="button" class="btn_refresh"><span class="blind">새로고침</span></button>
		</div>
		<div class="pop-body">
			<p class="txt">
				BJ와 고정 매니저만 본방, 중계방을 관리할 수 있습니다. 				<br>
				(단, FULL방은 열혈팬이거나 퀵뷰를 보유해야만 입장가능)			</p>
			<div class="tbl">
				<table>
					<colgroup>
						<col style="width:60px;">
						<col style="width:80px;">
						<col style="width:100px;">
						<col>
					</colgroup>
					<thead>
					<tr>
						<th>구분</th>
						<th>방송번호</th>
						<th>인원(PC/MOBILE)</th>
						<th>입장</th>
					</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
		<div class="pop-btn line">
			<a href="javascript:;" class="btn">닫기</a>
		</div>
		<a href="javascript:;" class="pop-close"><span>닫기</span></a>
	</div>
	<!--//매니저 중계방 관리 목록-->
</div>
<!-- //이동가능한 레이어 위치 -->
<!-- 고정된 레이어 위치 -->
<div class="fixLayer">
	<!-- 리스트 내 공유하기 레이어 복사해서 리스트에 넣자 -->
	<div class="ui-pop improve share_layer_templete" style="display:none;">
		<div class="pop-title">공유하기</div>
		<div class="pop-body">
			<div>
				<button type="button" class="twitter"><em></em><span>트위터</span></button>
				<button type="button" class="facebook"><em></em><span>페이스북</span></button>
				<button type="button" class="url"><em></em><span>URL 복사</span></button>
			</div>
		</div>
		<!-- <div class="pop-btn">
      <a href="#n" class="btn_blue">확인</a>
      <a href="#n">취소</a>
    </div> -->
		<a href="javascript:;" class="pop-close"><span>레이어 닫기</span></a>
	</div>
	<!-- 비밀번호 설정 방송 -->
	<div class="layer_m" id="layerAirPw"><div class="layer_in">
			<div class="layer_ac pdt30 pdb10">
				<dl class="air_pw_tit">
					<dt>비밀번호 설정 방송</dt>
					<dd>방송을 보려면 BJ가 정해놓은 비밀번호를 입력해야 합니다.</dd>
				</dl>
				<p class="pw"><label for="pw">비밀번호</label> <input type="password" class="input_text" title="비밀번호" id="pw" /></p>
				<p class="pw_wrong" style="display:;">비밀번호가 일치하지 않습니다.</p>
			</div>
			<div class="btn_wrap_line"><a href="javascript:;" class="btn_st1">확인</a> <a href="javascript:;" class="btn_st2">취소</a></div>
			<a href="javascript:;" class="btn_close">닫기</a>
		</div></div>
	<!-- //비밀번호 설정 방송 -->

	<!-- 방송 중이지 않습니다 -->
	<div class="layer_m" id="layerAirOff"><div class="layer_in">
			<div class="layer_ac pdt30 pdb30">
				<dl class="air_fin_tit">
					<dt> 님의 방송이 종료되었습니다.</dt>
					<dd>시청해 주셔서 감사합니다. <br />다음 방송 시간에 또 만나요.</dd>
				</dl>
				<div class="air_recomm">
					<h2>추천방송</h2>
					<div class="list">
					</div>
					<ul>
						<li class="prev"><a href="javascript:;">이전</a></li>
						<li class="next"><a href="javascript:;">다음</a></li>
					</ul>
				</div>
			</div>
			<a href="javascript:;" class="btn_close">닫기</a>
		</div></div>
	<!-- //방송 중이지 않습니다 -->

	<!-- 즐겨찾기에서 삭제 -->
	<div class="layer_s" id="layerFavDel"><div class="layer_in">
			<div class="layer_ac">
				<span class="color_bl"></span>님의 방송을<br /> 즐겨찾기에서 삭제하시겠습니까?			</div>
			<div class="btn_wrap"><a href="javascript:;" class="btn_st1">예</a> <a href="javascript:;" class="btn_st2">아니요</a></div>
			<a href="javascript:;" class="btn_close">닫기</a>
		</div></div>
	<!-- //즐겨찾기에서 삭제 -->

	<!-- 추천 받지 않기 기능 - 추천 목록에서 해당 BJ 삭제 2016-02 -->
	<div class="layer_s" id="layerRecommendedBJDel"><div class="layer_in">
			<div class="layer_ac">
				<span class="color_bl"></span>님의 방송을<br /> 더 이상 추천 받지 않겠습니까?			</div>
			<div class="btn_wrap"><a href="javascript:;" class="btn_st1">예</a> <a href="javascript:;" class="btn_st2">아니요</a></div>
			<a href="javascript:;" class="btn_close">닫기</a>
		</div></div>
	<!-- //추천 받지 않기 기능 - 추천 목록에서 해당 BJ 삭제 -->

	<!--랜덤방송 설정 width:400px;height:460px-->
	<div class="random-set" id="layerRandomBroadOption" style="display: none; background-color: white;">
		<div class="layer_in">
			<strong class="title">랜덤방송 설정</strong>
			<div class="inwrap">
				<!--#1-->
				<div class="inbox">
					<strong class="stit">카테고리 선택</strong>
					<p class="desc">선택한 카테고리만 랜덤으로 방송입장이 됩니다.</p>
					<div class="category" id="categoriesArea">
						<!--<span><input type="checkbox" id="all"><label for="all">전체</label></span><span>-->
					</div>
				</div>
				<!--//#1-->
				<!--#2-->
				<div class="inbox">
					<strong class="stit">시청인원 선택</strong>
					<p class="desc">설정한 시청자 수 이상만 랜덤으로 방송입장이 됩니다. (최대 100명)</p>
					<div class="slider_area" id="viewCountArea">
						<div class="slider">
							<div class="track"></div>
							<div class="runner"></div>
						</div>
						<div class="slider_txt"><input type="text" value="0" id="sliderLink">명</div>
					</div>
				</div>
				<!--//#2-->
				<!--#3-->
				<div class="inbox" id="keywordsArea">
					<strong class="stit">키워드 입력</strong>
					<p class="desc">
						등록한 키워드가 포함된 방송 제목으로만 랜덤으로 방송입장이 됩니다.						<br>최대 3개 키워드만 등록 가능합니다.					</p>
					<input type="text" class="txt_input" id="keywordsArea_input" placeholder="생방"><a href="javascript:;" class="btn_add">추가</a>
					<div class="keyword_area">

					</div>
				</div>
				<!--//#3-->
			</div>
			<div class="btn_wrap_line">
				<a href="#" class="btn_st1">설정저장</a>
				<a href="#" class="btn_st2">취소</a>
			</div>
			<a href="#" class="btn_close2">닫기</a>
		</div>
	</div>
	<!--//랜덤방송 설정-->


	<!-- 닉네임 변경 -->
	<div class="layer_s" id="layerNickChange"><div class="layer_in">
			<strong class="title">닉네임 변경</strong>
			<div class="layer_ac">
				<span class="fts11">아프리카TV 닉네임을 입력해주세요.</span><br />
				<span class="color_red fts11" style="display:none;"></span>
			</div>
			<div class="layer_ac pdt10">
				<input type="text" title="닉네임 입력" class="input_text" style="width:120px"/> <a href="javascript:;" class="btn_st2">중복확인</a>
			</div>
			<ul class="sub_list">
				<li>한글 6자(영문 12자)까지 입력 가능</li>
				<li>변경 시, 24시간 후 재변경 가능</li>
				<li>게시판 및 채팅에서 사용됩니다.</li>
			</ul>
			<div class="btn_wrap_line"><a href="javascript:;" class="btn_st1">확인</a> <a href="javascript:;" class="btn_st2">취소</a></div>
			<a href="javascript:;" class="btn_close2">닫기</a>
		</div></div>
	<!-- //닉네임 변경 -->

	<!-- 구독 닉네임 변경 -->
	<div class="layer_s" id="layerSubscriptionNickChange"><div class="layer_in">
			<strong class="title">구독자 전용 닉네임 변경</strong>
			<div class="layer_ac">
				<p>구독자 전용 닉네임을 입력해주세요.</p>
				<span class="color_red fts11" style="display:none;"></span>
			</div>
			<div class="layer_ac pdt10">
				<input type="text" title="닉네임 입력" class="input_text" style="width:120px"/> <a href="javascript:;" class="btn_st2">중복확인</a>
			</div>
			<ul class="sub_list">
				<li>한글 6자(영문 12자)까지 입력 가능</li>
				<li>변경 시, 24시간 후 재변경 가능</li>
				<li>구독한 BJ 방송 채팅에서 사용됩니다.</li>
			</ul>
			<div class="btn_wrap_line"><a href="javascript:;" class="btn_st1">변경</a> <a href="javascript:;" class="btn_st2">기본 닉네임 사용</a></div>
			<a href="javascript:;" class="btn_close2">닫기</a>
		</div></div>
	<!-- //구독 닉네임 변경 -->

	<!-- 채팅 명령어 도움말 -->
	<div class="layer_m" id="layerChatHelp" style="display: none;"><div class="layer_in">
			<strong class="title">채팅 명령어 도움말</strong>
			<div class="layer_al">
				<span class="fts11 color_blk">해당 명령어를 사용하시면 좀 더 편리하게 아프리카TV <br>채팅을 이용하실 수 있습니다.</span>
				<ul class="command_list">
					<li><strong>/go (아이디) </strong>: <span>아이디의 방송국 가기</span></li>
					<li><strong>/k (아이디) </strong>: <span>아이디 강제퇴장</span></li>
					<li><strong>/m (아이디) </strong>: <span>아이디 벙어리</span></li>
					<li><strong>/to (아이디) </strong>: <span>귓속말하기</span></li>
					<li><strong>/re </strong>: <span>최근 귓속말에 답변을 보냄</span></li>
					<li><strong>/c </strong>: <span>화면 지우개</span></li>
					<li><strong>/h </strong>: <span>채팅 명령어 도움말 보기</span></li>
					<li><strong>/hc </strong>: <span>채팅 명령어 도움말 닫기</span></li>
					<li><strong>/n </strong>: <span>닉네임 변경</span></li>
					<li><strong>/q </strong>: <span>방송 그만보기</span></li>
				</ul>
			</div>
			<div class="btn_wrap"><a href="javascript:;" class="btn_st2">닫기</a></div>
			<a href="javascript:;" class="btn_close2">닫기</a>
		</div></div>
	<!-- //채팅 명령어 도움말 -->

	<!-- 별풍선 선물하기 -->
	<div class="layer_l" id="layerStarGift"><div class="layer_in">
			<strong class="title">별풍선 선물하기</strong>
			<div class="layer_al">
				<strong class="color_blk">별풍선이란?</strong> &nbsp; <a href="http://www.afreecatv.com/balloon.htm" target="_blank" class="color_bl fts11">별풍선 헤택이 궁금하다면 클릭!</a><br />
				<ul class="sub_list2">
					<li>시청자가 BJ에게 선물할 수 있는 유료 아이템입니다. <br /><span class="fts11 color_gray">(BJ는 별풍선을 환전하여 실제수익으로 돌려받게 됩니다.)</span></li>
					<li>별풍선을 선물하시면 자동으로 BJ 팬클럽에 가입이 됩니다. <br /><span class="fts11 color_gray">(팬클럽 이모티콘 표시 / 팬클럽 전용 채팅컬러 제공)</span></li>
				</ul>
				<ul class="table_list">
					<li><span><em>별풍선을 선물할 BJ</em> : </span><strong class="color_bl"></strong></li>
					<li><span><em>내가 보유한 별풍선</em> : </span>0개 <a href="javascript:;" class="btn_st3">별풍선 구매</a></li>
					<li>
						<span><em>선물할 별풍선</em> : </span>
						<fieldset class="select_area">
							<legend>선물할 별풍선 선택</legend>
							<input type="radio" name="optStarBalloon" label="no5" class="input_radio" value="5" checked /> <label for="no5">5개</label> &nbsp;
							<input type="radio" name="optStarBalloon" label="no10" class="input_radio" value="10" /> <label for="no5">10개</label> &nbsp;
							<input type="radio" name="optStarBalloon" label="no50" class="input_radio" value="50" /> <label for="no5">50개</label> &nbsp;
							<input type="radio" name="optStarBalloon" label="no100" class="input_radio" value="100" /> <label for="no5">100개</label><br />
							<em><input type="radio" label="write" name="optStarBalloon" value="-1" class="input_radio" /> 직접입력 <input type="text" id="nStarBalloon" class="input_text" style="width:60px" maxlength="5" disabled /> 개</em>
						</fieldset>
					</li>
				</ul>
			</div>
			<div class="btn_wrap"><a href="javascript:;" class="btn_st1">선물하기</a> <a href="javascript:;" class="btn_st2">취소</a></div>
			<a href="javascript:;" class="btn_close2">닫기</a>
		</div></div>
	<!-- //별풍선 선물하기 -->

	<!-- 별풍선 선물하기 신규(국내만) -->
	<div class="pop_stargift" id="layerStarGiftNew">
		<div class="layer_in">
			<div class="loading"><span></span></div>
			<div class="guide_layer" style="display:none">
				<a href="javascript:;" class="close sub">close</a>
				<div class="guide_step1">
					<strong>1. VOD 주소입력</strong>
					<p>조회수 100 / UP 20 이상의 <br>다시보기, 하이라이트, <br> 업로드 VOD, 유저 VOD 중 선택</p>
				</div>
				<div class="guide_step2">
					<strong>2. 재생 시작 시간 입력</strong>
					<p>선물하고 싶은 구간의 재생 시작시간 입력 <br> 단, VOD에 따라 오차가 발생할 수 있음</p>
				</div>
				<div class="guide_step3">
					<strong>3. 선물할 별풍선 개수 입력</strong>
					<p>1초당 별풍선 N개 <br> 최소 5초 ~ 최대 SS초까지 선물 가능 </p>
				</div>
				<p>영상풍선 선물 설정은 BJ의 설정에 따라 변경 됩니다.</p>
			</div>
			<span class="lightbox"></span>
			<h2>
				<a href="javascript:;" class="on">별풍선 선물하기</a>
				<a href="javascript:;">영상풍선 선물하기</a>
			</h2>
			<a href="javascript:;" class="what_star">별풍선이란?</a>
			<!-- 별풍선이란? 레이어 -->
			<div class="star_info_layer">
				<div class="inner">
					<div class="info_b">
						<span class="img"></span>
						<dl>
							<dt>별풍선이란?</dt>
							<dd>시청자가 BJ를 응원하고 후원할 수 있는<br>유료 선물 시스템입니다.</dd>
							<dd>별풍선을 선물하면 자동으로 BJ 팬클럽<br>에 가입 됩니다.</dd>
							<dd>선물받은 BJ는 별풍선을 환전하여 실제<br>수익으로 돌려 받게 됩니다.</dd>
						</dl>
						<a href="https://item.afreecatv.com/starballoon.php" target="_blank" class="btn_detail">상세보기</a>
					</div>
					<div class="info_sgb">
						<span class="img"></span>
						<dl>
							<dt>시그니처 풍선이란?</dt>
							<dd>BJ의 개성이 돋보이도록 직접 만들어<br>등록하는 맞춤형 별풍선입니다.</dd>
						</dl>
						<a href="https://afevent2.afreecatv.com/app/signature_balloon/index.php" target="_blank" class="btn_detail">상세보기</a>
					</div>
					<!-- 영상풍선일때만 보여짐 -->
					<div class="info_sgb">
						<span class="img video_balloon_img"></span>
						<dl>
							<dt>영상풍선 혜택보기</dt>
							<dd>별풍선에 좋아하는 VOD를 담아서 <br> 선물하는 서비스 입니다. <br> 원하는 재생구간을 설정하여 선물할 수 있습니다. </dd>
						</dl>
					</div>
					<a href="javascript:;" class="btn_close sub">닫기</a>
				</div>
			</div>
			<!-- //별풍선이란? 레이어 -->
			<!-- 별풍선 -->
			<div class="tab1">
				<div class="star_list">
					<p>시그니처 풍선은 BJ만의 특별한 풍선입니다.</p> <!-- 시그니처 풍선일때 노출
		                 -->
					<ul>
						<li><span class="thumb active"><em></em><a href="#"><img src="//res.afreecatv.com/images/flashplayer/balloon_1_293x248.png" alt=""></a></span></li>
						<li><span class="thumb"><em></em><a href="#"><img src="//res.afreecatv.com/images/flashplayer/balloon_1_293x248.png" alt=""></a></span></li>
						<li><span class="thumb"><em></em><a href="#"><img src="//res.afreecatv.com/images/flashplayer/balloon_1_293x248.png" alt=""></a></span></li>
					</ul>
					<!-- 2018-0830 버튼 추가  off 클레스 출력 시 활성 비활성화 -->
					<div>
						<button type="button" class="prev off">prev</button>
						<button type="button" class="next off">next</button>
					</div>
				</div>
				<div class="send_area">
					<a href="javascript:;" class="btn_stars">스타즈 별풍선</a>
					<!-- 스타즈별풍선 레이어 -->
					<div class="stars_layer">
						<div class="inner">
							<h2>스타즈 별풍선</h2>
							<div class="tab_area" style="display: none;">
								<ul>
								</ul>
							</div>
							<div class="scroll_area">
								<ul>
								</ul>
							</div>
							<a href="javascript:;" class="btn_close sub">닫기</a>
						</div>
					</div>
					<!-- //스타즈별풍선 레이어 -->
					<dl class="gift_at">
						<dt><strong>nickname(id)</strong>님께 선물</dt>
						<dd class="on">
							<span class="txt_default">선물할 별풍선</span>
							<input type="text" value="10" class="starCount" placeholder="0" autocomplete="Off">
							<span class="txt_count">개</span>
							<button class="countReset">삭제</button>
						</dd>
					</dl>
					<dl class="gift_st">
						<dt>보유 별풍선</dt>
						<dd><span class="userBalloonCount">2,000</span>개</dd>
						<dd class="txt_error" style="display:none;"><em></em><span>보유 별풍선 부족</span></dd>
					</dl>
					<a href="javascript:;" class="btn_buy">구매</a>
					<div class="btn_area">
						<button class="btn_gift">선물하기</button><button class="btn_cancel">취소</button>
					</div>
					<p class="txt_info">별풍선을 선물하면 BJ를 후원하고 팬클럽에도 가입됩니다.</p>
				</div>
			</div>
			<!--// 별풍선 -->
			<!-- 영상풍선 -->
			<div class="tab2" style="display:none">
				<div class="video_balloon_info">
					<ul>
						<li><p>URL</p><span><input type="text" class="vodURL" placeholder="선물할 VOD 주소 입력 "></span></li>
						<li><p>재생 시간<em>(최대 25초)</em></p><span><input type="text" class="vodStart" placeholder="00:00:00"></span><p>부터<b>5초</b></p></li>
						<li>
							<a href="javascript:;"><span></span><em></em></a>
						</li>
					</ul>
					<div>
						<p class="bj_config">조회수 100 / UP 20 이상,<br>다시보기, 하이라이트, 업로드 VOD, 유저 VOD 선물 가능</p>
						<p class="txt_error" style="display:none"></p>
					</div>
				</div>
				<div class="send_area">
					<a href="javascript:;" class="btn_stars">VOD 검색</a>
					<dl class="gift_at">
						<dt><strong>nickname(id)</strong>님께 선물</dt>
						<dd>
							<span class="txt_default">선물할 별풍선 <em>(1초당 <b>gift_cnt</b>개)</em></span>
							<input type="text" value="10" class="starCount" placeholder="0" autocomplete="Off">
							<span class="txt_count">개</span>
							<button class="countReset">삭제</button>
						</dd>
					</dl>
					<dl class="gift_st">
						<dt>보유 별풍선</dt>
						<dd><span class="userBalloonCount">2,000</span>개</dd>
						<dd class="txt_error" style="display:none;"><em></em><span>보유 별풍선 부족</span></dd>
					</dl>
					<a href="javascript:;" class="btn_buy">구매</a>
					<div class="btn_area">
						<button class="btn_gift">선물하기</button><button class="btn_cancel">취소</button>
					</div>
					<p class="txt_info"><a href="javascript:;">영상풍선 선물 설정 방법이 궁금하세요?</a></p>
				</div>
			</div>
			<!--// 영상풍선 -->
			<a href="javascript:;" class="btn_close">닫기</a>
		</div>
	</div>
	<!-- //별풍선 선물하기 신규(국내만) -->
	<!-- //애드벌룬 레이어 -->
	<div id="pop_adballoon" class="pop_adballoon"></div>
	<!-- 초콜릿 선물하기 -->
	<div class="layer_l" id="layerChocoGift"><div class="layer_in">
			<strong class="title">초콜릿 선물하기</strong>
			<div class="layer_al">
				<strong class="color_blk">초콜릿이란?</strong> &nbsp; <a href="http://item.afreecatv.com/choco.php" target="_blank" class="color_bl fts11">초콜릿 헤택이 궁금하다면 클릭!</a><br />
				<ul class="sub_list2">
					<li>초콜릿 팩토리를 통해 지급된 초콜릿을 BJ에게 선물 하거나 전용 아이템으로 교환 할 수 있습니다.</li>
				</ul>
				<ul class="table_list">
					<li><span>초콜릿을 선물할 BJ : </span><strong class="color_bl"></strong></li>
					<li><span>내가 보유한 초콜릿 : </span>0개</li>
					<li>
						<span>선물할 초콜릿 : </span>
						<fieldset class="select_area">
							<legend>선물할 초콜릿 선택</legend>
							<input type="radio" name="optChocolate" label="no5" class="input_radio" value="5" checked /> <label for="no5">5개</label> &nbsp;
							<input type="radio" name="optChocolate" label="no10" class="input_radio" value="10" /> <label for="no5">10개</label> &nbsp;
							<input type="radio" name="optChocolate" label="no50" class="input_radio" value="50" /> <label for="no5">50개</label> &nbsp;
							<input type="radio" name="optChocolate" label="no100" class="input_radio" value="100" /> <label for="no5">100개</label><br />
							<em><input type="radio" label="write" name="optChocolate" value="-1" class="input_radio" /> 직접입력 <input type="text" class="input_text" id="nChocolate" style="width:60px" maxlength="5" disabled /> 개</em>
							<em class="fts11 color_lightgray">*초콜릿은 5개 이상 선물이 가능합니다</em>
						</fieldset>
					</li>
				</ul>
			</div>
			<div class="btn_wrap"><a href="javascript:;" class="btn_st1">선물하기</a> <a href="javascript:;" class="btn_st2">취소</a></div>
			<a href="javascript:;" class="btn_close2">닫기</a>
		</div></div>
	<!-- //초콜릿 선물하기 -->

	<!-- 퀵뷰 선물하기 -->
	<div class="layer_l" id="layerQuickViewGift"><div class="layer_in">
			<strong class="title">퀵뷰 선물하기</strong>
			<div class="layer_al">
				<strong class="color_blk">퀵뷰란</strong> &nbsp; <a href="http://www.afreecatv.com/quickview.htm" target="_blank" class="color_bl fts11">퀵뷰 혜택이 궁금하다면 클릭!</a><br />
				<ul class="sub_list2">
					<li>퀵뷰 아이템은 full방 입장, 광고 Skip 등<br /> 방송을 빠르고 편리하게시청 할 수 있는 프리미엄 아이템 입니다. </li>
				</ul>
				<ul class="table_list">
					<li><span>퀵뷰 선물받을 아이디 : </span><strong class="color_bl"></strong></li>
					<li>
						<span>보유중인 퀵뷰 : </span>
						<div class="quick_box">
							<ul>
								<li>
									퀵뷰 30일 선물권 <em>보유 : <strong>0개</strong></em>
									<div class="btn_wrap"><a href="javascript:;" data="676752" class="btn_st4">구매</a> <a href="javascript:;" data="1" class="btn_st5">선물</a></div>
								</li>
								<li>
									퀵뷰 90일 선물권 <em>보유 : <strong>0개</strong></em>
									<div class="btn_wrap"><a href="javascript:;" data="676753" class="btn_st4">구매</a> <a href="javascript:;" data="2" class="btn_st5">선물</a></div>
								</li>
								<li class="last">
									퀵뷰 365일 선물권 <em>보유 : <strong>0개</strong></em>
									<div class="btn_wrap"><a href="javascript:;" data="676754" class="btn_st4">구매</a> <a href="javascript:;" data="3" class="btn_st5">선물</a></div>
								</li>
							</ul>
						</div>
					</li>
				</ul>
				<div class="fts11 pdt10 color_blk">※ 선물시 해당 퀵뷰가 1개 선물됩니다.</div>
			</div>
			<div class="btn_wrap"><a href="javascript:;" class="btn_st2">닫기</a></div>
			<a href="javascript:;" class="btn_close2">닫기</a>
		</div></div>
	<!-- //퀵뷰 선물하기 -->

	<!-- 스티커 선물하기 -->
	<div id="layerStickerGift" style="display:none;" class="pop_stk">
		<h1>스티커 선물하기</h1>
		<p class="what_stk">스티커란</p>
		<div class="pop_layer" style="display:none;">
			<div class="stk_layer">
				<h2 class="blind">BJ에게 격려와 힘이 되는 스티커</h2>
				<ul class="blind">
					<li><em>방송 아이템 교환</em>스티커는 BJ가 방송 아이템으로 교환 가능</li>
					<li><em>BJ 랭킹상승</em>BJ를 칭찬하는 사람이 많아질수록 BJ 랭킹상승</li>
					<li><em>서포터 가입</em>스티커를 선물하면 BJ의 서포터로 가입</li>
				</ul>
				<p><em>스티커란 시청자가 BJ에게 선물하는 유료 아이템으로</em><br />스티커 1개당 1골드 입니다.</p>
				<a href="https://item.afreecatv.com/sticker.php" target="_blank" class="btn_itemview">스티커로 교환할 수 있는 아이템 보러가기</a>
				<button type="button" class="layer_close">닫기</button>
			</div>
		</div>
		<div class="sticker_wrap">
			<div class="stkview_wrap">
				<p class="sticker_view" id="stickerView"><img src="" alt="" /><span>10</span></p>
				<div class="sticker_list2">
					<div class="list_tit">
						<h2 class="blind">스티커 분류</h2>
						<ul id="stickerTabList">
						</ul>
					</div>
					<button type="button" class="btn_on"></button>
					<div class="sticker_box" id="stickerImgList">
					</div>
				</div>
			</div>
			<div class="choice_stk">
				<h3 class="st_choice">선물할 스티커 개수 선택 :</h3>
				<ul>
					<li><input type="radio" class="radio" id="radio1" name="optSticker" value="5" /><label for="radio1"> 5<em>개</em></label></li>
					<li><input type="radio" class="radio" id="radio2" name="optSticker" value="10" checked /><label for="radio2" class="on"> 10<em>개</em></label></li>
					<li><input type="radio" class="radio" id="radio3" name="optSticker" value="50" /><label for="radio3"> 50<em>개</em></label></li>
					<li><input type="radio" class="radio" id="radio4" name="optSticker" value="100" /><label for="radio4"> 100<em>개</em></label></li>
					<li class="last"><input type="radio" class="radio" id="radio5" name="optSticker" value="-1" title="직접입력 선택하셨습니다" /><label for="radio5"><input type="text" value="직접입력" class="self_txt" id="nSticker" title="선물한 스티커 개수를 적어주세요" maxlength="5" disabled /> <em>개</em></label></li>
				</ul>
			</div>
			<div class="result">
				<ul>
					<li><em class="ugold">사용할 골드</em><span class="use_gold">10</span>골드</li>
					<li><em class="cggold">보유 골드</em><span class="gold">0</span>골드<a href="javascript:;" class="btn_charge">충전</a></li>
					<li><em class="givebj">선물할 BJ</em><span></span></li>
				</ul>
				<button type="button" class="btn_presen"><strong>선물하기</strong></button>
			</div>
		</div>
		<span class="bg_layer png24" style="display:none;"></span>
		<a href="javascript:;" class="btn_close2">닫기</a>
	</div>
	<!-- //스티커 선물하기 -->

		<!-- 레이어 로그인 -->
	<div class="lay lay_login " id="layerLogin" style="display: none;"><!-- 청소년인경우 lay_login_young 추가 -->
		<!-- memo -->
		<div class="memo">
			<h2>아프리카TV</h2>
			<div class="login_age_young" style="display: none;">만 19세 미만의 청소년이 이용할 수 없습니다. 로그인 후 이용해 주세요.</div><!-- 청소년인경우 -->
			<!-- fieldset -->
			<fieldset>
				<legend>로그인영역</legend>
				<div class="login">
					<!-- 쓰기폼 -->
					<dl>
						<dt><label for="szUid">아이디</label></dt><dd><input type="text" id="szUid" title="아이디"></dd>
						<dt><label for="szPassword">비밀번호</label></dt><dd><input type="password" id="szPassword" title="비밀번호" maxlength="15">
							<!-- 2017-0705 캡스 락 추가-->
							<span class="caps_Lock" style="display:none;">
			                    <em></em>
								<strong>Caps Lock</strong>이 켜져 있습니다.			                </span>
						</dd>
					</dl>
					<!-- //쓰기폼 -->


					<!-- 알림 -->
					<div class="info" style="display: none;">법정 대리인 동의가 필요한 아이디입니다.<br>법정대리인 인증 후 이용 부탁 드립니다.</div>
					<!-- //알림 -->
					<!-- 아이디저장 -->
					<em class="idsave">
						<!-- 2019-0604 -->
						<input type="checkbox" id="log_retain" title="로그인 상태유지"> <label for="log_retain">로그인 상태 유지</label>
						<div class="layer_info" style="display: none;">
							<span class="arrow"></span>
							<div class="layer_contents">
								<ul>
									<li class="red">개인정보 보호를 위해 개인 PC에서만 사용하세요.</li>
								</ul>
							</div>
							<a href="javascript:;" class="layer_close">레이어닫기</a>
						</div>
						<input type="checkbox" id="bSaveId" title="아이디 저장"> <label for="bSaveId">아이디 저장</label>
					</em>
					<!-- //아이디저장 -->
					<!-- 로그인 -->
					<button type="button" class="btn_login" title="로그인"></button>
					<!-- //로그인 -->
				</div>
			</fieldset>
			<!-- //fieldset -->
			<!-- btnbox -->

			<div class="btnbox end">
				<span><a href="http://help.afreecatv.com/atv.php?type=exSelfRAR" target="_blank">도움말</a></span>
				<span><a href="https://member.afreecatv.com/app/find_id_pw.php" target="_blank">아이디/비밀번호 찾기</a></span>
				<span><a href="https://member.afreecatv.com/app/join.php" target="_blank">회원가입</a></span>
			</div>
			<!-- //btnbox -->
		</div>
		<!-- //memo -->
		<!-- close -->
		<div class="btn_close_top"><a href="javascript:;" title="레이어 닫기">닫기</a></div>
		<!-- //close -->
	</div>
	<!-- //레이어 로그인 -->
	
		<!-- 레이어 2차 비밀번호 로그인 -->
		<div class="lay lay_login " id="layerSecondLogin" style="display: none;">
			<!-- memo -->
			<div class="memo">
				<h2>아프리카TV</h2>
				<div class="pw_info">2차 비밀번호를 사용 중인 계정입니다. 2차 비밀번호를 입력해주세요</div>
				<!-- fieldset -->
				<fieldset>
					<legend>로그인영역</legend>
					<input type="hidden" id="szUid" title="아이디" />
					<input type="hidden" id="bSaveId" title="아이디 저장" />
					<div class="login login_pw2">
						<!-- 쓰기폼 -->
						<dl class="pw2">
							<dt><label for="szPassword2">비밀번호</label></dt><dd><input type="password" id="szPassword2" title="비밀번호"></dd>
						</dl>
						<!-- //쓰기폼 -->
						<!-- 알림 -->
						<div class="info" style="display: none;"></div>
						<!-- //알림 -->
						<!-- 로그인 -->
						<button type="button" class="btn_login_pw2" title="로그인"></button>
						<!-- //로그인 -->
					</div>
				</fieldset>
				<!-- //fieldset -->
				<!-- btnbox -->
				<div class="btnbox end">
					<span><a href="https://member.afreecatv.com/app/find_security.php" target="_blank" id="find_2nd_pwd">2차 비밀번호 찾기</a></span>
				</div>
				<!-- //btnbox -->
			</div>
			<!-- //memo -->
			<!-- close -->
			<div class="btn_close_top"><a href="javascript:;" title="레이어 닫기">닫기</a></div>
			<!-- //close -->
		</div>
		<!-- //레이어 2차 비밀번호 로그인 -->



		<!-- 방송리스트 마우스 오버 -->
		<!-- 레이어_방송정보_생방송용 -->
		<!--div class="layer_air_info" id="layerAirInfo">
		    <span class="thum"><img src="" alt="방송스샷"></span>
			<dl class="info1">
				<dt></dt>
				<dd class="viewer">0명 시청중</dd>
				<dd class="num"><em class="pc">0</em><em class="mobile">0</em></dd>
			</dl>
			<ul class="info2">
				<li><em>BJ :</em></li>
				<li><em>방송국명 :</em></li>
				<li><em>화질 :</em></li>
				<li><em>해상도 :</em></li>
				<li><em>방송시작 :</em></li>
			</ul>
			<div class="info3"></div>
		</div-->
		<!-- //레이어_방송정보_생방송용 -->

		<!-- 레이어_방송정보_동영상용 -->
		<!--div class="layer_air_info" id="layerVodInfo">
		    <span class="thum"><img src="" alt="영상스샷"></span>
			<dl class="info1">
				<dt></dt>
			</dl>
			<ul class="info2">
				<li><em>등록자 :</em></li>
				<li><em>등록일 :</em></li>
			</ul>
		</div-->
		<!-- //레이어_방송정보_동영상용 -->

		<!-- 원본화질로 2015-06-15 추가 -->
		<div class="layer_m" id="layerPlayOrg"><div class="layer_in">
				<strong class="title">아프리카TV 원본화질로 시청하기</strong>
				<div class="layer_ac">
					<strong class="color_blk">원본화질로 시청하기 위해<br />아프리카TV 플레이어를 실행합니다.</strong><br />
					<span class="fts11_pdt5">플레이어가 설치되지 않았을 경우,<br /><strong class="color_bl">[확인]</strong>을 클릭하면 프로그램이 설치됩니다. </span>
				</div>
				<div class="btn_wrap_line"><a href="#" class="btn_st1">확인</a> <a href="#" class="btn_st2">취소</a></div>
				<a href="#" class="btn_close2">닫기</a>
			</div></div>
		<!-- //원본화질로 -->

		<br />

		<!-- 플러그인 설치 2015-06-15 추가 -->
		<div class="layer_m" id="layerInstallPlugin"><div class="layer_in">
				<strong class="title">플러그인 설치</strong>
				<div class="layer_ac">
					<span class="fts11_pdt5"><strong class="color_bl">파이어폭스, 크롬, 사파리, 오페라 브라우저</strong>에서<br />원활한 이용을 위해 플러그인 설치가 필요합니다</span>
				</div>
				<div class="btn_wrap_line"><a href="#" class="btn_st1">확인</a> <a href="#" class="btn_st2">취소</a></div>
				<a href="#" class="btn_close2">닫기</a>
			</div></div>
		<!-- //플러그인 설치 -->


		<!-- 방송 신고 접수 -->
		<div class="layer_m" id="layerReport"><div class="layer_in">
				<strong class="title">방송 신고 접수</strong>
				<div class="layer_ac">
					<strong class="color_blk">이 방송을 어떤 문제로 신고하시겠습니까?</strong><br />
					<span class="fts11_pdt5">지속적인 허위 신고 접수 시<br />서비스 이용이 제한될 수 있습니다.</span>
				</div>
				<div class="report_box">
					<div class="gift_img">퀵뷰아이템 이용권"</div>
					<div class="text">
						<em>불법 사설 도박, 음란물 신고시<br />추첨을 통해 <strong class="color_bl">퀵뷰 30일 이용권</strong>을 드립니다.</em>
						<a href="http://afwbbs1.afreecatv.com:8081/app/index.php?board=notice&b_no=3247&control=view" target="_blank">신고보상 자세히 보기</a>
					</div>
				</div>
				<div class="btn_wrap"><a href="javascript:;" id="reportToto" class="btn_st1">불법사설 도박 신고</a> <a href="javascript:;" id="reportAdult" class="btn_st1">음란물 신고</a> <a href="https://help.afreecatv.com/atv.php?type=exMailDeclare" class="btn_st2" target="_blank">기타신고</a></div>
				<a href="javascript:;" class="btn_close2">닫기</a>
			</div></div>
		<!-- //방송 신고 접수 -->

		<!-- 음란물로 신고하겠습니까? -->
		<div class="layer_m" id="layerReportAdult"><div class="layer_in">
				<div class="layer_ac">
					<strong class="color_blk">본 방송(BJ ID : <span class="color_bl">%s</span>)을<br />음란물로 신고하겠습니까?</strong>
					<span class="icon_exc">&apos;신고&apos; 버튼을 누르는 시점의 방송 화면이 <br />자동 저장되어 접수 됩니다</span>
				</div>
				<div class="btn_wrap_line"><a href="javascript:;" class="btn_st1">신고</a> <a href="javascript:;" class="btn_st2">취소</a></div>
				<a href="javascript:;" class="btn_close">닫기</a>
			</div></div>
		<!-- //음란물로 신고하겠습니까? -->

		<!-- 불법 사설 도박으로 신고하겠습니까? 2015-12-10 추가 -->
		<div class="layer_m" id="layerReportToto"><div class="layer_in">
				<div class="layer_ac">
					<strong class="color_blk">본 방송(BJ ID : <span class="color_bl"></span>)을<br />불법 사설 도박으로 신고하시겠습니까?</strong>
					<span class="icon_exc">&apos;신고&apos; 버튼을 누르는 시점의 방송 화면이 <br />자동 저장되어 접수 됩니다</span>
				</div>
				<div class="btn_wrap_line"><a href="javascript:;" class="btn_st1">신고</a> <a href="javascript:;" class="btn_st2">취소</a></div>
				<a href="javascript:;" class="btn_close">닫기</a>
			</div></div>
		<!-- //불법 사설 도박으로 신고하겠습니까? -->

		<!-- 고화질로 시청하려면 2015-07-17 추가 -->
		<div class="layer_m" id="layer_high_quality">
			<div class="layer_in">
				<div class="layer_ac">
					<strong class="layer_stit">모든 방송을 고화질로 시청하려면?</strong>
					<span class="fs11">BJ가 설정한 화질로 시청하기 위해서는<br />고화질 스트리머가 필요합니다.</span>
				</div>
				<div class="btn_wrap pdt10"><a href="javascript:;" class="btn_st1" id="install_streamer">고화질 스트리머 설치하기</a></div>
				<span class="info_normal_quality">저화질로 계속 시청하시려면 <a href="javascript:;"><span class="color_bl">여기</span></a>를 클릭하세요</span>
				<!-- a href="#" class="btn_close">닫기</a -->
			</div>
		</div>
		<!-- //고화질로 시청하려면 -->
		<!-- MAC 스트리머 업데이트 -->
		<div class="layer_m" id="layer_high_quality_mac">
			<div class="layer_in">
				<div class="layer_ac">
					<strong class="layer_stit">고화질 스트리머 업데이트 안내</strong>
					<span class="fs11">고화질 스트리머가 업데이트 되었습니다.<br/>BJ가 설정한 화질로 시청하기 위해서는<br/>MAC OS 전용 고화질 스트리머가 필요합니다.</span>
				</div>
				<div class="btn_wrap pdt10"><a href="//afupd1.afreecatv.com/AfreecaTV_MAC_Installer.pkg" class="btn_st1" target="_blank">고화질 스트리머 업데이트하기</a></div>
				<!-- a href="#" class="btn_close">닫기</a -->
			</div>
		</div>
		<!-- //MAC 스트리머 업데이트 -->

		<!-- HTML5로 전환 시청 2017-11-15 추가 -->
		<div class="layer_m" id="layer_html5_change"><div class="layer_in">
				<div class="layer_ac">
					<strong class="layer_stit">본 방송은 초고화질 방송입니다.</strong>
					<span class="fs11">플레이어 타입을 HTML5로 변경하시면,<br />끊김없이 보다 선명하게 시청하실 수 있습니다.</span>
				</div>
				<div class="btn_wrap pdt10"><a href="javascript:;" class="btn_st1" id="btn_html5_change">플레이어 타입 HTML5로 변경</a></div>
				<span class="info_normal_quality">플레이어 타입을 FLASH로 유지하려면 <a href="javascript:;" id="btn_html5_change_cancel"><span class="color_bl">여기</span></a>를 클릭하세요</span>
				<!-- a href="#" class="btn_close">닫기</a -->
			</div></div>
		<!-- //HTML5로 전환 시청 -->

		<!-- 150910 쇼핑풍선 지급하기 -->
		<div class="layer_l" id="layerShopGift"><div class="layer_in">
				<strong class="title">쇼핑풍선 지급하기</strong>
				<div class="layer_al">
					<dl class="dl_list">
						<dt>쇼핑풍선이란?</dt>
						<dd>판매자 또는 매니저는 쇼핑풍선을 미리 충전해두었다가 쇼핑 방송 시청 또는 구매 이벤트로 활용할 수 있습니다.</dd>
					</dl>
					<ul class="sub_list2">
						<li>방송에 적극적으로 참여하는 시청자 또는 구매자에게 지급하세요.							방송 중에 지급 시, 채팅창에 쇼핑풍선 지급 효과가 출력됩니다.</li>
						<li>시청자는 선물받은 쇼핑풍선을 BJ에게 선물할 수 있습니다.<br><span class="fts11 color_gray">(쇼핑풍선 1개 = 일반 별풍선 1개)</span></li>
					</ul>

					<ul class="table_list">
						<li><span>지급할 시청자ID : </span><strong class="color_bl">아프리카TV (afreecaTV)</strong></li>
						<li><span>지급 가능한 쇼핑풍선 : </span>0개<a href="javascript:;" class="link_info">충전안내</a></li>
						<li>
							<span>지급할 쇼핑풍선 : </span>
							<fieldset class="select_area">
								<legend>지급할 쇼핑풍선</legend>
								<input type="radio" name="optShoppingBalloon" id="s1" value="1" class="input_radio" checked/> <label for="s1">1개</label> &nbsp;
								<input type="radio" name="optShoppingBalloon" id="s5" value="5" class="input_radio" /> <label for="s5">5개</label> &nbsp;
								<input type="radio" name="optShoppingBalloon" id="s10" value="10" class="input_radio" /> <label for="s10">10개</label><br />
								<em><input type="radio" label="write" name="optShoppingBalloon" value="-1" class="input_radio" /> 직접입력 <input type="text" id="nShoppingBalloon" class="input_text" style="width:60px" maxlength="5" disabled /> 개</em>
							</fieldset>
						</li>
						<li class="type"><span>용도 : </span><input type="text" class="input_txt2" placeholder="최대 20자까지 입력가능합니다." id="shopGiftMemo"></li>
					</ul>
				</div>
				<div class="btn_wrap"><a href="javascript:;" class="btn_st1">쇼핑풍선 지급하기</a> <a href="javascript:;" class="btn_st2">취소</a></div>
				<a href="javascript:;" class="btn_close2">닫기</a>
			</div></div>
		<!-- //쇼핑풍선 지급하기 -->
		<br />
		<!--150910 쇼핑풍선 지급완료-->
		<div class="layer_l" id="layerShopGiftAfter"><div class="layer_in">
				<strong class="title">쇼핑풍선 지급하기</strong>
				<div class="layer_al">
					<p class="give_info"></p>
					<ul class="table_list">
						<li><span>님의 남은 쇼핑풍선 : </span><strong>0개</strong>
							<p class="my_list">쇼핑풍선 지급 내역은 <a href="javascript:;">내 별풍선 정보 &gt; 쇼핑풍선 지급</a> 에서 확인하실 수 있습니다. </p>
						</li>
					</ul>
				</div>
				<div class="btn_wrap"><a href="javascript:;" class="btn_st2">닫기</a></div>
				<a href="javascript:;" class="btn_close2">닫기</a>
			</div></div>
		<!--//쇼핑풍선 지급완료-->

		<!--신규 공유 레이어 -->
		<div class="ui-pop improve share_broadcast_layer" id="layerShare" style="display: none;">
			<div class="pop-title">공유하기</div>
			<div class="pop-body">
				<ul class="tab" id="share_tab">
					<li class="on"><a href="javascript:;">URL</a></li>
					<li><a href="javascript:;">퍼가기</a></li>
				</ul>
				<ul class="tab_contents">
					<li class="on">
						<!-- 복사가되면 input_wrap 에 copy 클래스 추가 -->
						<div class="input_wrap">
							<input type="text" id="share_link" value="" readonly=""><button id="share_link_btn" type="text">복사</button>
						</div>
						<!-- 스펙아웃으로 인해 주석처리 -->
						<!-- <div class="check_wrap"><input type="checkbox" id="start_time"><label for="start_time"><span>00:00:01</span></label> 부터 재생 시작</div> -->
						<div class="sns_list">
														<button type="button" id="share_twitter" class="twitter"><span>트위터</span></button>
							<button type="button" id="share_facebook" class="facebook"><span>페이스북</span></button>
													</div>
					</li>
					<li>
						<div class="select_box">
							<a class="selected" href="javascript:;">640x360</a>
							<ul>
								<li><a href="javascript:;" data-width="640" data-height="360">640X360</a></li>
								<li><a href="javascript:;" data-width="854" data-height="480">854X480</a></li>
								<li><a href="javascript:;" data-width="960" data-height="540">960X540</a></li>
							</ul>
						</div>
						<!-- <div class="wrap_right">
                <div class="check_wrap"><input type="checkbox" id="chat_on"><label for="chat_on"><span>채팅노출</span></label></div>
                <div class="check_wrap"><input type="checkbox" id="auto_start"><label for="auto_start"><span>자동재생</span></label></div>
            </div> -->

						<div class="input_wrap">
							<input type="text" id="share_source" value="<iframe width='640' height='360' src='" readonly=""><button id="share_source_btn" type="text">복사</button>
						</div>
						<!-- 스펙아웃으로 인해 주석처리 -->
						<!-- <div class="check_wrap"><input type="checkbox" id="start_time_2"><label for="start_time_2"><span>00:00:01</span></label> 부터 재생 시작</div> -->

					</li>
				</ul>
			</div>
			<div class="pop-btn">
				<a href="javascript:;">취소</a>
			</div>
			<a href="javascript:;" class="pop-close"><span>닫기</span></a>
		</div>
		<!--//신규 공유 레이어 -->

		<div class="wrap-out" id="layerKickList" style="display:none;">
			<div class="layer_in">
				<strong class="title">강제퇴장인원</strong>
				<div class="total_p"><strong class="total">총 인원</strong> (<strong id="kickListCount">0</strong>명)</div>
				<div class="list_area">
					<div class="list-head">
						<strong class="nic">닉네임(아이디)</strong>
						<strong class="time">적용 시간</strong>
						<strong class="sysop">적용 BJ/매니저</strong>
						<strong class="out">강제퇴장</strong>
					</div>
					<div class="list-body">
						<ul id="kickList">
						</ul>
					</div>
				</div>
				<button type="button" id="refreshKickList" class="btn_refresh"><span class="blind">새로고침</span></button>
				<div class="btn_wrap"><a href="javascript:;" class="btn_st2">닫기</a></div>
				<a href="javascript:;" class="btn_close2">닫기</a>
			</div>
		</div>

		<!--운영자 강제 퇴장 패널티 강화 안내 width:340px;height:358px-->
		<div class="penalty-info" id="kickPenaltyInfoLayer" style="display: none;">
			<div class="layer_in">
				<strong class="title">운영자 강제 퇴장 패널티 강화 안내</strong>
				<div class="inwrap">
					<div class="penalty">
						<span class="icon af3"></span>
						<em>채팅은 소중한 컨텐츠입니다!</em>
						<p class="normal">아프리카TV 유저들을 위해 배려와 존중이 있는<br /> 따뜻한 채팅문화를 조성하도록 운영자가 더 노력하겠습니다.</p>
					</div>
					<div class="gr_box">
						<p class="red">운영자 강퇴 패널티 강화 내용</p>
						<div class="gry">※ 운영자 강퇴 시 24시간 채팅금지<br />※ 강퇴 누적 시 3일~7일 이용정지</div>
					</div>
				</div>
				<div class="btn_wrap">
					<a href="javascript:;" class="btn_st2">확인</a>
				</div>
				<a href="javascript:;" class="btn_close2">닫기</a>
			</div>
		</div>

		<!--운영자 강제 퇴장안내 width:350px;height:363px-->
		<div class="toejang" id="adminKickPenaltyLayer" style="display: none;">
			<div class="layer_in">
				<strong class="title">운영자 강제퇴장 안내 (강제퇴장 <span id="count"><strong class="red">1</strong>회차</span>)</strong>
				<div class="inwrap">
					<div class="penalty">
					</div>
					<div class="gr_box">
						타인비하, 인종/지역/성/직업/장애인 차별, <br>
						정치선동, 청소년 보호법 위반 등 <br>
						방송내용과 상관없이 소통을 방해하는 어그로성 채팅은 <br>
						강제퇴장 대상입니다.						<strong></strong><br>
						<a href="https://help.afreecatv.com/atv.php?type=exMailQuestion" class="btn_help" target="_blank"><span>고객센터 문의하기</span></a>
					</div>
				</div>
				<div class="btn_wrap">
					<a href="javascript:;" class="btn_st2">확인</a>
				</div>
				<a href="javascript:;" class="btn_close2">닫기</a>
			</div>
		</div>

		<!-- 휴면ID 정상 사용안내-->
		<div class="sleep" id="sleepLayer" style="display:none;">
			<div class="layer_in">
				<strong class="title">휴면ID 정상 사용 안내</strong>
				<div class="inwrap">
					<span class="icon"></span>
					<strong class="stit">휴면상태가 해제 되었습니다!</strong>
					<div class="desc" id="sleepLayerDesc">회원님의 아이디가 정상 로그인 처리되어<br>휴면(장기 미접속)상태가 해제 되었습니다.<br>아래 확인 버튼을 눌러주시면 정상적인 사용이 가능합니다.</div>
					<div class="btn_wrap_line"><a href="javascript:;" class="btn_st2">확인</a></div>
					<a href="javascript:;" class="btn_close2">닫기</a>
				</div>
			</div>
		</div>
		<!-- 나중에보기 안내 레이어 -->
		<div id="View_after" style="display:none;">
			<div class="view_after_title">

				<p class="Registration"><em></em>나중에 보기에 등록되었습니다.</p>
				<span class="vodMsg">보고 싶은 VOD나, 아직 보지 않은<br>VOD를 목록에 등록해 두고  언제든 간편하게 찾아보세요!</span>

				<p class="delete" style="display: none;"><em></em>나중에 보기가 삭제 되었습니다.</p>
				<span class="liveMsg" style="display: none;">라이브 방송을 시청할 수 없는 상황일 때<br> 목록에 담아두고 원하는 시간에 손쉽게 찾아 보세요!</span>

			</div>
			<div class="view_after_contents">
				<a>VOD의 “나중에 보기” 메뉴</a>에서<br>등록 한 영상을 확인 하실 수 있습니다.			</div>
			<div class="view_after_footer">
				<label for="close_layer"><input type="checkbox" id="close_layer" />다시보지않기</label>
				<button type="button" name="button" class="close">닫기</button>
			</div>
			<button type="button" name="button" class="layer_close">레이어 닫기</button>
		</div>
		<!-- 편집각 안내 레이어 -->
		<div id="edit_angle_layer" class="layer_s highlight"><div class="layer_in">
				<strong class="title">편집각이란?</strong>
				<div class="layer_ac">
					<strong>LIVE 도중 원하는 구간을 체크하는 기능</strong>으로<br>편집각으로 표시 된 구간은 다시보기 영상에서<br>확인 할 수 있습니다.				</div>
				<div class="btn_wrap_line">
					<a href="#" class="btn_st2">확인</a>
					<div class="never_see"><input type="checkbox"><label for="">더 이상 보지않기</label></div>
				</div>
				<a href="#" class="btn_close">닫기</a>
			</div></div>

		<div class="layer_l ppv_ticket" style="display:none;"><div class="layer_in">
				<strong class="title">본 방송은 티켓 구매 후 시청가능 합니다.</strong>
				<div class="layer_al">
					<div class="ppv_ticket_img"></div>

					<ul class="sub_list2">
						<li>상품명 : <strong>파이널판타지14 팬페스티벌 서울 시청 티켓</strong></li>
						<li>제공 기간 : 2018년 12월 31일까지</li>
						<li>상품 가격 : <strong class="color_bl">33,000원</strong></li>
						<li>주의사항 <br>
							<ul class="sub_list5">
								<li>-2018년 12월 31일까지 VOD로 시청하실 수 있습니다.</li> <!-- 2017-0816 -->
								<li>-특전 아이템 쿠폰은 생중계 또는 VOD 재생 후 쪽지로 자동
							  발송 됩니다. (재생 전에는 쿠폰이 발송되지 않습니다.)</li>
								<li>-동일한 계정으로 여러 기기 동시 재생이 불가합니다.</li>
							</ul>
						</li>
					</ul>

				</div>

				<!-- 웹용 버튼 -->
				<div class="btn_wrap">
					<a href="#" class="btn_st1">
						<span>티켓을 구매하시려면?</span>
						<strong>티켓구매</strong>
					</a>
					<a href="#" class="btn_st2">
						<span>티켓을 이미 구매하셨다면?</span>
						<strong>재생</strong>
					</a>
				</div>


				<a href="#" class="btn_close2">닫기</a>
			</div></div>

		<!-- 2018-0908 ff14 ppv 방송특전아이템 발급 완료  -->
		<div class="layer_m ppv_coupon" ><div class="layer_in">
				<div class="layer_ac">
					<strong class="layer_stit">특전아이템 쿠폰이 발급 되었습니다.</strong><br>발급된 쿠폰은 티켓 구매 페이지 또는 <br /> 쪽지함에서 확인하실 수 있습니다.				</div>
				<div class="btn_wrap"><a href="#" class="btn_st2">확인</a></div>
				<a href="#" class="btn_close">닫기</a>
			</div></div>

		<div class="layer_m ppv_login" ><div class="layer_in">
				<div class="layer_ac">
					본 방송은 로그인이 필요한 서비스 입니다.				</div>
				<div class="btn_wrap"><a href="#" class="btn_st2">로그인</a></div>
				<a href="#" class="btn_close">닫기</a>
			</div></div>

		<div class="layer_xl" id="layer_gudok_emoticon"><div class="layer_in">
				<div class="layer_ac">
					구독자 전용 이모티콘을 사용하려면 해당 BJ를 구독해야 합니다.<br>BJ를 구독하면 이모티콘 사용 뿐만 아니라<br>다양한 혜택을 받으실 수 있습니다.
					<strong class="par color_blk">해당 BJ를 구독하시겠습니까?</strong>
				</div>
				<div class="btn_wrap_line"><a href="javascript:;" class="btn_st1">구독</a> <a href="javascript:;" class="btn_st2">아니오</a></div>
				<a href="javascript:;" class="btn_close">닫기</a>
			</div></div>

		<div class="layer_m" id="layerBuySubscriptionNickname"><div class="layer_in">
				<div class="layer_ac">
					BJ를 구독하면 방송 채팅에서<br>구독 닉네임을 사용할 수 있습니다.<br><strong>구독 하시겠습니까?</strong>
				</div>
				<div class="btn_wrap_line"><a href="javascript:;" class="btn_st1">예</a> <a href="javascript:;" class="btn_st2">아니요</a></div>
				<a href="javascript:;" class="btn_close">닫기</a>
			</div></div>

		<div id="layerBuyNoneSubscription" class="pop_gudok">
			<div class="layer_in">
				<span class="lightbox"></span>
				<h2>구독하기</h2>
				<div class="info_area">
					<p class="info_msg01"><span class="cr01">아프리카TV</span><em>(AfreecaTV)</em>님을 구독하시겠습니까?</p>
					<div class="info_img">
						<ul class="blind">
							<li>구독료 후원</li>
							<li>채팅 효과</li>
							<li>구독자 전용 닉네임</li>
						</ul>
						<a href="https://item.afreecatv.com/subscription.php#benefit" target="_blank">구독혜택 더 보러 가기</a>
					</div>
				</div>
				<div class="send_area">
					<dl class="gd_select">
						<dt>구독권 선택</dt>
						<dd>
							<button class="active" data-itemId="700016" data-price="3300">월 자동결제</button>
							<button data-itemId="710265" data-price="9900">3개월</button>
							<button data-itemId="710266" data-price="19800">6개월</button>
							<button data-itemId="710267" data-price="39600">12개월</button>
						</dd>
						<dd class="tip">※ 구독을 이용할 기간을 선택해 주세요.</dd>
					</dl>
					<dl class="gd_total">
						<dt>결제 금액</dt>
						<dd><strong id="priceSubscription">3,300</strong> 원</dd>
					</dl>
					<div class="btn_area">
						<button class="btn_b">구독하기</button><button class="btn_w">취소</button>
					</div>
				</div>
				<a href="javascript:;" class="btn_close">닫기</a>
			</div>
		</div>

		<div id="layerBuySubscription" class="pop_gudok">
			<div class="layer_in">
				<span class="lightbox"></span>
				<h2>구독하기</h2>
				<div class="info_area">
					<p class="info_msg02"><span class="cr01">아프리카TV</span><em>(AfreecaTV)</em>님을 현재 구독하고 계십니다.<br><span class="cr02">※ 정기권으로 중복 구독하시면 구독 기간이 연장됩니다.</span></p>
				</div>
				<div class="send_area">
					<dl class="gd_date">
						<dt class="long">이용중인 구독권</dt>
						<dd>월 자동결제</dd>
					</dl>
					<dl class="gd_date gd_space">
						<dt>구독기간</dt>
						<dd>2017-07-17 ~ 현재(다음 결제일 : 2018-01-13)</dd>
					</dl>
					<dl class="gd_select">
						<dt>구독권 선택</dt>
						<dd>
							<button disabled="" data-itemId="700016" data-price="3300">월 자동결제</button>
							<button class="active" data-itemId="710265" data-price="9900">3개월</button>
							<button data-itemId="710266" data-price="19800">6개월</button>
							<button data-itemId="710267" data-price="39600">12개월</button>
						</dd>
						<dd class="tip">※ 구독을 이용할 기간을 선택해 주세요.</dd>
					</dl>
					<dl class="gd_total">
						<dt>결제 금액</dt>
						<dd><strong id="priceSubscription">9,900</strong> 원</dd>
					</dl>
					<div class="btn_area">
						<button class="btn_b">연장하기</button><button class="btn_w">취소</button>
					</div>
				</div>
				<a href="javascript:;" class="btn_close">닫기</a>
			</div>
		</div>

		<div id="layerSubscriptionInfomation" class="pop_gudok">
			<div class="layer_in">
				<span class="lightbox"></span>
				<h2>구독하기</h2>
				<div class="info_area">
					<p class="info_msg02"><span class="cr01">아프리카TV</span><em>(AfreecaTV)</em>님을<br>현재 구독하고 계십니다.</p>
				</div>
				<div class="send_area">
					<dl class="gd_date">
						<dt class="long">이용중인 구독권</dt>
						<dd>월 자동결제</dd>
					</dl>
					<dl class="gd_date gd_space">
						<dt>구독기간</dt>
						<dd>2017-07-17 ~ 현재(다음 결제일 : 2018-01-13)</dd>
					</dl>
					<div class="btn_area">
						<button class="btn_w">확인</button>
					</div>
				</div>
				<a href="javascript:;" class="btn_close">닫기</a>
			</div>
		</div>

		<div class="ui-pop award_vote" style="display: none;">
			<p class="pop-title">BJ Awards 투표</p>
			<div class="pop-body">
				<ul>
					<!-- template <li>
              <input type="radio" name="award" id="award1"><label for="award1"><strong>FlaSh.이영호(byflash)</strong>님을 <br> 2018 BJ Awards <span>종합게임부문</span>에 <br> 투표하시겠습니까?</label>
          </li>
          <li>
              <input type="radio" name="award" id="award2"> <label for="award2"><strong>FlaSh.이영호(byflash)</strong>님을 <br> 2018 BJ Awards <span>온라인게임부문</span>에 <br> 투표하시겠습니까?</label>
          </li> -->
				</ul>
			</div>
			<div class="pop-btn">
				<a href="javascript:;" class="btn btn_blue">확인</a>
				<a href="javascript:;" class="btn btn_white">취소</a>
			</div>
			<a href="javascript:;" class="pop-close"><span>레이어 닫기</span></a>
		</div>
	</div>
	<!-- //고정된 레이어 위치 -->
	<!-- //각종 레이어 위치 -->
</div>
<!-- 배경 딤처리-->
<div class="bg_dark"></div>
<!-- 툐스트 메세지-->
<div class="toast_message" style="display:none;">
	<div class="success"> <p></p><button type="button" class="close"><span>닫기</span></button> </div>
	<!-- <div class="warning"> <p>나중에 보기에 등록된 VOD입니다.</p><button type="button" class="close"><span>닫기</span></button> </div>
	<div class="error"> <p>나중에 보기에 등록된 VOD입니다.</p><button type="button" class="close"><span>닫기</span></button> </div> -->
</div>

<script type="text/javascript">
	//해외 로그인 처리
	function setSnsConnect(params) {
		var url =  LOGIN_8100 + "/afreeca/connect.php";
		if(params) url += "?" + $.param(params);

		var left = (0 + window.screenX); // IE에서 현재 모니터의 좌상단에 출력시키기 위함(모니터 여러개 쓰는 경우 대비)
		// weChat 때문에 사이즈 변경
		var options = 'resizable=1,scrollbars=yes,width=600,height=540,left='+left+',top=0';
		var pop = window.open(url, 'connect_sns', options);
		if(pop) pop.focus();
	}
	//해외 대응
	if(szLang != 'ko_KR') {
		$('.chocolate').hide();
		$('#btn_choco').hide();
	}
	//해외 로그인 처리
	$("#btnConnectFacebook").on('click',function(e){setSnsConnect({sns_code:'11',view : 'login'});});
	$("#btnConnectTwitter").on('click',function(e){setSnsConnect({sns_code:'12',view : 'login'});});
	$("#btnConnectGoogleplus").on('click',function(e){setSnsConnect({sns_code:'17',view : 'login'});});
		$(window).trigger('resize');

	//MAC 전용 스트리머 확인
	$(document).ready(function() {
		var userOs = navigator.userAgent.replace(/ /g,'');
		var linkUrl = '//afupd1.afreecatv.com/afreecatvstreamer_installer.exe';

		if(userOs.indexOf('MacOSX') >= 0) {
			linkUrl = '//afupd1.afreecatv.com/AfreecaTV_MAC_Installer.pkg';

			$('#layer_high_quality').find('.fs11').html('BJ가 설정한 화질로 시청하기 위해서는<br/> MAC OS 전용 고화질 스트리머가 필요합니다.');
		}

		$('#install_streamer').attr('href', linkUrl);

		if (typeof $oFeed != "undefined") {
			$oFeed.render({ 'target_id': 'FeedRoot' });
		}

		$('#logArea .nickname').click(function(event) {
			$("#subMenu").fadeOut(100);
			$("#userArea").fadeToggle(100);
			if (typeof($oFeed) != "undefined") {
				$oFeed.event.root.FeedHide(event);
			}
			return false;
		});

		$('#menuArea .btn_menu').click(function(event) {
			$("#userArea").fadeOut(100);
			$("#subMenu").fadeToggle(100);
			if (typeof $oFeed != "undefined") {
				$oFeed.event.root.FeedHide(event);
			}
			return false;
		});

		$(document).click(function(event) {
			$('#userArea, #subMenu').fadeOut(100);
			if (typeof($oFeed) != "undefined") {
				$oFeed.event.root.FeedHide(event);
			}
		});
	});
</script>
<script type="text/javascript">
	function setClick()
	{
		try {
			oAnalysisUtil.setClickLog('flashplayer_00000006', '', 'flash1');
		} catch (e) {
		}
	}
</script>
</body>
</html>
