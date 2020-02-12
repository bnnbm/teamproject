<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>상품 수정</title>
<script>
	function file_delete1() {
		document.f.pictureUrl1.value = ""
		file_desc1.style.display = "none";
	}
	function file_delete2() {
		document.f.pictureUrl2.value = ""
		file_desc2.style.display = "none";
	}
	function file_delete3() {
		document.f.pictureUrl3.value = ""
		file_desc3.style.display = "none";
	}
	function file_delete4() {
		document.f.pictureUrl4.value = ""
		file_desc4.style.display = "none";
	}
	function file_delete5() {
		document.f.pictureUrl5.value = ""
		file_desc5.style.display = "none";
	}
</script>
</head>
<body>
	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row d-flex align-items-center flex-wrap">
				<div class="col-md-7">
					<h1 class="h2">상품 수정</h1>
				</div>
				<div class="col-md-5">
					<ul class="breadcrumb d-flex justify-content-end">
						<li class="breadcrumb-item"><a href="index.shop?userid=${sessionScope.loginUser.userid }">Home</a></li>
						<li class="breadcrumb-item active">상품 수정</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<section class="bar">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<!-- MENUS AND WIDGETS -->
					<div class="panel panel-default sidebar-menu with-icons">
						<div class="panel-heading">
							<h3 class="h4 panel-title">Menu</h3>
						</div>
						<div class="panel-body">
							<ul class="nav nav-pills flex-column text-sm">
								<li class="nav-item"><a
									href="sell.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">판매 등록</a></li>
								<li class="nav-item"><a
									href="selling.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">판매 등록 물품 관리</a></li>
								<li class="nav-item"><a
									href="takeback.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">반품 신청 목록 관리</a></li>
								<li class="nav-item"><a
									href="delivery.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">배송 관리</a></li>
								<li class="nav-item"><a
									href=".shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">판매 통계</a></li>
								<li class="nav-item"><a
									href="qna.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">Q&A 관리</a></li>
								<li class="nav-item"><a
									href=".shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">판매된 목록</a></li>
								<li class="nav-item"><a
									href=".shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">반품/취소된 목록</a></li>
							</ul>
						</div>
					</div>
				</div>


				<div id="blog-post" class="col-md-9">
					<div id="comment-form">
						<form:form modelAttribute="item" action="sellingedit.shop"
							enctype="multipart/form-data" name ="f">
												
							<spring:hasBindErrors name="item">
								<font color="red"> <c:forEach
										items="${errors.globalErrors}" var="error">
										<spring:message code="${error.code}" />
									</c:forEach>
								</font>
							</spring:hasBindErrors>

							<form:hidden path="userid"
								value="${sessionScope.loginUser.userid}" />
							<form:hidden path="itemid" value="${item.itemid}" />

							<h4 class="text-uppercase">상품등록하기</h4>
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<label for="name">상품제목 <span
											class="required text-primary">*</span>
										</label>
										<form:input path="subject" class="form-control"
											value="${item.subject}" />
										<font color="red"><form:errors path="subject" /></font>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3">
									<div class="form-group">
										<label for="email">카테고리 <span
											class="required text-primary">*</span>
										</label>
										<h3>${item.tema }</h3>
										<form:hidden path="tema" value ="${item.tema }"/>
										<font color="red"><form:errors path="tema" /></font>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-5">
									<div class="form-group">
										<label for="email">아이템 명 <span
											class="required text-primary">*</span>
										</label>
										<form:input path="itemname" class="form-control"
											value="${item.itemname}" />
										<font color="red"><form:errors path="itemname" /></font>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-5">
									<div class="form-group">
										<label for="email">가격 <span
											class="required text-primary">*</span>
										</label>
										<form:input path="price" class="form-control"
											value="${item.price}" />
										<font color="red"><form:errors path="price" /></font>
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-sm-4">
									<div class="form-group">
										<label for="email">운행 회사<span
											class="required text-primary">*</span>
										</label>
										<form:select path="delivery" class="bs-select">
											<option value="CJ대한통운">CJ대한통운</option>
											<option value="한진택배">한진택배</option>
											<option value="우체국택배">우체국택배</option>
											<option value="롯데택배">롯데택배</option>
											<option value="로진택배">로진택배</option>
										</form:select>
										<font color="red"><form:errors path="delivery" /></font>
									</div>
								</div>
								<div class="col-sm-5">
									<div class="form-group">
										<label for="email">운행 요금<span
											class="required text-primary">*</span>
										</label>
										<form:input path="deliverycost" class="form-control" />
										<font color="red"><form:errors path="deliverycost" /></font>
									</div>
								</div>
							</div>							

							<div class="row">
								<div class="col-sm-5">
									<div class="form-group">
										<label for="email">슬라이드 사진 (최대 5장) <span
											class="required text-primary">*</span>
										</label><br>
										
										<c:if test="${!empty item.pictureUrl1}">
											<div id="file_desc1">
												<a href="img/${item.pictureUrl1}">${item.pictureUrl1}</a> 
												<a href="javascript:file_delete1()">[첨부파일삭제]</a>
											</div>
										</c:if>

										<c:if test="${!empty item.pictureUrl2}">
											<div id="file_desc2">
												<a href="img/${item.pictureUrl2}">${item.pictureUrl2}</a> 
												<a href="javascript:file_delete2()">[첨부파일삭제]</a>
											</div>
										</c:if>
										<c:if test="${!empty item.pictureUrl3}">
											<div id="file_desc3">
												<a href="img/${item.pictureUrl3}">${item.pictureUrl3}</a> 
												<a href="javascript:file_delete3()">[첨부파일삭제]</a>
											</div>
										</c:if>
										<c:if test="${!empty item.pictureUrl4}">
											<div id="file_desc4">
												<a href="img/${item.pictureUrl4}">${item.pictureUrl4}</a> 
												<a href="javascript:file_delete4()">[첨부파일삭제]</a>
											</div>
										</c:if>
										<c:if test="${!empty item.pictureUrl5}">
											<div id="file_desc5">
												<a href="img/${item.pictureUrl5}">${item.pictureUrl5}</a> 
												<a href="javascript:file_delete5()">[첨부파일삭제]</a>
											</div>
										</c:if>						
										
										<form:hidden path="pictureUrl1"/>
										<form:hidden path="pictureUrl2"/>
										<form:hidden path="pictureUrl3"/>
										<form:hidden path="pictureUrl4"/>
										<form:hidden path="pictureUrl5"/>
										
										
										
										<input type="file" name="picture1"><br>
										<input type="file" name="picture2"><br>
										<input type="file" name="picture3"><br>
										<input type="file" name="picture4"><br>
										<input type="file" name="picture5"><br>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-5">
									<div class="form-group">
										<label for="email">VOD <span
											class="required text-primary">*</span>
										</label>
										<form:input path="vod" class="form-control" />
										<font color="red"><form:errors path="vod"
												value="${item.vod}" /></font>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<label for="comment">세부 설명 <span
											class="required text-primary">*</span>
										</label>
										<form:textarea path="description" cols="50" rows="13"
											class="form-control" id="comment"></form:textarea>
										<font color="red"><form:errors path="description"
												value="${item.description}" /></font>
									</div>
								</div>
							</div>
							<script>
								CKEDITOR
										.replace(
												"comment",
												{
													filebrowserImageUploadUrl : "imgupload.shop"
												});
							</script>

							<div class="row">
								<div class="col-sm-12 text-right">
									<button class="btn btn-template-outlined" onclick="submit()">
										<i class="fa fa-comment-o"></i> 상품등록하기
									</button>
								</div>
							</div>
						</form:form>
					</div>
				</div>

			</div>
		</div>
	</section>
</body>
</html>