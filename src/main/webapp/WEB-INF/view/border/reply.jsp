<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- /WEB-INF/view/border/updatereply.jsp --%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
							<form:form modelAttribute="replyboard" action="updatereply.shop"
								enctype="multipart/form-data" name="f">
								<input type="hidden" name="no" value="${param.no}">
								<input type="hidden" name="num" value="${param.num}">
								<input type="hidden" name="tema" value="${param.tema}">
								<table class="table table-hover">
									<thead>
										<tr>
											<td>아이디</td>
											<td>
												<div class="form-group">
													<form:input path="userid"
														value="${sessionScope.loginUser.userid}"
														class="form-control" />
													<font color="red"><form:errors path="userid" /></font>
												</div>
											</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>내용</td>
											<td><form:textarea path="content" rows="15" cols="80"
													class="form-control"/> 
												<font color="red"><form:errors path="content" /></font></td>
										</tr>
									</tbody>
	
									<tr>
										<td colspan="2">
											<div class="row">
												<div class="col-sm-12 text-right">
													<button class="btn btn-template-outlined"
														onclick="javascript:document.f.submit()">
														<i class="fa fa-comment-o"></i> 수정완료
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