<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- /WEB-INF/view/border/write.jsp --%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>

	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row d-flex align-items-center flex-wrap">
				<c:if test="${param.tema == 1}">
					<div class="col-md-7">
						<h1 class="h2">공지사항</h1>
						<h4>총 ${listcount} 건</h4>
					</div>
				</c:if>
				<c:if test="${param.tema == 2}">
					<div class="col-md-7">
						<h1 class="h2">건의사항</h1>
						<h4>총 ${listcount} 건</h4>
					</div>
				</c:if>
				<c:if test="${param.tema == 3}">
					<div class="col-md-7">
						<h1 class="h2">자유게시판</h1>
						<h4>총 ${listcount} 건</h4>
					</div>
				</c:if>
				<div class="col-md-5">
					<ul class="breadcrumb d-flex justify-content-end">
						<li class="breadcrumb-item"><a href="index.shop">Home</a></li>
						<li class="breadcrumb-item active">Accordions</li>
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
                        <li class="nav-item"><a href="list.shop?userid=${param.userid}&tema=1"
                           class="nav-link">공지사항</a></li>
                        <li class="nav-item"><a href="list.shop?userid=${param.userid}&tema=2"
                           class="nav-link">건의사항</a></li>
                        <li class="nav-item"><a href="list.shop?userid=${param.userid}&tema=3"
                           class="nav-link">자유게시판</a></li>
                        <li class="nav-item"><a href="faq.shop?userid=${param.userid}&tema=4"
                           class="nav-link">FAQ</a></li>
                     </ul>
                  </div>
					</div>
				</div>

				<div id="customer-orders" class="col-md-9">
					<div class="box mt-0 mb-lg-0">
						<div class="table-responsive">


							<form:form modelAttribute="border" action="write.shop"
								enctype="multipart/form-data" name="f">
								<input type="hidden" name="no" value="1">
								<input type="hidden" name="tema" value="${param.tema}">
								<form:hidden path="userid" value = "${param.userid}"/>
								<table class="table table-hover">
									<thead>
										<tr>
											<td>글쓴이</td>
											<td>
												<div class="form-group">
													<form:input path="nickname"
														value="${sessionScope.loginUser.nickname}"
														class="form-control" />
													<font color="red"><form:errors path="nickname" /></font>
												</div>
											</td>
										</tr>
										<tr>
											<td>제목</td>
											<td>
												<div class="form-group">
													<form:input path="subject" class="form-control" />
													<font color="red"><form:errors path="subject" /></font>
												</div>
											</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>내용</td>
											<td><form:textarea path="content" rows="15" cols="80"
													class="form-control" /> <script>
														CKEDITOR
																.replace(
																		"content",
																		{
																			filebrowserImageUploadUrl : "imgupload.shop"
																		});
													</script> <font color="red"><form:errors path="content" /></font></td>
										</tr>
									</tbody>
									<tr>
										<td>첨부파일</td>
										<td><input type="file" name="file"></td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="row">
												<div class="col-sm-12 text-right">
													<button class="btn btn-template-outlined"
														onclick="javascript:document.f.submit()">
														<i class="fa fa-comment-o"></i> 작성완료
													</button>
												</div>
											</div>
										</td>
									</tr>
								</table>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>