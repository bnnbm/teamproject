<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<script type="text/javascript">
	function listdo(page) {
		document.searchform.pageNum.value = page;
		document.searchform.submit();
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

					<div class="d-flex justify-content-end">
						<div class="col-sm-5 text-right">
							<form action="list.shop" method="post" name="searchform">
								<div class="input-group">
									<input type="hidden" name="pageNum" value="1"> <select
										name="searchtype" style="width: 100px">
										<option value="">검색</option>
										<option value="subject">제목</option>
										<option value="tema">카테고리</option>
										<option value="content">내용</option>
									</select>
									<script>
										searchform.searchtype.value = "${param.searchtype}";
									</script>

									<input type="text" name="searchcontent"
										value="${param.searchcontent }" placeholder="Search"
										class="form-control"> <span class="input-group-btn">
										<button type="submit" class="btn btn-template-main">
											<i class="fa fa-search"></i>
										</button>
									</span>
								</div>
							</form>
						</div>
					</div>
					<br>

					<div class="box mt-0 mb-lg-0">
						<div class="table-responsive">
							<table class="table table-hover">
								<c:if test="${listcount > 0}">
									<thead>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>글쓴이</th>
											<th>날짜</th>
											<th>조회수</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="border" items="${borderlist}">
											<tr>
												<td>${borderno}</td>
												<c:set var="borderno" value="${borderno-1}" />

												<td style="text-align: left;"><c:if
														test="${!empty border.fileUrl}">
														<%-- 첨부파일 존재 --%>
														<a href="file/${border.fileUrl}">@</a>
													</c:if> <c:if test="${empty border.fileUrl}">
             &nbsp;&nbsp;&nbsp;
          </c:if> <a href="detail.shop?userid=${param.userid}&tema=${border.tema}&no=${border.no}">${border.subject}</a>
												</td>
												<td>${border.nickname}</td>
												<td><fmt:formatDate value="${border.date}"
														pattern="yyyy-MM-dd HH:hh" /></td>
												<td>${border.view}</td>
											</tr>
										</c:forEach>
										<%----------------%>
								</c:if>
								<c:if test="${listcount == 0}">
									<tr>
										<td colspan="5">등록된 게시물이 없습니다.</td>
									</tr>
								</c:if>
								<tr>
								    <c:if test="${tema==1}">
								       <c:if test="${sessionScope.loginUser.userid==param.userid}">
								          <td colspan="5" align="right"><a
											href="write.shop?userid=${param.userid}&tema=${param.tema}">[글쓰기]</a></td>
								       </c:if>
								    </c:if>
								    <c:if test="${tema!=1}">
									   <c:if test="${!empty sessionScope.loginUser}">
										   <td colspan="5" align="right"><a
											   href="write.shop?userid=${param.userid}&tema=${param.tema}">[글쓰기]</a></td>
									   </c:if>
									</c:if>
								</tr>
								</tbody>
							</table>
							<div class="d-flex justify-content-center">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<c:if test="${pageNum <= 1}">
											<li class="page-item"><a href="#" class="page-link">«</a></li>
										</c:if>
										<c:if test="${pageNum > 1}">
											<li class="page-item"><a
												href="javascript:listcall(${pageNum - 1})" class="page-link">«</a></li>
										</c:if>

										<c:forEach var="a" begin="${startpage}" end="${endpage}">
											<c:if test="${a == pageNum}">
												<li class="page-item"><a href="#" class="page-link">${a}</a>
												<li class="page-item">
											</c:if>
											<c:if test="${a != pageNum}">
												<li class="page-item"><a
													href="javascript:listcall(${a})" class="page-link">${a}</a>
												<li class="page-item">
											</c:if>
										</c:forEach>

										<c:if test="${pageNum >= maxpage}">
											<li class="page-item"><a href="#" class="page-link">»</a></li>
										</c:if>
										<c:if test="${pageNum < maxpage}">
											<li class="page-item"><a
												href="javascript:listcall(${pageNum + 1})" class="page-link">»</a></li>
										</c:if>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>