<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/jspHeader.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><decorator:title /></title>
<script type="text/javascript" 
   src="http://cdn.ckeditor.com/4.5.7/full/ckeditor.js">
</script>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet"
	href="../shop/vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="../shop/vendor/font-awesome/css/font-awesome.min.css">
<!-- Google fonts - Roboto-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
<!-- Bootstrap Select-->
<link rel="stylesheet"
	href="../shop/vendor/bootstrap-select/css/bootstrap-select.min.css">
<!-- owl carousel-->
<link rel="stylesheet"
	href="../shop/vendor/owl.carousel/assets/owl.carousel.css">
<link rel="stylesheet"
	href="../shop/vendor/owl.carousel/assets/owl.theme.default.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="../shop/css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="../shop/css/custom.css">
<!-- Favicon and apple touch icons-->
<link rel="shortcut icon" href="../shop/img/favicon.ico"
	type="image/x-icon">
<link rel="apple-touch-icon" href="../shop/img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="../shop/img/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="../shop/img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="../shop/img/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="../shop/img/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="../shop/img/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="../shop/img/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="../shop/img/apple-touch-icon-152x152.png">

<script src="../shop/vendor/jquery/jquery.min.js"></script>
<script src="../shop/vendor/popper.js/umd/popper.min.js"></script>
<script src="../shop/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../shop/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="../shop/vendor/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="../shop/vendor/jquery.counterup/jquery.counterup.min.js"></script>
<script src="../shop/vendor/owl.carousel/owl.carousel.min.js"></script>
<script
	src="../shop/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
<script src="../shop/js/jquery.parallax-1.1.3.js"></script>
<script src="../shop/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<script src="../shop/vendor/jquery.scrollto/jquery.scrollTo.min.js"></script>
<script src="../shop/js/front.js"></script>

<decorator:head />
<script type="text/javascript">
function logout(){
   $.ajax({
      url:"../user/logout.shop",
      type:"post",
      success: function(data){
         location.href=data
         
      },
      error: function(e){
            alert(JSON.stringify(e));
         }
   });
}

closetime = 1;
function Start(URL, WIDTH, HEIGHT) {
      windowprops = "left=50,top=50,width=" + WIDTH + ",height=" + HEIGHT;
      preview = window.open(URL, "preview", windowprops);
         if (closetime){
            
            setTimeout("preview.close();location.href='/project/user/logout1.shop';", closetime*100)
            
         }
      }

function logoutWithNaver(){
      url='https://nid.naver.com/nidlogin.logout?returl=https://www.naver.com/';
      width=100;
      height = 100;
      delay = 1;
      timer = setTimeout("Start(url, width, height)", delay*1000);
   }
   

   
</script>
</head>

<body>
	<div id="all">
		<!-- Top bar-->
		<div class="top-bar">
			<div class="container">
				<div class="row d-flex align-items-center">
					<div class="col-md-6 d-md-block d-none">
						<p>1인 크리에이터 쇼핑몰</p>
					</div>
					<div class="col-md-6">
						<div class="d-flex justify-content-md-end justify-content-between">
							<ul class="list-inline contact-info d-block d-md-none">
								<li class="list-inline-item"><a href="#"> <i
										class="fa fa-phone"></i></a></li>
								<li class="list-inline-item"><a href="#"> <i
										class="fa fa-envelope"></i></a></li>
							</ul>
							<div class="login">

								<c:if test="${empty sessionScope.loginUser}">
									<a href="../user/login.shop" class="login-btn"><i
										class="fa fa-sign-in"></i> <span
										class="d-none d-md-inline-block">로그인</span></a>

									<a href="../user/userEntry.shop" class="signup-btn"> <i
										class="fa fa-user"></i> <span class="d-none d-md-inline-block">회원가입</span></a>
									
								</c:if>
								<c:if test="${!empty sessionScope.loginUser}">
									 <a href="../shop/index.shop?userid=${sessionScope.loginUser.userid}" class="signup-btn"> <i
										class="fa fa-user"></i> <span class="d-none d-md-inline-block">내 쇼핑몰 가기</span></a>
									 <a href="../shop/mypage.shop?userid=${sessionScope.loginUser.userid}" class="signup-btn"> <i
										class="fa fa-user"></i> <span class="d-none d-md-inline-block">Mypage</span></a>										
									<c:if test="${fn:substring(sessionScope.loginUser.userid,0,2) eq 'n*'}">                    
                                        <a href="#" onclick="javascript:logoutWithNaver();" class="signup-btn"> <i
                                          class="fa fa-sign-out"></i> <span class="d-none d-md-inline-block">logout</span></a>
                                  	</c:if>
                                  	<c:if test="${fn:substring(sessionScope.loginUser.userid,0,2) ne 'n*'}">
                                  		<a href="javascript:logout();" class="signup-btn"> <i
                                       	  class="fa fa-sign-out"></i> <span class="d-none d-md-inline-block">logout</span></a>
                                    </c:if>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Top bar end-->
		<div class="row bar">
			<div class="col-md-12">
				<decorator:body />
			</div>
		</div>
	</div>
</body>
</html>