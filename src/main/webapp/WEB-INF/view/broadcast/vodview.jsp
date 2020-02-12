<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!DOCTYPE html>
<html lang="ko">
<head>
    <title>제목 | 아프리카TV VOD</title><!-- <영상제목 | 아프리카TV VOD> 형식 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="keywords" content="아프리카TV,아프리카,개인방송,신대륙,UCC" />
    <meta name="Description" content="보이는라디오,개인방송 신대륙,아프리카TV" />
    <meta property="fb:app_id" content="118793551515130" />
    <META property="og:title" content="제목" />
    <META property="og:description" content="제목" />
    <META property="og:type" content="video" />
    <META property="og:image" content="http://iflv14.afreecatv.com/save/afreeca/station/2020/0114/00/thumb/1578929605399150_L_7.jpg" />
    <META property="og:image:width" content="600" />
    <META property="og:image:height" content="315" />
    <META property="og:video" content="http://vod.afreecatv.com/embed.php?isAfreeca=false&autoPlay=true&showChat=true&szBjId=afchamps&nStationNo=5865453&nBbsNo=9899549&nTitleNo=51129395&szCategory=00020000&szPart=NORMAL&type=station&szSysType=html5" />
    <META property="og:video:type" content="text/html" />
    <META property="og:video:width" content="640" />
    <META property="og:video:height" content="391" />
    <META property="og:site_name" content="AfreecaTV" />
    <META name="twitter:card" value="summary" />
    <META name="twitter:site" value="@AfreecaTV" />
    <META name="twitter:title" content="제목" />
    <META name="twitter:description" content="제목" />
    <META name="twitter:image" content="http://iflv14.afreecatv.com/save/afreeca/station/2020/0114/00/thumb/1578929605399150_L_7.jpg" />
    <META name="twitter:player" value="http://vod.afreecatv.com/embed.php?isAfreeca=false&autoPlay=true&showChat=true&szBjId=afchamps&nStationNo=5865453&nBbsNo=9899549&nTitleNo=51129395&szCategory=00020000&szPart=NORMAL&type=station&szSysType=html5" />
    <META property="twitter:player:width" content="640" />
    <META property="twitter:player:height" content="391" />
    <META name="weibo:video:embed_code" content="http://vod.afreecatv.com/embed.php?isAfreeca=false&autoPlay=true&showChat=true&szBjId=afchamps&nStationNo=5865453&nBbsNo=9899549&nTitleNo=51129395&szCategory=00020000&szPart=NORMAL&type=station&szSysType=html5" />
    <link rel="shortcut icon" type="image/x-icon" href="http://res.afreecatv.com/afreeca.ico" />

    <!-- <link rel="stylesheet" type="text/css" href="http://res.afreecatv.com/css/default1.css" /> -->
    <!-- <link rel="stylesheet" type="text/css" href="http://res.afreecatv.com/css/global/flashplayer/video.css" /> VOD플레이어 기본 CSS -->
    <!-- <link rel="stylesheet" type="text/css" href="http://res.afreecatv.com/css/global/flashplayer/pop_layer.css" /> 팝업레이어 CSS -->
	<!-- 2019-0618 css 경로 정리 -->
	<link rel="stylesheet" type="text/css" href="http://res.afreecatv.com/css/global/common_set.css" />
	<link rel="stylesheet" type="text/css" href="http://res.afreecatv.com/css/global/webplayer/webplayer_vod.css" /> <!-- 웹플레이어용 css -->
	<link rel="stylesheet" type="text/css" href="http://res.afreecatv.com/css/global/chat/chat_wrap_vod.css" /> <!-- 채팅용 css -->
	<!-- //2019-0618 css 경로 정리 -->

    <!-- ie7이하 브라우저 -->
    <!--[if lte IE 7]>
        <link rel="stylesheet" type="text/css" href="http://res.afreecatv.com/css/global/flashplayer/for_ie_old.css" />
    <![endif]-->

    <script type="text/javascript" src="http://res.afreecatv.com/script/common/jquery.js"></script>
    <script type="text/javascript" src="http://static.afreecatv.com/asset/service/config/constant.js"></script>
    <script type="text/javascript" src="http://res.afreecatv.com/script/new_main/common.js"></script>
    <script type="text/javascript" src="http://live.afreecatv.com/script/locale/ko_KR/ucc_category.js?_=2019121111" charset="euc-kr"></script>
    <script type="text/javascript" src="http://static.afreecatv.com/asset/app/main/doT.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="http://static.afreecatv.com/asset/app/notification/ko_KR/noti.min.js"></script>
    <script type="text/javascript" src="http://res.afreecatv.com/script/new_main/afreecacook.js"></script>
    <script type="text/javascript" src="http://static.afreecatv.com/asset/service/common/common_analysis.js"></script>
    <script type="text/javascript">
        document.domain = 'afreecatv.com';

        var nPageNo = 1;
        var member = null;
        var api = null;
        var playerCommon = null;
        var _doT = doT;

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

        if (getIeVersion() == '7.0' ||  getIeVersion() == '8.0') {
            alert("익스플로러 10 이상부터 이용 가능합니다.");
            location.href = AFREECA;
        }
        else if (getIeVersion() == '9.0') {
            // ie 9는 얼럿으로 안내문구만 표시
            alert("서비스 이용이 원활하지 않을 수 있습니다.\n익스플로러 10 이상으로 이용해주세요.");
        }
    </script>

    <script type="text/javascript" src="http://static.afreecatv.com/asset/app/vod/dist/ko_KR/player.min.js?_=2019121213"></script>
    <script type="text/javascript" src="http://static.afreecatv.com/asset/library/requirejs/2.1.14/require.js"></script>
    <script type="text/javascript" src="http://static.afreecatv.com/asset/library/afreeca/atv.min-1.5.js"></script>
    <script type="text/javascript" src="http://login.afreecatv.com/login_script.php"></script>
</head>
<!-- 전체화면에서 채팅 오픈시 출력 -->
<!-- 다시보기 채팅있을 경우 replay 클래스 추가 -->
<body class="ko_KR   " data-click="true"><!-- 스크린모드 클릭 시 smode 추가됨 -->

<!--
    2019.02.26
    vod일 경우 클래스 webplayer_vod 추가
-->
<div id="webplayer" class="list_open  webplayer_vod">
    <!-- webplayer_top -->
<div id="webplayer_top">
    <!--logo에 VOD 클래스 추가-->
    <h1 class="logo vod">
        <a href="index.shop" title="쿠프리카TV 홈으로">
            <!-- <img src="http://res.afreecatv.com/images/flashplayer/video/logo.gif" alt="아프리카TV" /> -->
        </a>
        <a href="vodreplay" class="vod" title="VOD 홈으로">VOD</a>
    </h1>
    <!-- <h2 class="h2_video"><a href="http://vod.afreecatv.com" title="VOD 홈으로">VOD</a></h2> -->

    <!--배너영역 -->
    <!-- <div class="banner">
        <a href="\n"><img src="http://res.afreecatv.com/images/flashplayer/@bn1.jpg" alt="광고용 베너"></a>
    </div> -->
    <!--//배너영역 -->

    <!-- top_item -->
    <div class="top_item">
        <div id="FeedRoot" class="feed_area"></div>
        <div class="log_area" id="loginArea">
            <!-- on 클레스로 로그인상태 활성화 -->
            <!-- 로그인 전 -->
                            <button type="button" class="btn_more" id="btnMore" tip="설정" style="display: none;">설정</button>
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
                        <li><a href="//sotong.afreecatv.com" class="my_sotong" target="_blank">소통센터</a></li>
                        <li><a href="//help.afreecatv.com/atv.php" class="my_custom" target="_blank">고객센터</a></li>
                        <li><a href="//www.afreecatv.com/afreeca_intro.htm" class="my_service" target="_blank">서비스 소개</a></li>
                    </ul>
                </div>
                        <a href="javascript:;" class="nickname" id="loginAction" style="display: none;"><span>로그인</span></a>
            <!-- 로그인 후 -->
            <a href="javascript:;" class="nickname" id="loginInfo" style="display: none;"><span></span></a>
            <!-- 개인화 레이어 -->
            <div class="user_area" id="layerLoginInfo">
                <div class="btn_set1">
                    <a href="http://bj.afreecatv.com/" target="_blank" class="mybs" id="myBjAfreeca"><span>방송국</span></a>
                </div>
                <ul class="my_tlist">
                    <li><a class="my_item" href="http://point.afreecatv.com/report/AfreecaUseList.asp"><span>내 아이템</span></a></li>
                    <li><a class="my_balloon" href="http://point.afreecatv.com/report/afreecaballoonlist.asp"><span>내 별풍선</span></a></li>
                                            <li><a class="my_gd" href="http://point.afreecatv.com/Subscription/SubscriptionList.asp"><span>내 구독</span></a></li>
                        <li><a class="my_spon" href="http://adballoon.afreecatv.com/statistic.php"><span>내 애드벌룬</span></a></li>
                        <li><a class="my_bene" href="http://adrevenue.afreecatv.com"><span>내 광고수익</span></a></li>
                        <li><a class="my_point" href="//mypoint.afreecatv.com/index.php?szWork=status"><span>내 포인트</span></a></li>                        
                        <li><a class="my_tk" href="http://token.afreecatv.com/index.php?page=my_list"><span>내 토큰</span></a></li>                        
                        <li><a class="my_stat" href="http://broadstatistic.afreecatv.com"><span>내 통계</span></a></li>
                                        <li><a class="my_message" href="http://note.afreecatv.com/app/index.php"><span>내 쪽지 </span><span class="cnt" id="myNoteCnt">0</span><span>개</span></a></li>
                </ul>
                                    <!--151031-->
                    <ul>
                        <li><a href="http://shop.afreecatv.com/mypage" class="my_shopping">MY쇼핑</a></li>
                    </ul>
                    <!--//151031-->
                    <div class="mode_set">  <!-- 2019-1031  -->
                        <strong class="my_mode">어두운모드</strong>
                        <input type="checkbox" id="modecheck2">
                        <label class="modecheck" for="modecheck2"></label>
                        <p>이 브라우저에만 적용됩니다</p>
                    </div>
                                <div class="btn_set2">
                    <a href="https://member.afreecatv.com/app/user_info.php" class="my_info">내 정보</a>
                    <a href="https://member.afreecatv.com/app/user_security.php" class="my_info_security"><em>내 정보 보호</em></a>
                    <a href="javascript:;" id="logoutAction" class="logout">로그아웃</a>
                </div>
            </div>
            <!-- // 개인화 레이어 -->
        </div>
        <!--뷰 컨트롤 영역 -->
        <ul class="view_ctrl">
                        <li class="btn_list" id="btnList"><button type="button"><span>방송리스트</span></button></li>
            <!-- <li class="airlist"><a href="javascript:;" id="btnList" class="on">방송리스트</a></li> -->
            <li class="btn_list_bookmark"><button type="button"><span>즐겨찾기</span></button></li>
        </ul>
        <!--// 뷰 컨트롤 영역 -->
        <div class="search" id="searchArea">
            <form name="oSearchForm" action="http://www.afreecatv.com/total_search.html" accept-charset="" onsubmit="return false;" method="post">
                <input type="hidden" id="szSearchType" name="szSearchType" value="video"/>
                <input type="hidden" name="szStype" value=""/>
                <input type="hidden" id="szKeywordhidden" name="szKeywordhidden" />
                <input type="text" id="szKeyword" class="input_text" name="szKeyword" autocomplete="off" maxlength="20" size="20" />
                <button type="button" class="btn_search" id="btnSearch"><span>검색하기</span></button>
                <div class="search_list" id="searchList">
                    <!--자동검색어-->
                    <div class="list_title" id="searchTitle"></div>
                    <ul id="searchContent">
                        <!-- 전체 삭제 버튼은 js에서  -->
                    </ul>
                </div>
            </form>
        </div>
    </div>
    <!-- // top_item -->
</div>
<!-- // webplayer_top -->
<button type="button" class="btn_top" style="display:none" id="top_button"><span>top</span></button> <!--  2017-1123 탑버튼 추가-->    <!-- webplayer_scroll -->
    <div id="webplayer_scroll">
        <!-- webplayer_contents(contbox) -->
        <div id="webplayer_contents">
            <!-- top_vod-smode-use -->
            <div class="top_vod-smode-use">
                <!-- player_area (영상 출력영역) -->
                <div id="player_area">
                    <!-- htmlplayer_wrap (영상소스) -->
                    <div class="htmlplayer_wrap" data-float="true">
                        <div class="htmlplayer_content">
                            <div class="afreecatv_player_size"><div></div></div>
                            <div class="float_box" id="floatBox">
                                <!-- 플레이어 영역 -->
                                    <link rel="stylesheet" type="text/css" href="http://res.afreecatv.com/css/global/jquery.tag-editor.css" >
    <!-- <link rel="stylesheet" type="text/css" href="http://res.afreecatv.com/css/global/flashplayer/chat_layer.css" /> -->
    <!-- 커스텀 스롤 CSS -->
    <!-- <link rel="stylesheet" type="text/css" href="http://res.afreecatv.com/css/global/flashplayer/trackpad-scroll-emulator.css" />
    <script type="text/javascript" src="http://res.afreecatv.com/script/jquery.trackpad-scroll-emulator.js"></script> -->
    <script type="text/javascript" charset="utf-8" src="http://res.afreecatv.com/script/swfobject.js"></script>
    <script type="text/javascript" src="http://res.afreecatv.com/script/jquery/plugins/jquery.dotdotdot.min.js"></script>
    <script type="text/javascript" src="http://res.afreecatv.com/script/common/tags.js"></script>
    <script type="text/javascript">
        if(typeof(szLang) == 'undefined'){
            var szLang = 'ko_KR';
        }

        var isDev = Boolean();
        var vodPlayer;
        var playerEventInterface;
        var playerCommon = null;    // embed 에서는 바닥 페이지랑 공유할 필요 X

        document.domain = 'afreecatv.com';
        document.EVENT_IMG = 'http://event.img.afreecatv.com';
        document.LOCALE_LANG = 'ko';
        document.isIframe = Boolean('');
        document.isPreview = Boolean('');
        document.VodParameter = 'type=station&isAfreeca=true&autoPlay=true&showChat=true&expansion=true&szBjId=afchamps&nStationNo=5865453&nBbsNo=9899549&nTitleNo=51129395&szCategory=00020000&szPart=NORMAL&szVodType=STATION&path1=vod_main&path2=list&path_key=0xef8161bfbee3c02b_51129395_1578986030417';
		document.isSkipAdult = 0;

        // 유입경로 진입 타입 파악
        var szEntryCheck = navigationType();

        // 새로 고침으로 재 진입된 경우 파악
        if(szEntryCheck == 'reload'){
            // 변경할 path1 정보
            var szChangePath1 = 'path1=' + szEntryCheck;
            // 새로 고침의 경우 path1경로는 무조건 etc인데, 이걸 변경 시켜줌
            document.VodParameter = document.VodParameter.replace('path1=etc', szChangePath1);
        }

        // 네비게이션 정보 체크 함수
        function navigationType() {

            var result;
            var returnResult;
            var p;

            // 이전 버전의 네비게이션 체크 현재 중단 상태
            if (window.performance.navigation) {
                result = window.performance.navigation;
                if (result == 255) { result = 4 } // 4 is my invention!
            }

            // 새로 제공되는 네비게이션 체크, 지원안하는 버전들도 있기 때문에 위의 중단 구문과 같이 체크해줌
            if (window.performance.getEntriesByType("navigation")) {
                p = window.performance.getEntriesByType("navigation")[0].type;

                if (p == 'navigate') { result = 0 }
                if (p == 'reload') { result = 1 }
                if (p == 'back_forward') { result = 2 }
                if (p == 'prerender') { result = 3 } //3 is my invention!
            }

            if(result == 0){
                returnResult = 'navigate';
            }else if(result == 1){
                returnResult = 'reload';
            }else if(result == 2){
                returnResult = 'back_forward';
            }else{
                returnResult = '';
            }


            return returnResult;
        }
    </script>
    <!-- embed 직접 호출 케이스 일때도, 유입경로 세팅을 위해 추가시킴 -->
    <script type="text/javascript" src="//res.afreecatv.com/script/new_main/afreecacook.js"></script>
    <script type="text/javascript" src="//static.afreecatv.com/asset/service/common/common_analysis.js"></script>
    <script type="text/javascript" src="//static.afreecatv.com/asset/app/vodplayer/ko_KR/VodPlayer.min.js?_=2019122711"></script>

<!--
상황별 출력 클레스
mouseover -> 마우스 오버 시 출력 , 스크립트 로 관리됨
video -> VOD플레이어로 변경
blind_ctrn_output -> 컨트롤바 출력
 -->
<div id="afreecatv_player" class="mouseover video"><!--prda adcon일 경우에만 들어감-->
    <!-- 플에이어  사이즈 비율 출력 엘리먼트   -->
    <div class="afreecatv_player_size"></div>

    <!--  기본로고 출력 -->
    <div class="default_logo" style="display: none;">afreecaTV</div>
    <!-- 2018-0907
		사전탐방 송출제한  엘리먼트 이동 (tuneou)   , 기본값은 none
		smode , extend_mode , 퍼가기 모드출력될 수 있도록  css 컨트로
		로고는
	-->
	<div class="player_info" style="">
		<div class="tuneout" style=" display:none; "><p>사전 협의되지 않은 탐방 및 재송출은 정중히 사절합니다.</p></div>
		<div class="title"> <!-- -->
			<div>
				<span id="bjNick">챔스중립1</span>
				<span id="viewerCnt"><em></em>505</span>
			</div>
			<h1 id="broadTitle">제목</h1>
                    </div>
    </div>

    <!-- 비디오 영역 -->
    <div id="videoLayer">
        <div id="video"></div>
    </div>

    <div id="videoLayerCover" tabindex="1" style="position: absolute;top: 0;left: 0;right: 0;bottom: 0;z-index: 2;"></div>

    <!-- 워터마크 -->
    <!-- tl , tc , tr  , bl , bc , br  클레스로 포지션 지정 , 포지션 지정되지 않을시 출력되지 않음
        opacity 클레스 추가시 불투명하게 출력 -->
    <div class="watermark opacity" style="display: none;">afreecaTV</div>

    <!-- body 에  embedded_mode 클레스 추가시 출력됨-->
    <!--<h1 class="player_title"> <span></span><strong>AfreecaTV</strong> </h1>-->
    <!-- 플레이어 컨트롤 버튼 -->
    <div class="player_ctrlBox" tabIndex="1" style="display: none;">
        <div class="ctrl">
            <div class="progress">
                <div class="progress_track" aria-label="재생 진행 상태 바">
                    <div class="video_thumbnail">
                        <!-- <img src="http://loremflickr.com/126/69" alt=""> -->
                        <span><em></em></span>
                    </div>
                    <div class="watched" style="width:0%;"></div>
                    <button class="handler" style="left:0%;" aria-label="재생 상태 컨트롤러"><span></span></button>
                    <div class="download" style="width:0%;"></div>
                    <div class="progress_bar"></div>
                    <div class="highlight_bar" style="left: 60%; width: 10px; display: none;"></div>
                    <div class="ending_credit_bar" style="right: 0; width: 10px; display: none;"></div>
                    <div class="edit_angle_track" style="left: 0; width: 0%; display: none;"></div>
                </div>
            </div>



            <!-- 재생버튼 stop 클레스 변경시 정지버튼으로 변경됨 -->
            <button type="button" class="play" aria-label="재생,일시정지 버튼"></button>
            <!-- <button type="button" class="bnt_next_play" aria-label="다음 재생"></button>
            <button type="button" class="pause" aria-label="일시정지"></button>
            <button type="button" class="btn_refresh" aria-label="새로고침"></button> -->

            <button type="button" class="btn_refresh" aria-label="다시 재생" style="display: none;"></button>

            <!-- 볼륨 -->
            <div class="volume">
                <button type="button" class="sound" id="btn_sound" aria-label="볼륨 버튼"><span></span><span></span></button>
                <div class="volume_slider_wrap">
                    <div class="volume_slider" aria-label="볼륨 크기 조절">
                        <div class="volume_range" style="width: 50%;"></div>
                        <button class="volume_handler" style="left:50%;"></button>
                    </div>
                </div>
            </div>

            <div class="time_display">
                <span class="time-current" id="time-current" aria-label="현재 재생 시간">00:00:00</span>/<span class="time-duration" aria-label="전체 재생 시간">00:00:00</span>
            </div>

        </div>

        <div class="right_ctrl" id="rightCtrl">
            <!-- 임베디드 아프리카티비 바로가기 -->
            <!--<button type="button" class="btn_afreecatv"> <div class="tooltip"><span>아프리카 티비에서 보기</span><em></em></div> </button>-->
            <button type="button" class="btn_statistics controlBtn" data-layer="star2stat" style="display: none;"><em></em><span>방송 별별통계</span></button>

            <!-- 편집각 -->
            <div class="edit_angle_box" id="edit_angle_box">
                <button type="button" class="btn_editangle controlBtn" data-layer="editangle"><em></em><span>편집각 보기</span></button>
                <!-- bj 클레스 추가 시 하이라이트 버튼 출력 -->
                <ul class="edit_angle_layer" id="edit_angle_layer">
                </ul>
                <script id="tpl_editangle_box" type="text/x-dot-template">
                    {{~it :value:index}}
                    <li>
                        <div>
                            <span name="edittime">{{=value.edit_time.convertSecondToTime()}}</span>
                            <span>{{=value.user_nick}}
                            {{? value.user_id == value.bj_id}}
                                <em>BJ</em>
                            {{?}}
                            </span>
                            {{? value.highlight_status == 2}}
                            <button type="button" data-idx="{{=value.idx}}" data-title_no="{{=value.title_no}}" data-station_no="{{=value.station_no}}" data-bbs_no="{{=value.bbs_no}}" class="btn_delete">하이라이트 삭제</button>
                            {{??}}
                            <button type="button" data-idx="{{=value.idx}}" data-edit_time="{{=value.highlight_edit_time}}">하이라이트 생성</button>
                            {{?}}
                        </div>
                    </li>
                    {{~}}
                </script>
            </div>

            <div class="setting_box" id="settingBox" style="display: none;"> <!--  off 클레스 추가시 작동 안함 -->
                <button type="button" class="btn_setting controlBtn" data-layer="setting">setting<div class="tooltip"><span>설정</span><em></em></div></button> <!--설정 버튼 추가  2017-0307 -->
                <div class="setting_list" style="display: none;">
                    <ul>
                        <li id="seektime_box" style="display:none;"><span>스킵시간설정</span><button type="button" id="current_seektime"><em></em></button></li>
                        <li id="quality_list" style="display:none;"><span>화질변경</span><button type="button" id="current_level"><em></em></button></li>
                        <li id="speed_box" style="display:none;"><span>재생속도</span><button type="button" id="current_speed">기본<em></em></button></li>
                    </ul>
                    <div class="quality">
                        <a href="javascript:;" class="beforeSetting"><em></em>이전</a>
                        <ul id="quality_levels">
                        </ul>
                        <script id="tpl_quality_vod" type="text/x-dot-template">
                        {{~it :value:index}}
                            <li>
                                <button type="button" data-quality="{{=value.level}}" data-qualityname="{{=value.name}}" data-bitrate="{{=value.bitrate}}" data-resolution="{{=value.resolution}}">{{=value.label}}<em></em></button>
                            </li>
                        {{~}}
                        </script>
                    </div>
                    <div class="speed">
                        <a href="javascript:;" class="beforeSetting"><em></em>이전</a>
                        <ul id="speed_list">
                        </ul>
                        <script id="tpl_playbackRate" type="text/x-dot-template">
                            {{~it.playbackRate :value:index}}
                                <li><button type="button" class="selectSpeed" data-speed="{{=value.speed}}"><span>{{=value.name}}</span><em></em></button></li>
                            {{~}}
                        </script>
                    </div>
                    <div class="skip_time">
                        <a href="javascript:;" class="beforeSetting"><em></em>이전</a>
                        <ul id="seektime_list">
                        </ul>
                        <script id="tpl_seekTime" type="text/x-dot-template">
                            {{~it.seekTime :value:index}}
                                <li><button type="button" class="selectSkipTime" data-time="{{=value.time}}"><span>{{=value.name}}</span><em></em></button></li>
                            {{~}}
                        </script>
                    </div>
                </div>
            </div>

            <!-- 임베디드 공유하기 -->
            <button type="button" id="btnShare" class="btn_share" data-layer="share" style="display:none;"><div class="tooltip"><span>공유하기</span><em></em></div> </button>
            <!-- PIP모드 -->
            <button type="button" class="btn_pip_mode" style="display:none;">
                <div class="tooltip"><span>PIP 모드(p)</span><em></em></div>
            </button>
            <!-- 씨네마 -->
            <button type="button" class="btn_smode" data-layer="screen" style="display:none;"><div class="tooltip"><span>스크린모드(s)</span><em></em></div> </button>
            <!-- 전체모드 -->
            <button type="button" class="btn_extend_mode" data-layer="fullscreen"><div class="tooltip"><span></span><em></em></div> </button>
            <!--채팅 버튼 -->
            <button type="button" class="btn_chat" style="display:none;"> <div class="tooltip"><span>채팅창</span><em></em></div></button>

        </div>

    </div>

    <!-- 전체화면 지원하지 않는 브라우저일때 팝업 -->
    <div class="layer_bx" style="display: none;">
        전체 화면을 사용 할 수<br>없습니다.    </div>

    <!-- 중앙버튼 z-index 25 -->
    <div class="center_btn" style="display: none;">
        <button type="button" class="btn_cneter_play" style="display: none;"><span>PLAY</span></button>
        <!-- <button type="button" class="btn_cneter_pause"><span>PAUSE</span></button> -->
        <div class="volume_icon" style="display: none;"><span></span><span></span><span></span><span></span><span></span></div>
        <div class="fast_forward" style="display: none"><span></span><em></em></div>
        <div class="rewind" style="display: none"><span></span><em></em></div>
    </div>

        <!-- 170106 추가 -->
    <div class="control-vr" style="display: none;">
        <div class="control-box">
            <div class="body"><span class="direction"></span></div>
            <button type="button" class="top"><span>상</span></button>
            <button type="button" class="bottom"><span>하</span></button>
            <button type="button" class="left"><span>좌</span></button>
            <button type="button" class="right"><span>우</span></button>
        </div>
    </div>

    <!-- n초 앞,뒤로 이벤트 -->
    <div class="center_msg" style="display: none;"><span></span></div>

    <!-- on off 클레스 열림  닫힘 , 아무것도 없을 시 미출력 -->
    <div class="live_alert off" id="liveAlert" style="display: none;">
        <div>
            <a href="javascript:;" id="liveAlertInfo">
                <em class="live">LIVE</em>
                <img src="" alt="" />
                <p>지금 생방송을 진행 중입니다.</p>
                <span><i>1,541</i>명 시청중</span>
            </a>
        </div>
        <button type="button"><span>열기,닫기</span></button>
    </div>


    <!-- on off 클레스 열림  닫힘 , 아무것도 없을 시 미출력 -->
    <div class="btn_bookmark off" style="display: none;">
        <button type="button"><span><em></em>즐겨찾기</span></button>
    </div>

    <!-- 화면 블라인드 상태 -->
    <div class="video_blind" style="display:none;">
        <div class="video_blind_in">
            <div class="content">

                <!-- VOD 플레이어 성인 -->
                <div class="type_adult" style="display:none;">
                    <div class="btn_adult_play">
                        <button type="button"><span>PLAY</span></button>
                        <p><span>본 VOD는 만 <em>19세 이상 성인</em>만 시청 가능합니다.</span></p>
                    </div>
                </div>
                <!-- // VOD 플레이어 성인 -->

                <!-- 부분 19금 2017-0607-->
                <div class="type_adult_skip" style="display:none;">
                    <h2>19</h2>
                    <p>이 정보내용은 청소년 유해매체물로서 정보통신망 <br> 이용촉진 및 정보보호등에 관한 법률 및 청소년 보호법의 규정에 <br> 의하여 만 19세 미만의 청소년 이용 불가 구간이 포함되어있습니다.</p>
                    <p style="display:none;" name="LoginNone" class="strong"><em>시청 불가</em> 구간 포함하여 보시려면 <em>로그인</em> 을 <br> 제외하고 보시려면 <em>시청하기</em> 를 눌러주세요.</p>
                    <p style="display:none;" name="CertNone" class="strong"><em>시청 불가</em> 구간 포함하여 보시려면 <em>성인인증</em> 을 <br> 제외하고 보시려면 <em>시청하기</em>를 눌러주세요.</p>
                    <p style="display:none;" name="AdultNone" class="strong"><em>만 19세 미만 시청 불가  구간을</em> 제외한 부분만 시청하시겠습니까?</p>
                    <div class="btn_set">
                        <button name="login" type="button"><span>로그인</span></button>
                        <button name="adult_cert" type="button"><span>성인인증</span></button>
                        <button name="skip_view" type="button"><span>시청하기</span></button>
                    </div>
                </div>
                <!-- // 부분 19금 -->

                <!-- 모바일 일시정지 -->
                <div class="type_mobile_pause" style="display:none;">
                    <h2>비밀번호 설정 방송</h2>
                    <p>방송을 보려면 BJ가 정해놓은 비밀번호를 입력해야 합니다.</p>
                </div>
                <!-- 모바일 일시정지 -->

                <!-- 공통케이스 -->
                <div class="type_common" style="display:none;">
                </div>
                <!-- //공통케이스 -->

            </div>
        </div>
    </div>

    <!-- 로딩바 -->
    <div class="loading" style="display: none;"><span></span></div>
    <!-- //로딩바 -->
    <!-- 버퍼링 바 -->
    <div class="buffering" style="display: none;"><span></span></div>
    <!-- //버퍼링 바 -->

    <!-- 미리보기 타이머 -->
    <span class="preview_play_cnt"></span>
    <!-- //미리보기 타이머 -->

    <!-- 광고영역 -->
    <!-- 2016-1007 -->
    <div class="promotion_area" style="display:none;" id="promotion_area_id">
        <a href="javascript:;"></a>
    </div>
    <button type="button" class="promotion_area_left"><span>CLICK</span><em>-00:00</em></button>
    <button type="button" class="promotion_area_right"><em>10</em><span>초 후 광고 SKIP</span></button>

    <!-- 추천방송 -->
    <div class="recommend_broadcast" style="display: none ;">
        <ul>
        </ul>
    </div>

    <!--  다음 VOD 2017-04-19 추가 -->
    <div class="nextvideo">
        <dl>
            <dt class="tit">다음 VOD</dt>
            <dd class="stit">title</dd>
            <dd class="nextplay"><a href="javascript:;">VOD 보기</a></dd>
        </dl>
        <em class="cancel"><a href="javascript:;">자동재생 취소</a></em>
        <span class="timer"><em>7초</em> 후 자동재생</span>
        <span class="bg"></span>
    </div>
    <!-- //다음 VOD -->

    <!--  별풍선 애니메이션 2017-04-19 추가 -->
    <div class="stargift_invideo">
        <span class="sname"><em>nickName</em>님</span>
        <span class="memo"><em>300</em>개 선물!</span>
        <span class="balloon"><img src="http://www.afreecatv.com/images/flashplayer/video/ba1.png" alt="별풍선"></span>
        <em class="close"><a href="javascript:;" title="별풍선 애니메이션 닫기">닫기</a></em>
    </div>

    <!--adcon -->
    <div class="adballoon_icon" id="adballoonIcon" style="display: none;">
		<a href="javascript:;" class="adcon-area" id="adconArea">
			<span class="thumb"><img src="http://res.afreecatv.com/images/afmain/img_thumb_profile.gif"></span>
			<span class="con_desc">
				<span class="area">
					<em class="con_tit">ADCON</em>
					<span class="con_stit">BJ가 선택한 ADCON 클릭</span>
				</span>
			</span>
		</a>
		<button type="button" class="adballoon_close" id="adconClose"><span></span></button>
    </div>

    <!-- //adcon-->
    <div class="video_main_thumbnail" style="cursor:pointer;"></div>

    
    <div class="statistics_list" style="display:none;">
        <div class="statistics_list_header"><span>방송 별별통계</span></div>
        <div class="statistics_list_contents" id="star2StatList">

        </div>
        <a href="javascript:;" id="closeStatList" class="close">close</a>
    </div>

    <div class="graph_wrap" style="display: none;">  <!-- on 클레스 추가로 출력 -->
        <div class="statistics_graph" id="statGraph"></div>
        <div class="revitalize_graph">
            <div id="revitalizeGraph">
                    <!-- 실체 출력되는 그래프는 플러그인에서 넓이값 입력됨  그래프 출력 -->
            </div>
        </div>
        <div class="graph_hover" id="hoverGraph"></div>
        <a href="javascript:;" id="closeGraph" class="close">close</a>
    </div>

    <div class="statistics_section">
        <button type="button" id="statPre" style="display: none;"><span><em></em>이전</span></button>
        <button type="button" id="statNext" style="display: none;"><span><em></em>다음</span></button>
    </div>

    <!-- 플레이어 내부의 bgDark -->
    <div id="bgDarkPlayer" class="bg_dark" style="display:none;"></div>
</div>
<!-- afreecatv_player -->

<!-- VOD 재생시점 이어보기 2017-0711-->
<div class="layer_s layerWatchTime" style="margin: -57px  0 0 -141px; display: none;" id="layerWatchTime">
    <div class="layer_in">
        <div class="layer_ac">이전에 시청한 지점에서 <br> 이어보시겠습니까?</div>
    <div class="btn_wrap"><a href="javascript:;" class="btn_st1" data-time="0">이어보기</a> <a href="javascript:;" class="btn_st2">아니요</a></div>
    <a href="javascript:;" class="btn_close">닫기</a>
    </div>
</div>
<!-- VOD 재생시점 이어보기 2017-0711-->

<script type="text/javascript">
    $(function(){
        $('#afreecatv_player').addClass('video');
        //$('.player_item_list').hide();
    })
</script>

<div class="layer_wrap">
    <div class="ui-pop improve share_broadcast_layer" id="layerShare" style="display: none;">
        <div class="pop-title">공유하기</div>
        <div class="pop-body">
            <ul class="tab" id="shareTab">
                <li class="shareTabClass on" data-menu="shareTabURL"><a href="javascript:;">URL</a></li>
                <li class="shareTabClass" data-menu="shareTabEmbed"><a href="javascript:;">퍼가기</a></li>
            </ul>
            <ul class="tab_contents" id="shareTabContents">
                <li class="on" id="shareTabURL">
                    <div class="input_wrap">
                        <input type="text" value="" readonly="" id="share_link"><button type="text" class="shareCopyBtn">복사</button>
                    </div>
                    <!-- 스펙아웃으로 인해 주석처리 -->
                    <!-- <div class="check_wrap"><input type="checkbox" id="start_time"><label for="start_time"><span>00:00:01</span></label> 부터 재생 시작</div> -->
                    <div class="sns_list">
                                                <button type="button" id="share_twitter" class="twitter"><span>Twitter 공유</span></button>
                        <button type="button" id="share_facebook" class="facebook"><span>Facebook 공유</span></button>
                                            </div>
                </li>
                <li class="" id="shareTabEmbed">
                    <div class="select_box" id="shareSelectBox">
                        <a href="javascript:;" id="shareResolution">640x360</a>
                        <ul>
                            <li><a class="shareResultionList" href="javascript:;" data-width="640" data-height="360">640x360</a></li>
                            <li><a class="shareResultionList" href="javascript:;" data-width="854" data-height="480">854x480</a></li>
                            <li><a class="shareResultionList" href="javascript:;" data-width="960" data-height="540">960x540</a></li>
                        </ul>
                    </div>
                    <div class="wrap_right">
                                                <div class="check_wrap"><input type="checkbox" id="auto_start"><label for="auto_start"><span>자동재생</span></label></div>
                    </div>

                    <div class="input_wrap">
                        <input type="text" id="share_source" value="" readonly=""><button type="text" class="shareCopyBtn">복사</button>
                    </div>
                </li>
            </ul>
        </div>
        <div class="pop-btn">
            <a href="javascript:;" class="closeShare">취소</a>
        </div>
        <a href="javascript:;" class="pop-close closeShare"><span>닫기</span></a>
    </div>
</div>

<!-- 편집각 하이라이트 만들기 2018-0201 -->
<div class="layer_xl highlight" id="editangle_hightlightbox" style="margin: -152px  0 0 -213px; display: none;">
    <div class="layer_in">
        <strong class="title">편집각</strong>
        <div class="layer_ac">
            <dl><dt>제목</dt><dd><input type="text" id="edit_title" value=""></dd></dl>
                <dl>
                    <dt>태그</dt>
                    <dd><textarea class="hashtag_area" name="hashtags" id="edit_hashtag" value="" cols="30"></textarea></dd>
                </dl>
        </div>
        <div class="alarm_area">
            <p>체크 구간 기준으로 앞으로 2분, 뒤로 1분 <br> 총 3분의 하이라이트 영상으로 만들어져 방송국에 업로드 됩니다.</p>
            <span>최대 2개까지 만들 수 있습니다.</span>
                        <a href="http://afwbbs1.afreecatv.com/app/index.php?board=afbroad_help&b_no=195&control=view" target='_blank'>추출 기준 자세히 보기</a>
                    </div>
        <div class="btn_wrap_line"><a href="javascript:;" class="btn_st1">하이라이트 만들기</a></div>
        <a href="javascript:;" class="btn_close">닫기</a>
    </div>
</div>


<!-- 편집각 하이라이트 만들기 2018-0201 -->
<div class="layer_s highlight" id="editangle_messagebox" style="margin: -82px  0 0 -141px; display: none;"><div class="layer_in">
    <strong class="title">편집각</strong>
        <div class="layer_ac" id="editangle_messagebox_message">
        </div>
        <script id="tpl_editangle_message_box" type="text/x-dot-template">
            {{=it}}
        </script>
        <div class="btn_wrap" id="tpl_editangle_message_box_button1" style="display: none;">
            <a href="javascript:;" class="btn_st1">확인</a>
            <a href="javascript:;" class="btn_st2">취소</a>
        </div>
        <div class="btn_wrap_line" id="tpl_editangle_message_box_button2" style="display: none;">
            <a href="javascript:;" class="btn_st2">확인</a>
            <div class="never_see" id="tpl_editangle_message_box_never_see" style="display: none;"><input type="checkbox" id="editangle_never_see"><label for="">더 이상 보지않기</label></div>
        </div>
        <a href="javascript:;" class="btn_close">닫기</a>
    </div>
</div>

<!-- 별별통계 레이어 -->
<div class="ui-pop statistics_layer" id="star2statLayer" style="display: none;">
    <p class="pop-title">방송 별별통계<em class="beta">BETA</em></p>
    <div class="pop-body">
        <p>방송 별별통계의 경우 <br> 다시보기가 저장 된 시점부터 120일간 제공됩니다.</p>    </div>
    <div class="pop-btn line">
        <a href="javascript:;" class="btn btn_blue">확인</a>
    </div>
    <a href="javascript:;" class="pop-close"><span>레이어 닫기</span></a>
    <div class="never_see">
        <input type="checkbox" id="star2StatNeverSee"><label for="">더 이상 보지않기</label>
    </div>
</div>
<!-- // 별별통계 레이어 -->

<div class="ui-pop statistics_layer" id="star2statAlert" style="display: none;">
    <p class="pop-title">방송 별별통계<em class="beta">BETA</em></p>
    <div class="pop-body">
    </div>
    <div class="pop-btn line">
        <a href="javascript:;" class="btn btn_blue">확인</a>
    </div>
    <a href="javascript:;" class="pop-close"><span>레이어 닫기</span></a>
</div>

<!-- 2017-0908  PPV 티켓 구매 382X437 -->
<div class="layer_l ppv_ticket" id="PPVBuyTicket" style="display: none;">
    <div class="layer_in">
        <strong class="title">본 방송은 티켓 구매 후 시청가능 합니다.</strong>
        <div class="layer_al">
            <div class="ppv_ticket_img" style="background: none;"><img id="ppv_ticket_img_src" src="" alt="티켓 이미지"></div>
        </div>

        <!-- 웹용 버튼 -->
        <div class="btn_wrap">
            <a href="javascript:;" class="btn_st1" id="btn_buy_ppv">
                <span>티켓을 구매하시려면?</span>
                <strong>티켓구매</strong>
            </a>
            <a href="javascript:;" class="btn_st2" id="btn_play_ppv">
                <span>티켓을 이미 구매하셨다면?</span>
                <strong>재생</strong>
            </a>
        </div>

        <a href="javascript:;" class="btn_close2">닫기</a>
    </div>
</div>

<!-- 2017-0908 ff14 ppv 방송특전아이템 발급 완료  -->
<div class="layer_m" id="ppv_coupon" style="display: none;">
    <div class="layer_in">
        <div class="layer_ac">
            <strong class="layer_stit">특전아이템 쿠폰이 발급 되었습니다.</strong><br>발급된 쿠폰은 티켓 구매 페이지 또는 <br> 쪽지함에서 확인하실 수 있습니다.
        </div>
        <div class="btn_wrap"><a href="javascript:;" class="btn_st2">확인</a></div>
        <a href="javascript:;" class="btn_close">닫기</a>
    </div>
</div>


<!-- <script type="text/javascript" src="http://res.afreecatv.com/script/jquery.trackpad-scroll-emulator.js"></script> -->
<!-- 댓글버튼 클릭하면 스르륵 -->
<script>
    $(document).ready(function($) {
        //document.domain = 'afreecatv.com';

        // $('.tse-scrollable').TrackpadScrollEmulator();

        try {
            $(parent.document).mouseup(function(e) {
                var vodParent = e.currentTarget.getElementById('afreecatv_player_video');
                if(vodParent) {
                    $(vodParent.contentDocument).mouseup();
                }
            });
        } catch(e) {

        }


        // $(".recommend_broadcast strong").dotdotdot({wrap: 'letter'});
        /*$('a[href^="#"]').bind('click.smoothscroll',function (e) {
            e.preventDefault();
            var target = this.hash,
                    $target = $(target);

            $('html, body').stop().animate( {
                'scrollTop': $target.offset().top-40
            }, 900, 'swing', function () {
                window.location.hash = target;
            });
        });*/
    });

    // embed모드인거는 유입경로가 존재하지 않기때문에 default경로로 path1=etc로 세팅
            // 유입경로가 있었던 경우는($szPathFlow), VOD시청페이지 앞단에서 이미 유입경로가 처리되어 버렸기 떄문에 이 Case로 들어오지 않음
            </script>

                                <!-- // 플레이어 영역 -->
                                <button type="button" class="float_close"><span>미니모드 닫기</span></button>
                            </div>
                            <!-- 플레이어 버튼 리스트 -->
                            <!--
    아이콘 설명텍스트 삭제 클레스
    smallest

    추가 클레스 정리  - 전체화면 시 버튼 간격 조절을 위한 클레스
    editangle 편집각 추가
    playbackrate  재생속도 추가
    statistics  별별통계
    preroll 프리롤  광고 출력 ( 하위 버튼 가림 및 알림 텍스트 출력 클레스 )
-->
<div class="player_item_list preroll playbackrate">
    <div class="text_output"><p></p></div>
    <ul>
                            <li class="subscribe">
                <button type="button" id="btnSubscription" formtarget="_blank" tip="구독하기"><em></em><span>구독하기</span></button>
            </li>
                                            <li class="star_balloon">
                    <button type="button" id="btnGiftStarBalloon" tip="별풍선"><em></em><span>별풍선</span></button>
                </li>
            
                    <li class="adballoon">
                <button type="button" id="btnGiftAdBalloon" tip="애드벌룬"><em></em><span>애드벌룬</span>
                </button>
            </li>
                <!-- //선물하기 -->

        <!-- 나중에보기 -->
                <li class="laterwatch">
            <button id="btnLaterView" data-target="laterwatch_text" type="button" tip="나중에 보기"><em></em><span>나중에 보기</span></button>
        </li>
                <!-- VOD 편집 -->
                <!-- 즐겨찾기 -->
                <li class="bookmark">
            <button id="btnFavorite" data-target="bookmark_text" type="text" tip="즐겨찾기"><em></em><span>즐겨찾기</span></button>
        </li>
                <!-- UP -->
                <li class="up_recommend">
            <button class="" id="btnUp" data-target="up_text" type="text" tip="UP"><em></em><span>UP</span></button>
        </li>
                <!-- 공유하기 -->
                <li class="share">
            <button type="button" tip="공유하기"><em></em><span>공유하기</span></button>
        </li>
                <div class="btn_video">
                <a href="javascript:;"><span>영상관련 더보기</span></a>
                <div class="wrap_btn_video" style="display: none;">
                    <button id="btnSave" class="pc_save" type="button" title="저장" style="display:none;">저장</button>
                    <button id="btnModify" class="modify" type="button" title="수정" style="display:none;">수정</button>
                    <button id="btnDelete" class="delete" type="button" title="삭제" style="display:none;">삭제</button>
                </div>
				<div class="layer_dl voddown" id="layerSave" style="display: none;">
				</div>
		</div>
    </ul>

    <div class="layer_tooltip"> <!-- on클레스 추가시 출력 -->
        <!-- 즐겨찾기 -->
        <p class="bookmark_text" style="display: none;"></p>
        <!-- UP -->
        <p class="up_text" style="display: none;"></p>
        <!-- 나중에 보기 2017-05-19 추가 -->
        <p class="laterwatch_text" style="display:none;"><em></em></p>
        <p class="error_text" id="vrguide" style="display:none;"><em></em><a href="http://afwbbs1.afreecatv.com/app/index.php?board=afbroad_help&b_no=181&control=view" target="_blank" title="VR 도움말">360도 영상 시청방법</a>을 확인하세요.</p>
    </div>
</div>                            <!-- // 플레이어 버튼 리스트 -->
                        </div>
                    </div>
                    <!-- // htmlplayer_wrap (영상소스) -->

                    <!-- VOD 정보 영역 -->
                    <!-- broadcast_information -->
<div class="broadcast_information">
            <div class="bj_thumbnail">
            <a href="http://bj.afreecatv.com/afchamps" target="_blank" title="방송국으로 가기">
                <img class="thum" src="http://stimg.afreecatv.com/LOGO/af/afchamps/afchamps.jpg"
                 onerror="this.src='http://res.afreecatv.com/images/afmain/img_thumb_profile.gif'" alt="BJ 로고" >
                <p><span>방송국</span></p>
            </a>
        </div>
            <!--
            text_information
            2019.02.26
            full 영상 버튼이 추가되면
            text_information 에 full 클래스 추가
         -->
        <div class="text_information ">
            <div class="nickname">챔스중립1</div>
            <div class="broadcast_viewer_cnt" aria-label="재생횟수">
                <span><em>505</em></span>
            </div>
            <div class="broadcast_title" id="title_name" title="제목">제목 </div>
            <div class="hashtag" id="hashtag"></div>
            <div class="etc">
                <ul>
                                        <li class="up_cnt"><em>UP</em><span class="count" id="nUpCnt">3</span></li>
                                                            <li class="comment_cnt"><em>댓글보기</em><span class="count" id="commentCntInfo">0</span></li>
                                        <li class="boomark_cnt"><em>BJ즐겨찾기</em><span class="count" id="nFavoriteCnt">0</span></li>
                                                        </ul>
            </div>
            <div class="vod_info">
                <!-- 영상내용 -->
                                                    제목                                <!-- //영상내용 -->
            </div>
                        <ul class="detail_view" id="vodDetailView">
                                    <li><strong>등록일</strong><span>2020-01-14 00:35:48</span></li>
                                                        <li><strong>카테고리</strong><span id="cateNameArea" class="txt"></span>
                                                    <button type="button" class="btn_report" id="reportBtn" data-id='afchamps'
                           data-nick='챔스중립1'
                           data-comment='제목'
                           data-no='51129395'
                           data-type='title_Content'><span>신고</span></button>
                                </li>               </ul>
            <button type="button" class="vod_info_add" id="vodInfoMoreBtn"><span>더보기</span></button>
        </div>
        <!-- //text_information -->

</div>
<!-- //broadcast_information --><section class="comment_wrap active">
    <button type="button" class="cmmt_opener" id="cmmtOpener" aria-label="댓글 여닫기"><span>댓글 <em id="commentCnt">0</em></span></button>
     <div class="comment_inner">
         <div class="cmmt_inp_wrap " id="pCommentArea" >
             <span class="thum"><img id="loginIdThumb" src="" onerror="this.src='http://res.afreecatv.com/images/afmain/img_thumb_profile.gif'" alt="유저 로고"></span>
             <section class="cmmt_inp">
                 <div class="write-inp" contenteditable="true" ondragenter="return false;" placeholder="내용을 입력해주세요."></div>

                 <div class="add-file">
                 </div>

                 <div class="btn-grid ">
                     <form method="post" enctype="multipart/form-data" target="common_action_frame" action="http://st.afreecatv.com/app/upload_station_file.php">
                     <input type="hidden" name="szType" value="COMMENT">
                     <input type="hidden" name="nStationNo" value="5865453">
                     <input type="hidden" name="szTextarea" value="">
                     <div class="grid-start">
                         <button type="button" class="emoticon"><span>이모티콘</span></button>
                         <label for="img_up_file" class="img_up">
                            <span>이미지 업로드</span>
                            <input type="file" id="img_up_file" >
                        </label>
                         <!-- 이모티콘 -->
                     </div>
                     <div class="grid-end">
                         <input type="text" name="" id="" readonly="readonly" value="0/ 5,000" class="byte" />
                         <!--
                             2019.02.26
                             글 작성 전에 disabled 속성 추가
                             작성 시작되면 disabled 제거
                         -->
                         <!-- <button type="button" class="btn-basic" ><span>등록</span></button> -->
                         <button type="button" class="btn-basic blue" ><span>등록</span></button>
                     </div>
                     </form>
                 </div>
                 <div id="emoticonArea" style="display: none;"></div>
             </section>
         </div>

         <ul class="cmmt_tab" id="cmmtTab">
             <li class="on"><button type="button"><span>최신순</span></button></li>
             <li><button type="button"><span>인기순</span></button></li>
         </ul>

         <ul class="cmmt-list">
         </ul>

         <div class="paging cmmt" style="display:none;">
             <button type="button"><span>댓글 더보기</span></button>
         </div>
     </div>
</section>
                    <!-- // VOD 정보 영역 -->

                    <!-- 다른VOD보기 -->
                                        <!-- //다른VOD보기 -->
                </div>
                <!-- // player_area (영상 출력영역) -->

                <!-- 채팅 -->
                                <!-- //채팅 -->
            </div>
            <!-- top_vod-smode-use -->

            <div class="bottom_vod-smode-use">
                <div class="bottom_left_vod-smode-use">
                                    </div>

                <!-- 영상리스트 -->
                <!--
    2019.02.27
    VOD : list_area 에 VOD 클래스 추가
-->
<!--#신고하기-->
<div id="layerReport" class="layer_bs report" style="display:none;">
    <h3 class="title"><strong>신고하기</strong></h3>
    <div class="layer_con">
        <div class="report_area">
            <dl class="w_list">
                <dt>작성자</dt>
                <dd id="reportId">AfreecaTV(AfreecaTV)</dd>
                <dt>글</dt>
                <dd id="reportContent"></dd>
            </dl>
            <dl class='s_list'><dt>신고 사유 선택</dt><dd><input type='radio' name='reportCase' id='reportCase1' value='1' etc='false' ><label for='reportCase1'>불법 사행성 사이트 홍보및 부적절한 홍보 게시글</label></dd><dd><input type='radio' name='reportCase' id='reportCase2' value='2' etc='false' ><label for='reportCase2'>타인이나 타BJ를 비하하는 게시글</label></dd><dd><input type='radio' name='reportCase' id='reportCase3' value='3' etc='false' ><label for='reportCase3'>저작권및 사생활 침해 게시글</label></dd><dd><input type='radio' name='reportCase' id='reportCase4' value='4' etc='false' ><label for='reportCase4'>음란물 또는 잔인한 장면이 담겨 있는 게시글</label></dd><dd><input type="radio" name="reportCase" id="reportCaseEtc" value="5" etc="true">
                        <label for="reportCaseEtc">기타</label><textarea id="reportEtcText" placeholder="기타 신고 사유를 입력하시기 바랍니다.(300자 이내)" disabled="disabled"></textarea></dd></dl>                <p class="memo"><span>※</span>과실이 없는 이용자에 대해 무분별한 신고 행위는 신고자에게 서비스 이용 제한 등의  제재가 가해질 수 있으니 이 점 유의하시기 바랍니다</p>
        </div>
    </div>
    <button type="button" class="btn_close" id="closeReportBtn"></button>
    <a href="javascript:;" class="btn_type1" id="actionReport"><span>신고하기</span></a>
</div>

<!-- 채팅관리 ICT용 얼럿 레이어-->
<div class="layer_m" id="layer_chat_ict" style="display: none; margin: -86px 0px 0px -141px;">
    <div class="layer_in">
        <div class="layer_ac">
            <span class="color_blk" id="ict_layer_text"></span>
        </div>
        <div class="btn_wrap" name="ict_layer_close">
            <a href="javascript:;" id="ict_layer_yes" class="btn_st1" style="display: none;">확인</a>
            <a href="javascript:;" id="ict_layer_no" class="btn_st2">닫기</a>
        </div>
        <a href="javascript:;" class="btn_close" name="ict_layer_close">닫기</a>
    </div>
</div>
<!-- //채팅관리 ICT용 얼럿 레이어 -->

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
<!-- //휴면ID 정상 사용안내-->

<!--공유하기-->
<div class="ui-pop improve share_layer" id="share_layer" style="position: absolute; top: 0px; left: unset; right: 0px; display:none;">
    <input id="share_url" style="position:absolute;top:0;left:0;width:1px;height:1px;margin:0;padding:0;border:0;">
    <div class="pop-title">공유하기 </div>
    <div class="pop-body">
        <div>
            <button type="button" class="twitter"><em></em><span>트위터</span></button>
            <button type="button" class="facebook"><em></em><span>페이스북</span></button>
            <button type="button" class="url"><em></em><span>URL 복사</span></button>
        </div>
    </div>
    <a href="javascript:;" class="pop-close"><span>레이어 닫기</span></a>
</div>

<div class="toast_message" id="toast_message"></div>

<!-- 블라인드 VOD -->
<div class="ui-pop blind_pop" id="blindLayer" style="display: none;">
    <div class="pop-body">
        <p>
                            방송한 BJ의 요청에 의해 블라인드 처리된 VOD 입니다.<br>
                <span></span> 이후 게시물이 자동삭제 될 예정입니다.<br>
                파일 보관을 원하시는 경우 기간 내 다운로드 해 주세요.
                    </p>
    </div>
    <div class="pop-btn line">
        <a href="javascript:;" class="btn">닫기</a>
    </div>
    <a href="javascript:;" class="pop-close"><span>레이어 닫기</span></a>
</div>
<!-- //블라인드 VOD -->

<!-- 애드벌룬 레이어 -->
<div class="pop_adballoon" id="adballoonLayer" style="display: none;"></div>
<!-- //애드벌룬 레이어 -->

<!-- 베스트/파트너 bj VOD 삭제 사유 입력 레이어 -->
<div class="ui-pop vod-delete" id ="vodDeleteLayer" style="display: none;">
	<div class="pop-body">
		<h2><sup>&#147;</sup><strong>제목</strong><sup>&#148;</sup>
		<span>다시보기 VOD를 삭제하시겠습니까?</span></h2>
		<textarea name="del_vod_resaon" id="del_vod_resaon" placeholder='삭제 사유를 입력해 주세요.'></textarea>

		<!-- 경고 문구 클래스 error 추가 -->
		<p class="guide_text">삭제 사유는 5자 ~ 200자까지 입력 가능합니다.</p>
	</div>
	<div class="pop-btn">
		<a href="javascript:;" class="btn" id="cancle_del_vod">취소</a>
		<button type="button" class="btn btn_blue" id="apply_del_vod">삭제</button>
	</div>
	<a href="javascript:;" class="pop-close"><span>레이어 닫기</span></a>
</div>
<!-- //VOD 삭제 사유 입력 레이어 -->

<iframe name="common_action_frame" id="common_action_frame" src="" width="50" height="0" frameborder="0"></iframe>
<form name="frmCommon" method="post" onsubmit="return false;">
    <input type="hidden" name="nStationNo" value="5865453">
    <input type="hidden" name="nTitleNo" value="51129395">
    <input type="hidden" name="nBbsNo" value="9899549">
    <input type="hidden" name="szTitleNoList" value="">
    <input type="hidden" name="szNextVod" value="">
    <input type="hidden" name="szBjId" value="">
    <input type="hidden" name="szDelType" value="2">
</form>

<!-- VOD 선물 누적 리스트 -->
<script id="tpl_vod_gift_layer" type="text/x-dot-template">
    <div id="layerStarGiftList" class="lay layer_m layer_starlistbox" style="margin: -160px 0 0 -165px;">
        <div class="layer_in">
            <strong class="title t_starlist">별풍선+애드벌룬 선물</strong>
            <div class="starlist">
                <ul>
                    {{~it.rankData :value:index}}
                    <li class="{{=value.top}}">
                        <em class="num">{{=value.viewRank}}</em>
                        <span class="name"><em class="nick"><a href="{{=value.bjUrl}}" target="_blank">{{=value.senderNick}}</a></em> {{=value.senderId}}</span>
                        <span class="ea">{{=value.sumGiftCnt}}</span>
                    </li>
                    {{~}}
                </ul>
            </div>
            <div class="g_total">
                <strong>총 선물 개수</strong>
                <span class="ea">{{=it.totalUccGift}}</span>
            </div>
            <div class="btn_wrap_line"><a href="javascript:;" class="btn_st2">확인</a></div>
            <a href="javascript:;" class="btn_close2">닫기</a>
        </div>
    </div>
</script>

<!-- PC에 다운로드 화질 선택 리스트 -->
<script id="tpl_download_bps_layer" type="text/x-dot-template">
<a href="#" class="select_title">{{=it.first_bps}}</a>
	<ul class="select_list">
	{{~it.bps_list :value:index}}
		<li data-index="{{=index}}">
			<a href="#">{{=value.label}}</a>
		</li>
	{{~}}
	</ul>
</script>

<!-- PC에 다운로드 레이어 -->
<script id="tpl_download_layer" type="text/x-dot-template">
					<strong class="stit">PC에 다운로드</strong>
					<!-- on , off 추가하여 활성 비활성 추가 -->
					<div class="select_wrap" id="list_down_file" data-curindex="0">
						<a href="#" class="select_title">{{=it.first_file}}</a>
						<ul class="select_list">
							{{~it.file_list :value:index}}
								<li data-index="{{=index}}">
									<a href="#">{{=value.print_file_name}}</a>
								</li>
							{{~}}
						</ul>
					</div>
					<div class="select_wrap" id="list_down_bps" data-curindex="0" style="width: 110px; float: left;">
						<a href="#" class="select_title">{{=it.first_bps}}</a>
						<ul class="select_list">
							{{~it.bps_list :value:index}}
								<li data-index="{{=index}}">
									<a href="#">{{=value.label}}</a>
								</li>
							{{~}}
						</ul>
					</div>
					<p>영상 시간 : 0:00:00 ~ <span id="down_file_duration">{{=it.szFirstDuration}}</span></p>

					<div class="radio_wrap" id="layer_cut_down_file">
						<div><input type="radio" checked id="radio_case1" name="radio_case"/><label for="radio_case1">전체 파일</label></div>
						<div id="set_down_cut" {{? !it.is_cut}} style="display: none;" {{?}}>
							<input type="radio" id="radio_case2" name="radio_case"/><label for="radio_case2">구간 설정</label>
							<div class="time_section" style="display: none;"> <!-- error 클레스 추가시 스타일 변경 -->
								<input type="text" value="00" name="cut_down_start"  maxlength="2"/>
								<em>:</em>
								<input type="text" value="00" name="cut_down_start" maxlength="2"/>
								<em>:</em>
								<input type="text" value="00" name="cut_down_start" maxlength="2" />
								<span>~</span>
								{{~it.aDuration :value:index}}
								<input type="text" value="{{=value}}" name="cut_down_end" maxlength="2"/>
									{{? index < 2}}
									<em>:</em>
									{{?}}
								{{~}}
							</div>
						</div>
					</div>

					<div class="btn_wrap">
						<button type="button" id="btnDownSave">저장</button>
					</div>

					<a href="#n" class="close" id="btnCloseSave">닫기</a>
</script>

<script id="tpl_global_login_layer" type="text/x-dot-template">
    <!-- 해외 레이어 로그인 -->
    <div class="popLogWrap" id="layerLogin" style="display: none;"><!-- 청소년인경우 lay_login_young 추가 -->
        <!-- 회원가입 -->
        <div id="accountN">
            <div class="account_header"> <h1><a href="http://www.afreecatv.com">아프리카TV</a></h1> </div>

            <div class="input_info"><!-- 오류없음 class="ok" -->
                <input type="text" name="join" id="szUid" maxlength="25" placeholder="로그인 아이디" title="로그인 아이디">
                <span class="ic_ok">OK</span>
                <span class="ic_bad">BAD</span>
            </div>
            <div class="input_info"><!-- 오류있음 class="bad" -->
                <input type="password" name="join" id="szPassword" maxlength="15" placeholder="로그인 비밀번호" title="로그인 비밀번호">
                <span class="ic_ok">OK</span>
                <span class="ic_bad">BAD</span>
            </div>
            <div class="notice_area"><p></p></div><!-- 에러메시지 -->
            <div class="btn_area">
                <button class="btn_st1">로그인</button>
            </div>
            <div class="pwd_remember">
                <input type="checkbox" id="log_retain" title="로그인 상태 유지">
                <label for="log_retain">로그인 상태 유지</label>
                <div class="layer_info" id="loginRetainInfo" style="display: none;">
                    <span class="arrow"></span>
                    <div class="layer_contents">
                        <ul>
                            <li class="red">개인정보 보호를 위해 개인 PC에서만 사용하세요.</li>
                        </ul>
                    </div>
                    <a href="javascript:;" class="layer_close">레이어닫기</a>
                </div>
                <input type="checkbox" id="bSaveId" /> <label for="bSaveId">아이디 저장</label>
                <a href="http://help.afreecatv.com/atv.php?type=exSelfRAR" class="btn_faq" target="_blank">FAQ</a>
            </div>
                        <div class="sns_join">
                            <div><span>또는</span></div>
                <div class="sns_area">
                                        <a href="javascript:;" id="btnConnectTwitter" class="twitter"><em></em><strong>트위터</strong>로 로그인</a>
                                        <a href="javascript:;" id="btnConnectGoogleplus" class="google"><em></em><strong>구글</strong>로 로그인</a>
                    <a href="javascript:;" id="btnConnectFacebook" class="facebook"><em></em><strong>페이스북</strong>으로 로그인</a>
                                                        </div>
            </div>
            <div class="account_area">
                <a href="https://member.afreecatv.com/app/join.php" target="_blank">회원가입</a>
                <!--190820-->
                <span class="bar">|</span>
                <!--190820-->
                <a href="https://member.afreecatv.com/app/find_id_pw.php" target="_blank">아이디/비밀번호를 잊어버리셨습니까?</a>
            </div>
            <div class="close btn_close_top"><a href="javascript:;">닫기</a></div>
        </div>
    </div>
    <!-- 해외 레이어 로그인 -->
</script>

<script id="tpl_login_layer" type="text/x-dot-template">
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
                            <strong>Caps Lock</strong>이 켜져 있습니다.                        </span>
                        </dd>
                    </dl>
                    <!-- //쓰기폼 -->

                    <!-- 알림 -->
                    <div class="info" style="display: none;">법정 대리인 동의가 필요한 아이디입니다.<br>법정대리인 인증 후 이용 부탁 드립니다.</div>
                    <!-- //알림 -->
                    <!-- 아이디저장 -->
                    <em class="idsave">
                        <input type="checkbox" id="log_retain" title="로그인 상태 유지">
                        <label for="log_retain">로그인 상태 유지</label>
                        <div class="layer_info" id="loginRetainInfo" style="display: none;">
                            <span class="arrow"></span>
                            <div class="layer_contents">
                                <ul>
                                    <li class="red">개인정보 보호를 위해 개인 PC에서만 사용하세요.</li>
                                </ul>
                            </div>
                            <a href="javascript:;" class="layer_close">레이어닫기</a>
                        </div>
                        <input type="checkbox" id="bSaveId" title="아이디 저장">
                        <label for="bSaveId">아이디 저장</label>
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
</script>

<script id="tpl_secondLogin_layer" type="text/x-dot-template">
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
                <input type="hidden" id="secondCheckRetain" title=로그인 상태 유지" />
                <div class="login login_pw2">
                    <!-- 쓰기폼 -->
                    <dl class="pw2">
                        <dt><label for="szPassword2">비밀번호</label></dt><dd><input type="password" id="szPassword2" title="비밀번호" maxlength="15"></dd>
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
</script>

<!-- 별풍선 레이어 -->
<script id="tpl_stargift_list" type="text/x-dot-template">
    <div class="pop_stargift video_gift" id="layerStarGiftNew">
        <div class="layer_in">
            <span class="lightbox"></span>
            <h2>별풍선 선물하기</h2>
            <a href="javascript:;" class="what_star">별풍선이란?</a>
            <!-- 별풍선이란? 레이어 -->
            <div class="star_info_layer">
                <div class="inner">
                    <div class="info_b">
                        <span class="img"></span>
                        <dl>
                            <dt>별풍선이란?</dt>
                            <dd>시청자가 BJ를 응원하고 후원할 수 있는 유료 선물 시스템입니다.</dd>
                            <dd>별풍선을 선물하면 자동으로 BJ 팬클럽 에 가입 됩니다.</dd>
                            <dd>선물받은 BJ는 별풍선을 환전하여 실제 수익으로 돌려 받게 됩니다.</dd>
                        </dl>
                        <a class="btn_detail" href="http://item.afreecatv.com/starballoon.php" target="_blank">상세보기</a>
                    </div>
                    <div class="info_sgb">
                        <span class="img"></span>
                        <dl>
                            <dt>시그니처 풍선이란?</dt>
                            <dd>BJ의 개성이 돋보이도록 직접 만들어<br>등록하는 맞춤형 별풍선입니다.</dd>
                        </dl>
                        <a class="btn_detail" href="http://afevent2.afreecatv.com/app/signature_balloon/index.php" target="_blank">상세보기</a>
                    </div>
                    <!-- 2018-0126 VOD 선물하기일때만 출력 -->
                    <div class="info_b">
                        <span class="img benefit_img"></span>
                        <dl>
                            <dt>VOD 별풍선 혜택보기</dt>
                            <dd>선물한 BJ의 라이브 방송 입장 시, 채팅창에 VOD 별풍선이 표시됩니다.</dd>
                            <dd>BJ에게 보내는 선물 메시지 입력 시, 댓글로 등록됩니다</dd>
                            <dd>선물자 랭킹 TOP3의 경우 플레이어에 별풍선 애니메이션 효과가 나타납니다.</dd>
                        </dl>
                    </div>
                    <a href="javascript:;" class="btn_close" id="closeWhatStarsLayer">닫기</a>
                </div>
            </div>
            <!-- //별풍선이란? 레이어 -->
            <div class="star_list">
                <p>{{=it.textSignature}}</p> <!-- 시그니처 풍선일때 노출 -->
                <ul>
                    {{~it.defaultBalloons :value:index}}
                    <li data-number="{{=value.number}}" style="display:{{=value.display}}"><span class="thumb"><em></em><a href="javascript:;"><img src="{{=value.imageUrl}}" alt="" onError="this.src='http://res.afreecatv.com/images/flashplayer/balloon_1_293x248.png'"></a></span></li>
                    {{~}}
                </ul>
                <!-- //2018-0830 버튼 추가 -->
                <div id="star_list_btn" style="display:{{=it.btnShow}}">
                  <button type="button" class="prev off">prev</button>
                  <button type="button" class="next">next</button>
                </div>
            </div>

            <div class="send_area">
                <a href="javascript:;" class="btn_stars">스타즈 별풍선</a>
                <!-- 스타즈별풍선 레이어 -->
                <div class="stars_layer">
                    <div class="inner">
                        <h2>별풍선</h2>
                        <!-- 탭추가 171215 -->
                        <!-- <div class="tab_area">
                            <ul>
                                <li class="on"><a href="javascript:;">스타즈 별풍선</a></li>
                            </ul>
                        </div> -->
                        <!-- //탭추가 171215 -->
                        <div class="scroll_area tab">
                            <ul>
                                {{~it.starsBalloons :value:index}}
                                <li data-number="{{=value.number}}"><span class="thumb"><em></em><a href="javascript:;"><img src="{{=value.imageUrl}}" alt=""></a></span></li>
                                {{~}}
                            </ul>
                        </div>
                        <a href="javascript:;" class="btn_close" id="closeStarsLayer">닫기</a>
                    </div>
                </div>
                <!-- //스타즈별풍선 레이어 -->
                <dl class="gift_at">
                <dt><strong>{{=it.bjNick}}({{=it.bjId}})</strong>님께 선물</dt>
                <dd class="on">
                    <span class="txt_default">선물할 별풍선</span>
                    <input type="text" value="10" id="starCount" placeholder="0" autocomplete="off">
                    <span class="txt_count">개</span>
                    <button id="countReset">삭제</button>
                </dd>
                </dl>
                <dl class="gift_st">
                    <dt>보유 별풍선</dt>
                    <dd><span data-count="{{=it.currentStarballoon}}" id="userBalloonCount">{{=it.currentStarballoon}}</span>개</dd>
                    <dd class="txt_error" style="display:none;"><em></em><span>보유 별풍선 부족</span></dd>
                </dl>
                <a href="javascript:;" class="btn_buy">구매</a>
                <div class="gift_input">
                    <span><input type="text" id="szModifyMemo" placeholder="선물 메시지 입력"></span>
                    <p id="byte_t">0/300</p>
                </div>
                <div class="btn_area">
                    <button class="btn_gift">선물하기</button><button class="btn_cancel">취소</button>
                </div>
                <p class="txt_info">별풍선을 선물하면 BJ를 후원하고 팬클럽에도 가입됩니다.</p>
                <!-- 2018-0126 VOD 시청 페이지에서만 노출 -->
                <div class="input_wrap"><input type="checkbox" id="gift_check" checked="checked"><label for="gift_check">라이브 입장 시, VOD 별풍선 표시</label></div>
            </div>

            <a href="javascript:;" class="btn_close">닫기</a>
        </div>
    </div>
</script>

<script id="tpl_stargift_result" type="text/x-dot-template">
    <div class="pop_stargift video_gift" id="layerStarGiftNewResult">
        <div class="layer_in">
            <span class="lightbox"></span>
            <h2>별풍선 선물하기</h2>
            <a href="javascript:;" class="what_star">별풍선이란?</a>

            <!-- 별풍선이란? 레이어 -->
            <div class="star_info_layer">
                <div class="inner">
                    <div class="info_b">
                        <span class="img"></span>
                        <dl>
                            <dt>별풍선이란?</dt>
                            <dd>시청자가 BJ를 응원하고 후원할 수 있는 유료 선물 시스템입니다.</dd>
                            <dd>별풍선을 선물하면 자동으로 BJ 팬클럽 에 가입 됩니다.</dd>
                            <dd>선물받은 BJ는 별풍선을 환전하여 실제 수익으로 돌려 받게 됩니다.</dd>
                        </dl>
                        <a class="btn_detail" href="http://item.afreecatv.com/starballoon.php" target="_blank">상세보기</a>
                    </div>
                    <div class="info_sgb">
                        <span class="img"></span>
                        <dl>
                            <dt>시그니처 풍선이란?</dt>
                            <dd>BJ의 개성이 돋보이도록 직접 만들어<br>등록하는 맞춤형 별풍선입니다.</dd>
                        </dl>
                        <a class="btn_detail" href="http://afevent2.afreecatv.com/app/signature_balloon/index.php" target="_blank">상세보기</a>
                    </div>
                    <!-- 2018-0126 VOD 선물하기일때만 출력 -->
                    <div class="info_b">
                        <span class="img benefit_img"></span>
                        <dl>
                            <dt>VOD 별풍선 혜택보기</dt>
                            <dd>선물한 BJ의 라이브 방송 입장 시, 채팅창에 VOD 별풍선이 표시됩니다.</dd>
                            <dd>BJ에게 보내는 선물 메시지 입력 시, 댓글로 등록됩니다</dd>
                            <dd>선물자 랭킹 TOP3의 경우 플레이어에 별풍선 애니메이션 효과가 나타납니다.</dd>
                        </dl>
                    </div>
                    <a href="javascript:;" class="btn_close" id="closeWhatStarsResultLayer">닫기</a>
                </div>
            </div>
            <!-- //별풍선이란? 레이어 -->

            <div class="gift_result">
                <dl><dt>선물한BJ</dt><dd>{{=it.bjNick}}({{=it.bjId}})</dd></dl>
                <dl><dt>선물한 별풍선(개)</dt><dd><span>{{=it.giftCnt}}</span></dd></dl>
                <dl><dt>남은 별풍선(개)</dt><dd>{{=it.haveCnt}}</dd></dl>
            </div>

            <div class="send_area">

                <div class="star_gift_benefit" id="starGiftBenefit">
                    <h3>별풍선 선물결과</h3>
                    <ul>
                        {{~it.resultBalloon :value:index}}
                        <!-- <li><span>{{=value.img}}</span><p>팬클럽 <br>가입</p></li> -->
                        <li><span class="{{=value.img}}"></span><p>{{=value.text}}</p></li>
                        {{~}}
                    </ul>
                </div>
                <div class="btn_area">
                    <button class="btn_cancel">닫기</button>
                </div>

            </div>
            <a href="javascript:;" class="btn_close">닫기</a>
        </div>
    </div>
</script>

<!-- 2018-0126 스티커 선물하기 레이어 -->
<script id="tpl_sticker_gift" type="text/x-dot-template">
    <div class="pop_stargift sticker_gift" id="layer_sticker_gift">
        <div class="layer_in">
            <span class="lightbox" style="display: none;"></span>
            <h2>스티커로 영구보관</h2>
            <a href="javascript:;" class="what_star">스티커란?</a>

            <!-- 스티커란? 레이어 -->
            <div class="sticker_info_layer" style="display: none;">
                <div class="inner">
                    <div class="info_b">
                        <span class="img"></span>
                        <dl>
                            <dt>스티커 사용 혜택?</dt>
                            <dd>조회수가 100회 미만인 방송 다시보기에 스티커를 10개 사용 하시면 영구 보관으로 즉시 전환됩니다.</dd>
                        </dl>
                    </div>
                    <a href="javascript:;" class="btn_close" id='sticker_info_close'>닫기</a>
                </div>
            </div>
            <!-- //스티커란? 레이어 -->

            <div class="sticker_gift_info">
                <img src="{{=it.THUMB}}" alt="" onerror="this.src='http://www.afreecatv.com/images/mybs/@img_vod_no.gif';" >
                <dl>
                    <dt>{{=it.TITLE}}</dt>
                    <dd>
                        <p>{{=it.AUTO_DELETE_DATE}}까지 시청가능</p>
                        <p>누적개수 <span>{{=it.TOTAL_GIFT_CNT}}</span> (별풍선 {{=it.STARBALLOON_CNT}}개+스티커 {{=it.STICKER_CNT}}개)</p>
                        <p>영구 보관까지 스티커 <strong>{{=it.SUB_STICKER_CNT}}</strong>개 남음</p>
                    </dd>
                </dl>
            </div>

            <div class="send_area">
                <dl class="gift_at">
                <dt><strong></strong></dt>
                <dd>
                    <span class="txt_default">사용할 스티커</span>
                    <span class="txt_error" style="display: none;">보유 스티커 부족</span>
                    <input type="text" value="10" id="stickerCount" placeholder="0" class="" autocomplete="off">
                    <span class="txt_count">개</span>
                    <button id="countReset">삭제</button>
                </dd>
                </dl>
                <dl class="gift_st">
                    <dt>보유 스티커</dt>
                    <dd><span data-count="{{=it.ALL_STICKER_CNT}}" id="userStickerCount">{{=it.ALL_STICKER_CNT}}</span>개</dd>
                </dl>
                <a href="javascript:;" class="btn_buy">구매</a>
                <div class="btn_area">
                    <button class="btn_gift">사용하기</button>
                    <button class="btn_cancel" id="sticker_cancel">취소</button>
                </div>
            </div>
            <a href="javascript:;" class="btn_close" id="sticker_layer_close">닫기</a>
        </div>
    </div>
</script>
<!-- // 2018-0126 스티커 선물하기 레이어 -->

<script id="tpl_sticker_gift_result" type="text/x-dot-template">
    <div class="pop_stargift sticker_gift" id="layer_sticker_gift_result">
        <div class="layer_in">
            <span class="lightbox"></span>
            <h2>스티커 사용 완료</h2>
            <a href="javascript:;" class="what_star">스티커란?</a>

             <!-- 스티커란? 레이어 -->
            <div class="sticker_info_layer" style="display: none;">
                <div class="inner">
                    <div class="info_b">
                        <span class="img"></span>
                        <dl>
                            <dt>스티커 사용 혜택?</dt>
                            <dd>조회수가 100회 미만인 방송 다시보기에 스티커를 10개 사용 하시면 영구 보관으로 즉시 전환됩니다.</dd>
                        </dl>
                    </div>
                    <a href="javascript:;" class="btn_close" id='sticker_result_close'>닫기</a>
                </div>
            </div>
            <!-- //스티커란? 레이어 -->

            <div class="gift_result">
                <dl><dt>사용한BJ</dt><dd>{{=it.bjNick}}({{=it.bjId}})</dd></dl>
                <dl><dt>사용한 스티커(개)</dt><dd><span>{{=it.useCnt}}</span></dd></dl>
                <dl><dt>남은 스티커(개)</dt><dd>{{=it.haveCnt}}</dd></dl>
            </div>

            <div class="send_area">
                <div class="star_gift_benefit" id="stickerGiftBenefit">
                    <h3>스티커 사용결과</h3>
                    <ul>
                        <li><span class="n4"></span><p>영구 보관</p></li>
                    </ul>
                    <div class="btn_area">
                        <button class="btn_cancel">닫기</button>
                    </div>
                </div>
            </div>

            <a href="javascript:;" class="btn_close">닫기</a>
        </div>
    </div>
</script>

<!-- ICT 메뉴 -->
<script id="ict_menu" type="text/x-dot-template">
<div id="contextMenu" style="position:absolute;top:{{=it.ICT_TOP}}px;left:{{=it.ICT_LEFT}}px;z-index:10000">
    <div class="ictBox">
        <dl>
            <dt>{{=it.USER_ID}}</dt>
                <dd style="display:{{=it.FAVADD_VIEW}}"><a href="javascript:;"><em class="ic_fav"></em>즐겨찾기 추가</a></dd>
                <dd style="display:{{=it.FAVDEL_VIEW}}"><a href="javascript:;"><em class="ic_fav on"></em>즐겨찾기 삭제</a></dd>
        </dl>
        <a href="{{=it.STATION_URL}}" target="_blank" class="btn_home"><span>방송국 바로가기</span></a></em>
    </div>
</div>
</script>

<!-- 레이어 검정배경 -->
<div id="bgDarkPage" class="bg_dark" style="display: none;"></div>

<!-- 편집각 하이라이트 삭제시 하단 다른VOD 보기 갱신하려고 만듦 -->
<div id="changeHighlight" style="display: none;"></div>


<!--처음구독-->
<script id="tpl_subscription_buy_none" type="text/x-dot-template">
<div id="layerBuyNoneSubscription" class="pop_gudok">
    <div class="layer_in">
        <span class="lightbox"></span>
        <h2>구독하기</h2>
        <div class="info_area">
            <p class="info_msg01"><span class="cr01">{{=it.bjNick}}</span><em>({{=it.bjId}})</em>님을 구독하시겠습니까?</p>
            <div class="info_img">
                <ul class="blind">
                <li>구독료 후원</li>
                <li>채팅 효과</li>
                <li>구독자 전용 닉네임</li>
                </ul>
                <a href="http://item.afreecatv.com/subscription.php#benefit" target="_blank">구독혜택 더 보러 가기</a>
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
</script>

<!--정기권 구독중-->
<script id="tpl_subscription_buy" type="text/x-dot-template">
<div id="layerBuySubscription" class="pop_gudok">
    <div class="layer_in">
        <span class="lightbox"></span>
        <h2>구독하기</h2>
        <div class="info_area">
            <p class="info_msg02"><span class="cr01">{{=it.bjNick}}</span><em>({{=it.bjId}})</em>님을 {{=it.paymentCount}}개월 구독 중입니다!<br><span class="cr02">※ 정기권으로 중복 구독하시면 구독 기간이 연장됩니다.</span></p>
        </div>
        <div class="send_area">
            <dl class="gd_date">
            <dt class="long">이용중인 구독권</dt>
            <dd>{{=it.itemString}}</dd>
            </dl>
            <dl class="gd_date gd_space">
            <dt>구독기간</dt>
            <dd>{{=it.firstDate}} ~ {{=it.LastDate}} (잔여일수: {{=it.RestDate}}일)</dd>
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
</script>

<!--자동결제로 구독중-->
<script id="tpl_subscription_info" type="text/x-dot-template">
<div id="layerSubscriptionInfomation" class="pop_gudok">
    <div class="layer_in">
        <span class="lightbox"></span>
        <h2>구독하기</h2>
        <div class="info_area">
            <p class="info_msg02"><span class="cr01">{{=it.bjNick}}</span><em>({{=it.bjId}})</em>님을<br>{{=it.paymentCount}}개월 구독 중입니다!</p>
        </div>
        <div class="send_area">
            <dl class="gd_date">
            <dt class="long">이용중인 구독권</dt>
            <dd>{{=it.itemString}}</dd>
            </dl>
            <dl class="gd_date gd_space">
            <dt>구독기간</dt>
            <dd>{{=it.firstDate}} ~ 현재 (다음 결제일 : {{=it.LastDate}})</dd>
            </dl>
            <div class="btn_area">
                <button class="btn_w">확인</button>
            </div>
        </div>
        <a href="javascript:;" class="btn_close">닫기</a>
    </div>
</div>
</script>

<script id="tpl_star2StatList" type="text/x-dot-template">
    <ul>
        {{~it :value:index}}
            <li><button type="button" class="btnStatData" data-idx="{{=value.idx}}" data-type="{{=value.data_type}}" data-form="{{=value.form}}" data-name="{{=value.module_name}}">{{=value.title}}</button></li>
        {{~}}
    </ul>

    <span></span>
</script>

<script type="text/javascript">
    document.domain = DOMAIN;
    document.pointDomain = POINT_AFREECATV;
    document.szBjId = 'afchamps';
    document.szBjNick = '챔스중립1';
    document.szLoginId = '';
    document.szLoginNick = '';
	document.bBestBjOrPartnerBj = '';
    document.szVodType = 'STATION';
    document.bComment = true;
    // document.szSysType = isPlayerTypeHTML5() ? 'html5' : 'flash1';  // VodPlayer에서 분기하던 함수 가져옴
    document.szCopyrightUserId =  ''.toLowerCase().trim();   // 원저작자 ID
    document.szSubscriptionId = 'afchamps';
    document.szSubscriptionNick = '챔스중립1';
    document.bAdult = false;
    document.cTwitterGateway = '12';
    document.cFacebookGateway = '11';
    document.cGoogleplusGateway = '17';
    document.cWeChatGateway = '18';
    document.szLang = 'ko_KR';
    document.nTotalFileDuration = '576';
    document.bShowStarGiftLayer = ('' != '') ? true : false;
    document.szRatioCss = '';
    document.nStationNo = 5865453;
    document.nBbsNo = 9899549;
    document.nTitleNo = 51129395;
    document.szFileType = 'NORMAL';
    document.nCategory = '00020000'.fill(8);
    document.bLike = 0;
    document.szLocation = ('vod_' + 'NORMAL').toLowerCase();
    document.bBlindVod = '';
    document.aStationManagerList = []; //해당 BJ의 방송국 매니저리스트


    // function onPlayComplete() {
    //     if($('#optAutoPlay').hasClass('on'))
    //     {
    //         if(document.szNextUrl != '' && document.szNextUrl != undefined && document.szNextUrl != null)
    //         {
    //             document.location.href = document.szNextUrl;
    //         }
    //         else
    //         {
    //             if($('span.playnow').parent().next().find('a').attr('href') != undefined)
    //             {
    //                 document.location.href = $('span.playnow').parent().next().find('a').attr('href');
    //             }
    //         }
    //     }
    // }


    try{
        //애드블럭 확인용 js 로드(af_Ad_block.js는 레이님이 만듦)
        if(document.szBjId){
            let importAAB = document.createElement('script');
            importAAB.src = 'http://res.afreecatv.com/script/ad/af_ad_block.js';
            document.head.appendChild(importAAB);
        }
    } catch(e) {}

    function giftReload(nGiftCnt)
    {
        if(nGiftCnt == 0 || nGiftCnt == undefined || nGiftCnt == "" ){
            return ;
        }
        getTitleGiftInfo("reload", nGiftCnt);
        getGiftRank();
        document.getParentComment(document.setParentComment, 1, 1);
    }

    function subscriptionReload()
    {
        document.getParentComment(document.setParentComment, 1, 1);
    }

    // var nBeforeGiftLevel = 0;       //선물 이전 레벨
    // var nBeforeLvPercent = 0;       //선물 이전 레벨 퍼센트

    function getTitleGiftInfo(szFrom, nGiftCnt)
    {
        if( document.szFileType != "REVIEW")
        {
            return;
        }

        $.ajax({
            url : STBBS_AFREECATV + '/api/get_ucc_title_gift_info.php'
            , data : {
                nStationNo : document.nStationNo
                , nBbsNo : document.nBbsNo
                , nTitleNo : document.nTitleNo
            }
            , type : 'POST'
            , dataType : 'json'
            , success : function( oData ) {
                if( oData.RET != 1 )
                {
                    alert( "서버의 일시적인 오류로 일부 게시물 정보을 가져올 수 없습니다." );
                    return;
                }

                // 시청가능 기간 표시
                if( "TIMEOUT_DELETE" == oData.DATA.flag)
                {
                    alert("기간만료로 삭제되었습니다." );
                }
                else if( oData.DATA.permanence == 'Y' )
                {
                    var permanenceMessage = '<em class="forever">영구 보관</em> 되었습니다.';
                    $('#viewTime').html(permanenceMessage);
                }
                else
                {
                    if(oData.DATA.auto_delete_date != null) $('#deleteDate').text(oData.DATA.auto_delete_date.substr(0, 16));
                }
            }
        });
    }

    // favorite layer
    var szLang = 'ko_KR';

    require.config({
        urlArgs: '' //'v=' + (+new Date())//AppVersion
        , baseUrl: "http://static.afreecatv.com/asset"
        , paths: {
            favorite : 'app/vod/favorite'
            , jquery : 'library/jquery/1.10.2/jquery.min'
        }
        , deps: ['http://static.afreecatv.com/asset/service/config/config.js', 'http://res.afreecatv.com/script/common/jquery.placeholder.js']
        , callback: function() {
            requirejs(['app'], function(app) {
                app.start();
            }, function(err) {
            });
        }
    });
    define('app', ['afreeca', 'favorite'], function(afreeca, favorite) {
        var $ = afreeca.$;

        return {
            start : function()
            {
                _favorite = favorite;
            }
        }
    });

    $( '#btn_all' ).click( function() {
        $( this ).toggleClass( 'btn_all_on' );
        var flag = $( this ).hasClass("btn_all_on");
        All_Check(flag);
    } );


    function All_Check(flag)
    {
        $("#listOtherUcc .list div:visible").each(function() {
            $(this).find(':checkbox').each(function() {
                if( flag == true)
                {
                    $(this).prop('checked', true);
                }
                else
                {
                    $(this).prop('checked', false);
                }
            });
        });
    }

    function getNextVod()
    {
        oFrm = frmRow;
        var nextVodNo = '';

        for (var nIdx=0; nIdx < oFrm.elements.length; nIdx++)
        {
            var oElement = oFrm.elements[nIdx];

            if (oElement.type == "checkbox")
            {
                if(oElement.checked == false && oElement.value > 0 && nextVodNo=='')
                {
                    nextVodNo = oElement.value;
                }
            }
        }
        if( nextVodNo == '' ) {
            return -1;
        } else {
            return nextVodNo;
        }
    }

    /**
     *  댓글 이미지 업로드 기능 함수
     * @TODO 댓글 클래스 따로 만드는게 좋을 듯..
     */
    function setCommentImage(szObjectId) {
        $oTextArea = $("#"+szObjectId);
        $oCommentDiv = $oTextArea.parent();
        if ($oCommentDiv.length <= 0) return;

        $oImageForm = $oCommentDiv.find("form");
        $oThumbSpan = $oCommentDiv.find("span.thumb_img");
        if ($oImageForm.find("input[name=oFile]").val() != "") {
            if ($oThumbSpan.length > 0) {
                alert('이미지는 최대 1개까지 업로드가 가능합니다.');
                $oImageForm.find("input[name=oFile]").val('');
            }
            else {
                //확장자, 이미지 용량 10MB 체크 (IE9 이하 브라우저에선 동작 안함 )
                try {
                    oImageFile = $oImageForm.find("input[name=oFile]")[0].files[0];
                    // 확장자 체크
                    var re = /\.[^.]*(jpg|jpeg|png|gif|bmp)$/i;
                    if (!oImageFile.name.match(re)) {
                        alert(oImageFile.name+' : 지원하지 않는 파일입니다.');
                        return;
                    }
                    // 이미지 용량 체크
                    if ( oImageFile.size > 10485760 ){
                        alert('이미지는 최대 10MB까지 업로드 가능합니다.');
                        return;
                    }
                }
                catch (err) {}
                $oImageForm.find("input[name=szTextarea]").val($oTextArea.attr("id"));
                $oImageForm.submit();
            }
        }
    }

    function addCommentImage(szFileName, szObjectId) {
        $oTextArea =$("#"+szObjectId);
        $oCommentDiv = $oTextArea.parent();
        $oImageForm = $oCommentDiv.find("form");
        if ($oTextArea.length > 0) {
            aHtml = Array('');

            aHtml.push('<div class="file">');
            aHtml.push('<span>');
            aHtml.push('<input type="hidden" name="szCommentPhoto" value="' + szFileName + '">');
            aHtml.push('<img class="img" src="http://stimg.afreecatv.com/COMMENT/'+(document.nStationNo%10)+'/'+document.nStationNo+'/' + szFileName + '">');
            aHtml.push('</span>');
            aHtml.push('<button type="button" class="btn-del"><span>삭제</span></button>');
            aHtml.push('</div>');

            $oTextArea.html(aHtml.join(''));
            $oImageForm.find("input[name=oFile]").val('');
            $(".file button.btn-del").off('click').on('click', function() {
                $(this).parents('.file').remove();
            });

            if ($(this).parents('.cmmt_inp').find('.write-inp').text() == '') {
                $(this).parents('.cmmt_inp').find('btn-basic.blue').attr('disabled',true);
            }
        }
    }
</script>
</body>
</html>