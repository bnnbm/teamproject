<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>구매완료</title>
</head>
<body>
	<section class="bar background-pentagon no-mb text-md-center">
		<div class="container">
			<div class="heading text-center">
				<h2>구매완료</h2>
			</div>
			<p class="lead">${sessionScope.loginUser.userid}님,결제해주셔서감사합니다.
				구매하신 물품을 확인하세요!</p>
			<!-- Carousel Start-->


			<div class="box mt-0 pb-0 no-horizontal-padding">
				<div class="table-responsive">
					<h2>구매 물품</h2>
					<table class="table">
						<thead>
							<tr>
								<td style="background: #4fbfa8; width: 20%">품명</td>
								<td style="background: white; width: 80%">${item.itemname}</td>
							</tr>
							<tr>
								<td style="background: #4fbfa8; width: 20%">가격</td>
								<td style="background: white; width: 80%"><fmt:formatNumber type="number" maxFractionDigits="3"
										value="${item.price*quantity}"/></td>
							</tr>
							<tr>
								<td style="background: #4fbfa8; width: 20%">택배정보</td>
								<td style="background: white; width: 80%">${item.delivery}
									<fmt:formatNumber type="number" maxFractionDigits="3"
										value="${item.deliverycost}" />원 <br>
								</td>
							</tr>
							<tr>
								<td style="background: #4fbfa8; width: 20%">구매일자</td>
								<td style="background: white; width: 80%"><jsp:useBean
										id="now" class="java.util.Date" /> <fmt:formatDate
										value="${now}" pattern="yyyy년MM월dd일 HH시mm분ss초" /></td>
							</tr>
						</thead>
					</table>
				</div>
			</div>

			<!-- Carousel End-->
		</div>
	</section>

</body>
</html>
