<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세보기</title>
<script>
	function listcall(page) {
		document.sf.pageNum.value = page;
		document.sf.submit();
	}
	function up(no, num, userid) {
		if (confirm("댓글을 수정하시겠습니까?")) {
			location.href = "updatereply.shop?no=" + no + "&num=" + num
					+ "&userid=" + userid;

		}
	}
	function recom(no, num, grp, grplevel, grpstep) {
		location.href = "replyreply.shop?no=" + no + "&num=" + num + "&grp=" + grp
				+ "&grplevel=" + grplevel + "&grpstep=" + grpstep;
	}
</script>
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
							<table class="table table-hover">
								<thead>
									<tr>
										<td width="15%">닉네임</td>
										<td width="85%" class="leftcol">${border.nickname}</td>
									</tr>
									<tr>
										<td>제목</td>
										<td class="leftcol">${border.subject}</td>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td>내용</td>
										<td class="legtcol">
											<table>
												<tr>
												${border.content}
												</tr>
											</table>
										</td>
									</tr>
								</tbody>
								<tr>
									<td>첨부파일</td>
									<td>&nbsp; <c:if test="${!empty border.fileUrl}">
										<a href="file/${border.fileUrl}">${border.fileUrl}</a>
									</c:if>
									</td>
								</tr>


								<tr>
									<div class="d-flex justify-content-start">
										<form:form modelAttribute="replyboard"
											action="replyboardwrite.shop" name="f">
											<form:hidden path="no" value="${border.no}" />
											<form:hidden path="userid"
												value="${sessionScope.loginUser.userid}" />
											<div class="table-responsive">
												<table class="table table-hover">
													<tbody>
														<tr>
															<td>
																<p class="text-center text-muted">작성자 :
																	${sessionScope.loginUser.userid}님</p>
															</td>
															<td>
																<div class="form-group">
																	<form:input path="content" class="form-control" />
																</div>
															</td>
															<td>
																<button class="btn btn-template-outlined">
																	<i style="height: 10px;" class="fa fa-sign-in"></i> 작성
																</button>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</form:form>
									</div>
								</tr>


								<tr>
									<div class="table-responsive">
										<table class="table table-hover">
											<c:if test="${replycount==0}">
												<tr>
													<td colspan="5">등록된 댓글이 없습니다.</td>
												</tr>
											</c:if>

											<c:if test="${replycount > 0 }">
											<c:forEach var="r" items="${replylist}" varStatus="stat">
											    <input type="hidden" name="no" value="${r.no}">
			                                    <input type="hidden" name="num" value="${r.num}">
												<input type="hidden" name="userid" value="${r.userid}">
												<input type="hidden" name="content" value="${r.content}">
												<tr>
													<td style="width: 20%;"><c:if
															test="${r.grplevel>0}">
															<c:forEach var="i" begin="2" end="${r.grplevel}">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </c:forEach>└
         </c:if> userid : ${r.userid}</td>

													<td style="width: 50%; text-align: left;">
														${r.content}&nbsp;&nbsp; <a
														href="javascript:recom('${r.no}','${r.num}','${r.grp}','${r.grplevel}','${r.grpstep}','${border.tema}')">[댓글]




													
													</td>
													<td style="font-size: 13px"><c:if
															test="${sessionScope.loginUser.userid == r.userid}">
															<a
																href="javascript:up('${r.no}','${r.num}','${r.userid}','${r.content}')">[수정]</a>
																
														<form:form modelAttribute="replyboard" action="deletereply.shop" name="deleteform${stat.index}">
														<input type="hidden" name="num" value="${r.num}" />
														<input type="hidden" name="boardnum" value="${border.no}"/>
														<input type="hidden" name="userid" value="${r.userid}"/>
														<input type="hidden" name="tema" value="${border.tema}"/>													
														<a href="#" onclick="document.deleteform${stat.index}.submit()">[삭제]</a>
														</form:form>									
														</c:if></td>
												</tr>
												</c:forEach>
											</c:if>
											
											<tr>
												<td colspan="5">
													<div class="w3-container">
														<c:if test="${pageNum <= 1}">
															<a>＜</a>
														</c:if>
														<c:if test="${pageNum > 1}">
															<a href="javascript:listcall(${pageNum - 1})">＜</a>
														</c:if>
														<c:forEach var="a" begin="${startpage}" end="${endpage}">
															<c:if test="${a == pageNum}">
																<a>[${a}]</a>
															</c:if>
															<c:if test="${a != pageNum}">
																<a href="javascript:listcall(${a})">[${a}]</a>
															</c:if>
														</c:forEach>
														<c:if test="${pageNum >= maxpage}">
															<a>＞</a>
														</c:if>
														<c:if test="${pageNum < maxpage}">
															<a href="javascript:listcall(${pageNum + 1})">＞</a>
														</c:if>
													</div>
												</td>
											</tr>
										</table>
										
									</div>
								</tr>
								<tr>
									<div class="table-responsive">
										<table class="table table-hover">

											<tr>
												<td colspan="2"><c:if
														test="${sessionScope.loginUser.nickname == border.nickname}">
														<a href="update.shop?userid=${param.userid}&tema=${border.tema}&no=${border.no}">[수정]</a>
														<a href="delete.shop?userid=${param.userid}&tema=${border.tema}&no=${border.no}">[삭제]</a>
													</c:if> <a href="list.shop?userid=${param.userid}&tema=${border.tema}">[게시물 목록]</a></td>
											</tr>
										</table>
									</div>
								</tr>

							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>