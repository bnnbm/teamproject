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
	function logout() {
		$.ajax({
			url : "../user/logout.shop",
			type : "post",
			success : function(data) {
				location.href = data

			},
			error : function(e) {
				alert(JSON.stringify(e));
			}
		});
	}

	closetime = 1;
	function Start(URL, WIDTH, HEIGHT) {
		windowprops = "left=50,top=50,width=" + WIDTH + ",height=" + HEIGHT;
		preview = window.open(URL, "preview", windowprops);
		if (closetime) {

			setTimeout(
					"preview.close();location.href='/project/user/logout1.shop';",
					closetime * 100)

		}
	}

	function logoutWithNaver() {
		url = 'https://nid.naver.com/nidlogin.logout?returl=https://www.naver.com/';
		width = 100;
		height = 100;
		delay = 1;
		timer = setTimeout("Start(url, width, height)", delay * 1000);
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
									<a href="../broadcast/index.shop" class="signup-btn"> <i
										class="fa fa-user"></i> <span class="d-none d-md-inline-block">쇼핑몰
											리스트 가기</span></a>
								</c:if>
								<c:if test="${!empty sessionScope.loginUser}">
									<a href="../broadcast/index.shop" class="signup-btn"> <i
										class="fa fa-user"></i> <span class="d-none d-md-inline-block">쇼핑몰
											리스트 가기</span></a>
									<a
										href="../shop/mypage.shop?userid=${sessionScope.loginUser.userid}"
										class="signup-btn"> <i class="fa fa-user"></i> <span
										class="d-none d-md-inline-block">Mypage</span></a>
									<c:if
										test="${fn:substring(sessionScope.loginUser.userid,0,2) eq 'n*'}">
										<a href="#" onclick="javascript:logoutWithNaver();"
											class="signup-btn"> <i class="fa fa-sign-out"></i> <span
											class="d-none d-md-inline-block">logout</span></a>
									</c:if>
									<c:if
										test="${fn:substring(sessionScope.loginUser.userid,0,2) ne 'n*'}">
										<a href="javascript:logout();" class="signup-btn"> <i
											class="fa fa-sign-out"></i> <span
											class="d-none d-md-inline-block">logout</span></a>
									</c:if>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Top bar end-->

		<!-- Navbar Start-->
		<header class="nav-holder make-sticky">
			<div id="navbar" role="navigation" class="navbar navbar-expand-lg">
				<div class="container">
					<a href="../shop/index.shop?userid=${param.userid}"
						class="navbar-brand home"> <img src="../logo/small-mark.png"
						alt="Universal logo" class="d-none d-md-inline-block"
						style="width: 170px; height: 50px;"> <img
						src="../logo/small-mark.png" alt="Universal logo"
						class="d-inline-block d-md-none"
						style="width: 170px; height: 50px;"> <span class="sr-only">Universal
							- go to homepage</span></a>
					<button type="button" data-toggle="collapse"
						data-target="#navigation"
						class="navbar-toggler btn-template-outlined">
						<span class="sr-only">Toggle navigation</span> <i
							class="fa fa-align-justify"></i>
					</button>
					<div id="navigation" class="navbar-collapse collapse">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item dropdown active"><a
								href="../shop/index.shop?userid=${param.userid}">Home <b
									class="caret"></b></a></li>

							<li class="nav-item dropdown menu-small"><a href="#"
								data-toggle="dropdown" class="dropdown-toggle">Shopping <b
									class="caret"></b></a>
								<ul class="dropdown-menu megamenu">
									<li>
										<div class="row">
											<div class="col-lg-3 col-md-6">
												<h5>Category</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a
														href="../item/category.shop?userid=${param.userid}&tema=clothes"
														class="nav-link">CLOTHES</a></li>
													<li class="nav-item"><a
														href="../item/category.shop?userid=${param.userid}&tema=food"
														class="nav-link">FOOD</a></li>
													<li class="nav-item"><a
														href="../item/category.shop?userid=${param.userid}&tema=toy"
														class="nav-link">TOY</a></li>
													<li class="nav-item"><a
														href="../item/category.shop?userid=${param.userid}&tema=music"
														class="nav-link">MUSIC</a></li>
													<li class="nav-item"><a
														href="../item/category.shop?userid=${param.userid}&tema=beauty"
														class="nav-link">Beauty</a></li>
													<li class="nav-item"><a
														href="../item/category.shop?userid=${param.userid}&tema=sport"
														class="nav-link">SPORTS</a></li>
												</ul>
											</div>
										</div>
									</li>
								</ul></li>



							<li class="nav-item dropdown menu-small"><a href="#"
								data-toggle="dropdown" class="dropdown-toggle">VOD <b
									class="caret"></b></a>
								<ul class="dropdown-menu megamenu">
									<li>
										<div class="row">
											<div class="col-lg-3 col-md-6">
												<h5>VOD</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a
														href="../broadcast/vodreplay.shop?userid=${param.userid}"
														class="nav-link">★NEW</a></li>
													<li class="nav-item"><a
														href="../broadcast/vodreplay.shop?userid=${param.userid}"
														class="nav-link">★HOT</a></li>
												</ul>
											</div>
										</div>
									</li>
								</ul></li>
							<!-- ========== FULL WIDTH MEGAMENU ==================-->
							<li class="nav-item dropdown menu-large"><a href="#"
								data-toggle="dropdown" data-hover="dropdown" data-delay="200"
								class="dropdown-toggle">Communication <b class="caret"></b></a>
								<ul class="dropdown-menu megamenu">
									<li>
										<div class="row">
											<div class="col-lg-6">
												<img
													src="https://cdn.pixabay.com/photo/2016/11/03/18/19/social-media-1795578_1280.jpg"
													alt="" class="img-fluid d-none d-lg-block">
											</div>
											<div class="col-md-6 col-lg-3">
												<h5>공지사항</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a
														href="../border/list.shop?userid=${param.userid}&tema=1"
														class="nav-link"> 공지사항</a></li>
												</ul>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a
														href="../border/faq.shop?userid=${param.userid}&tema=4"
														class="nav-link"> FAQ</a></li>
												</ul>
											</div>
											<div class="col-md-6 col-lg-3">
												<h5>게시판</h5>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a
														href="../border/list.shop?userid=${param.userid}&tema=2"
														class="nav-link"> 건의사항</a></li>
												</ul>
												<ul class="list-unstyled mb-3">
													<li class="nav-item"><a
														href="../border/list.shop?userid=${param.userid}&tema=3"
														class="nav-link"> 자유게시판</a></li>
												</ul>
											</div>
											<div class="col-md-6 col-lg-3"></div>
											<div class="col-md-6 col-lg-3"></div>
										</div>
									</li>
								</ul></li>
						</ul>
					</div>
					<div id="search" class="collapse clearfix">
						<form role="search" class="navbar-form">
							<div class="input-group">
								<input type="text" placeholder="Search" class="form-control">
								<span class="input-group-btn">
									<button type="submit" class="btn btn-template-main">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</header>
		<!-- Navbar End-->

		<decorator:body />

		<!-- GET IT-->
		<!-- FOOTER -->
		<footer class="main-footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<h1 style="font-size: 55px;">1234-1234</h1>
						<p style="color: #FFFFFF; font-size: 18px;">Mon-Friday am 9:00
							- pm 6:00 (Lunch pm 12:00 - pm 1:00) Sat-Sun.Holiday OFF</p>
						<a href="../shop/contact.shop" class="btn btn-template-main">
							QNA</a>
					</div>
					<div class="col-lg-7">
						<br>
						<h4>COMPANY : PAPRIKA TV</h4>
						<p style="color: #ffffff; font-size: 15px;">
							<br>address : GOODEE, 115 Gasan digital 2-ro,Geumcheon-gu,
							Seoul, Republic of Korea <br>representative name : group
							no.1 <br>contact email : info@fakeemail.com <br>tel :
							+33 555 444 333 <br>
							<br> <strong>Copyright &copy; 2020. All rights
								reserved</strong>
						</p>
					</div>
					<div class="col-lg-2">
						<ul class="list-inline photo-stream">
							<br>
							<li class="list-inline-item"><a href="../user/login.shop">JOIN
							</a></li>
							<br>
							<li class="list-inline-item"><a href="../item/category.shop">SHOP
							</a></li>
							<br>
							<li class="list-inline-item"><a href="../shop/contact.shop">FAQ
							</a></li>
							<br>
						</ul>
					</div>
				</div>
			</div>
			<div class="copyrights">
				<div class="container">
					<div class="row">
						<div class="col-lg-4 text-center-md">
							<p>&copy; 2020. GOODEE / 김경택 양영원 조형도 최보예</p>
						</div>
						<div class="col-lg-8 text-right text-center-md">
							<p>Template design is good</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>