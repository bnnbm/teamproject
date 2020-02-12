<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>카테고리</title>
</head>
<body>
	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row d-flex align-items-center flex-wrap">
				<div class="col-md-5">
					<ul class="breadcrumb d-flex justify-content-end">
						<li class="breadcrumb-item"><a href="../shop/index.shop?userid=${sessionScope.loginUser.userid }">Home</a></li>
						<li class="breadcrumb-item active"><a href="../item/category.shop?userid=${sessionScope.loginUser.userid}">Category</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="container">
			<div class="row bar">
				<div class="col-md-3">
					<!-- MENUS AND FILTERS-->
					<div class="panel panel-default sidebar-menu">
						<div class="panel-heading">
							<h3 class="h4 panel-title">Categories</h3>
						</div>
						<div class="panel-body">
							<ul class="nav nav-pills flex-column text-sm category-menu">
								<li class="nav-item"><a href="category.shop?userid=${param.userid}&tema=clothes"
									class="nav-link d-flex align-items-center justify-content-between"><span>Clothes</span></a>
								</li>
								<li class="nav-item"><a href="category.shop?userid=${param.userid}&tema=food"
									class="nav-link d-flex align-items-center justify-content-between"><span>Food
									</span></a></li>
								<li class="nav-item"><a href="category.shop?userid=${param.userid}&tema=toy"
									class="nav-link d-flex align-items-center justify-content-between"><span>Toy
									</span></a></li>
								<li class="nav-item"><a href="category.shop?userid=${param.userid}&tema=music"
									class="nav-link d-flex align-items-center justify-content-between"><span>Music
									</span></a></li>
								<li class="nav-item"><a href="category.shop?userid=${param.userid}&tema=beauty"
									class="nav-link d-flex align-items-center justify-content-between"><span>Beauty
									</span></a></li>
								<li class="nav-item"><a href="category.shop?userid=${param.userid}&tema=sports"
									class="nav-link d-flex align-items-center justify-content-between"><span>Sports
									</span></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="d-flex justify-content-end">
						<div class="col-sm-5 text-right">
							<form action="category.shop?tema=${param.tema}" method="post"
								name="searchform">
								<div class="input-group">
									<input type="hidden" name="pageNum" value="1"> <select
										name="searchtype" style="width: 100px">
										<option value="">검색</option>
										<option value="itemname">물품명</option>
										<option value="date">등록일</option>
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

					<p class="text-muted lead"></p>
					<div class="row products products-big">

						<c:forEach items="${itemList}" var="i">
							<div class="col-lg-4 col-md-6">
								<div class="product">
									<div class="image">
										<a href="sellingdetail.shop?userid=${param.userid}&tema=${param.tema }&itemid=${i.itemid}"><img
											src="img/${i.pictureUrl1}" alt="" class="img-fluid image1"></a>
									</div>
									<div class="text">
										<h3 class="h5">
											<a href="sellingdetail.shop?userid=${param.userid}&tema=${param.tema }&itemid=${i.itemid}">${i.itemname}</a>
										</h3>
										<p class="price">
											<fmt:formatNumber type="number" maxFractionDigits="3"
												value="${i.price}" />
											원
										</p>
									</div>
									<fmt:formatDate value="${i.date}" pattern="yyyyMMdd" var="da" />
									<c:if test="${now-da<7 }">
										<div class="ribbon-holder">
											<div class="ribbon new">NEW</div>
										</div>
									</c:if>
								</div>
							</div>
						</c:forEach>

					</div>

					<div class="pages">
						<div class="d-flex justify-content-center">
							<nav aria-label="Page navigation example">
								<ul class="pagination">

									<c:if test="${pageNum >1 }">
										<li class="page-item"><a
											href="category.shop?tema=${param.tema}&pageNum=${pageNum-1}"
											class="page-link">«</a></li>
									</c:if>

									<c:if test="${pageNum <= 1 }">
										<li class="page-item"><a href="#" class="page-link">«</a></li>
									</c:if>

									<c:forEach var="a" begin="${startpage}" end="${endpage }">

										<c:if test="${a==pageNum }">
											<li class="page-item"><a href="#" class="page-link">${a}</a></li>
										</c:if>
										<c:if test="${a!= pageNum }">
											<li class="page-item"><a
												href="category.shop?tema=${param.tema}&pageNum=${a}"
												class="page-link">${a}</a></li>
										</c:if>
									</c:forEach>

									<c:if test="${pageNum<maxpage }">
										<li class="page-item"><a
											href="category.shop?tema=${param.tema}&pageNum=${pageNum+1}"
											class="page-link">»</a></li>
									</c:if>

									<c:if test="${pageNum >= maxpage }">
										<li class="page-item"><a href="#" class="page-link">»</a></li>
									</c:if>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>