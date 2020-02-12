<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Custom fonts for this template-->
<link href="../broadcast/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../broadcastcss/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
	<div id="content">
		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<div class="d-flex justify-content-end">
						<div class="col-sm-5 text-right">
							<form action="index.shop?tema=${param.tema}" method="post"
								name="searchform">
								<div class="input-group">
									<input type="hidden" name="pageNum" value="1"> <select
										name="searchtype" style="width: 100px">
										<option value="">검색</option>
										<option value="userid">아이디</option>
										<option value="name">이름</option>
										<option value="nickname">닉네임</option>
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

						<c:forEach items="${userList}" var="u">
							<div class="col-lg-4 col-md-6">
								<div class="product">
									<div class="image">
										<a href="../shop/index.shop?userid=${u.userid}"><img
											src="../user/pic/${u.profileUrl}" alt=""
											class="img-fluid image1"></a>
									</div>
									<div class="text">
										<h3 class="h5">
											<a href="../shop/index.shop?userid=${u.userid}">${u.name}</a>
										</h3>
									</div>
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
											href="index.shop?tema=${param.tema}&pageNum=${pageNum-1}"
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
												href="index.shop?tema=${param.tema}&pageNum=${a}"
												class="page-link">${a}</a></li>
										</c:if>
									</c:forEach>

									<c:if test="${pageNum<maxpage }">
										<li class="page-item"><a
											href="index.shop?tema=${param.tema}&pageNum=${pageNum+1}"
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