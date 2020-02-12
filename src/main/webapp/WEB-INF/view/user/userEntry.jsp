<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 / 로그인</title>
<script type="text/javascript">
	function win_upload() {
		var op = "width=500, height=150, left=50, top=150";
		open("pictureForm.shop", "", op);
	}
</script>
<script type="text/JavaScript"
	src="http://code.jquery.com/jquery-1.7.min.js"></script>
<script type="text/JavaScript"
	src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>


<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">

<script type='text/javascript'
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
<script src="../JS/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
<script type='text/javascript'>
	$(function() {
		$('.input-group.date').datepicker({
			calendarWeeks : false,
			todayHighlight : true,
			autoclose : true,
			format : "yyyy/mm/dd",
			language : "kr"
		});
	});
</script>

<script type="text/javascript">
	function openDaumZipAddress() {

		new daum.Postcode({

			oncomplete : function(data) {

				jQuery("#zonecode").val(data.zonecode);

				jQuery("#address1").val(data.address);

				jQuery("#address_etc").focus();

				console.log(data);

			}

		}).open();

	}
</script>
</head>
<body>
	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row d-flex align-items-center flex-wrap">
				<div class="col-md-7">
					<h1 class="h2">회원가입</h1>
				</div>
				<div class="col-md-5">
					<ul class="breadcrumb d-flex justify-content-end">
						<li class="breadcrumb-item"><a href="../shop/index.shop">Home</a></li>
						<li class="breadcrumb-item active">회원가입 / 로그인</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="container">
			<div class="row">
				<div class="col-lg-10">
					<div class="box">
						<h2 class="text-uppercase">회원가입</h2>
						<p class="lead">아직 회원이 아니신가요?</p>
						<p>가입을 통해 합리적인 가격과 세련된 디자인의 상품들을 구경하세요! 가입까지 1분이면 됩니다! 가입 후에
							모든 페이지를 이용해보세요!</p>
						<p class="text-muted">
							기타 문의사항이 있다면 연락주세요.<a href="../shop/contact.shop">쪽지</a> 평일 AM 09
							- PM 18 문의 가능합니다.
						</p>
						<hr>
						<form:form modelAttribute="user" method="post"
							enctype="multipart/form-data" action="userEntry.shop">
							<spring:hasBindErrors name="user">
								<font color="red"> <c:forEach
										items="${errors.globalErrors}" var="error">
										<spring:message code="${error.code}" />
									</c:forEach>
								</font>
							</spring:hasBindErrors>
							<br>
							<label for="name-profile">프로필 사진 등록하기</label>

							<div id="preview"></div>

							<img id="pro" src="" width=100px; height=100px;>

							<input type="hidden" id="profileUrl" name="profileUrl" value="" />

							<hr>
							<input type="file" id="profile" name="profile" class="inp-img"
								accept=".jpg,.jpeg,.png,.gif">
							<script>
								function readInputFile(input) {
									if (input.files && input.files[0]) {
										var reader = new FileReader();
										reader.onload = function(e) {
											$('#pro').hide();
											$('#preview')
													.html(
															"<img src="+ e.target.result +" style = 'width : 200px; height :150px'>");
											$('#profile').val(e.target.result);
										}
										reader.readAsDataURL(input.files[0]);
									}
								}
								$(".inp-img").on('change', function() {
									readInputFile(this);
								});
							</script>

							<div class="form-group">
								<label for="name-login">아이디</label>
								<form:input path="userid" class="form-control" value="${email}"
									placeholder="3자 이상 10자 이하" />
								<font color="red"><form:errors path="userid" /></font>
							</div>

							<div class="form-group">
								<label for="password-login">비밀번호</label>
								<form:password path="pass" class="form-control" />
								<font color="red"><form:errors path="pass" /></font>
							</div>

							<div class="form-group">
								<label for="email-login">이름</label>
								<form:input path="name" class="form-control" />
								<font color="red"><form:errors path="name" /></font>
							</div>

							<div class="form-group">
								<label for="email-login">닉네임</label>
								<form:input path="nickname" class="form-control"
									value="${nickname }" />
								<font color="red"><form:errors path="nickname" /></font>
							</div>


							<div class="row">
								<div class="col-sm-6">
									<div class="form-group">
										<label for="email-login">이메일</label>
										<form:input path="email" class="form-control"
											style="width:100%" />
										<font color="red"><form:errors path="email" /></font>
									</div>
								</div>
								<div class="col-sm-6">
								<label for="email-login">　</label>
									<i> <form:select path="email" class="form-control"
											style="width: 100%">
											<option value="@naver.com">@naver.com</option>
											<option value="@hanmail.net">@hanmail.net</option>
											<option value="@gmail.com">@gmail.com</option>
											<option value="@yahoo.co.kr">@yahoo.co.kr</option>
											<option value="@nate.com">@nate.com</option>
											<option value="">직접 입력</option>
										</form:select>
									</i>
								</div>
							</div>

							<div class="form-group">
								<label for="email-login">전화번호</label>
								<form:input path="tel" class="form-control"
									placeholder="ex)010-1234-5678" />
								<font color="red"><form:errors path="tel" /></font>
							</div>

							<div class="form-group">
								<label for="email-login">생년월일<i class="fa fa-calendar"></i></label>
								<div class="input-group date">
									<form:input path="age" class="form-control" />
									<span class="input-group-addon"></span>
								</div>
								<font color="red"><form:errors path="age" /></font>
							</div>

							<div class="form-group">
								<label for="email-login">주소</label> <br />
								<form:input path="zonecode" type="text" value=""
									style="width:50px; height:35px;" readonly="true" />

								&nbsp; <B>-</B> &nbsp; <input type="button"
									onClick="openDaumZipAddress();" value="주소 찾기" /> <br /> <br />
								<form:input path="address1" value=""
									style="width:100%; height:35px;" readonly="true" />
								<br /> <br />
								<form:input path="address_etc" value=""
									style="width:100%; height:35px;" placeholder="상세주소" />
								<font color="red"><form:errors path="address1" /></font>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-template-outlined">
									<i class="fa fa-user-md"></i> 가입하기
								</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>