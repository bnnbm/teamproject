<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>구매하기</title>
<script>
	$(document).ready(function() {
		$("#card").hide();
		$("#payment1").click(function() {
			$("#transfer").show();
			$("#card").hide();
		});
		$("#payment2").click(function() {
			$("#transfer").hide();
			$("#card").show();
		});
	});
</script>
</head>
<body>
	<div id="heading-breadcrumbs">
		<div class="container">
			<div class="row d-flex align-items-center flex-wrap">
				<div class="col-md-7">
					<h1 class="h2">주문/결제</h1>
				</div>
				<div class="col-md-5">
					<ul class="breadcrumb d-flex justify-content-end">
						<li class="breadcrumb-item active">주문결제</li>
						<li class="breadcrumb-item">주문완료</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="content">
		<div class="container">
			<div class="row bar">
				<div class="col-lg-12">
					<p class="text-muted lead">${item.itemname}</p>
				</div>
				<div id="basket" class="col-lg-9">
					<form:form modelAttribute="itemmanagement" action="buying.shop">
					<form:hidden path = "buyerid" value = "${sessionScope.loginUser.userid }"/>
					<form:hidden path = "price" value = "${item.price }"/>
					<form:hidden path = "delivery" value = "${item.delivery}"/>
					<form:hidden path = "deliverycost" value = "${item.deliverycost }"/>
					<form:hidden path = "itemid" value="${item.itemid }"/>
					<form:hidden path = "quantity" value = "${quantity }"/>
						<div class="box mt-0 pb-0 no-horizontal-padding">
							<form method="get" action="../item/shop-checkout1.shop">
								<div class="table-responsive">
									<h2>구매자 정보</h2>
									<table class="table">
										<thead>
											<tr>
												<td style="background: #4fbfa8; width: 20%">이름</td>
												<td style="width: 80%">${user.name}</td>
											</tr>
											<tr>
												<td style="background: #4fbfa8; width: 20%">이메일</td>
												<td style="width: 80%">${user.email}</td>
											</tr>
											<tr>
												<td style="background: #4fbfa8; width: 20%">휴대폰 번호</td>
												<td style="width: 80%">${user.tel}</td>
											</tr>
										</thead>
									</table>
								</div>
								<br>
								<div class="table-responsive">
									<h2>받는사람 정보</h2>
									<table class="table">
										<thead>
											<tr>
												<td style="background: #4fbfa8; width: 20%">이름</td>
												<td style="width: 80%">${user.name}</td>
											</tr>
											<tr>
												<td style="background: #4fbfa8; width: 20%">배송주소</td>
												<td style="width: 80%">${user.address}</td>
											</tr>
											<tr>
												<td style="background: #4fbfa8; width: 20%">휴대폰 번호</td>
												<td style="width: 80%">${user.tel}</td>
											</tr>
											<tr>
												<td style="background: #4fbfa8; width: 20%">배송요청사항</td>
												<td style="width: 80%">
												<form:select path = "deliverymessage" class="form-control" style="width: 100%">
														<option value="문 앞">문 앞</option>
														<option value="직접 받고 부재시 문 앞">직접 받고 부재시 문 앞</option>
														<option value="경비실">경비실</option>
														<option value="택배함">택배함</option>
												</form:select></td>
											</tr>
										</thead>
									</table>
								</div>
								<br>
								<div class="table-responsive">
									<h2>결제정보</h2>
									<table class="table">
										<thead>
											<tr>
												<td style="background: #4fbfa8; width: 20%">상품가격</td>
												<td style="width: 80%"><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.price}" />원</td>
											</tr>
											<tr>
												<td style="background: #4fbfa8; width: 20%">개수</td>
												<td style="width: 80%"><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${quantity}" />개</td>
											</tr>											
											<tr>
												<td style="background: #4fbfa8; width: 20%">할인쿠폰</td>
												<td style="width: 80%">0건</td>
											</tr>
											<tr>
												<td style="background: #4fbfa8; width: 20%">배송비</td>
												<td style="width: 80%"><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.deliverycost}" />원</td>
											</tr>
											<tr>
												<td style="background: #4fbfa8; width: 20%">총 결제금액</td>
												<td style="width: 80%"><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.price+itemdeliverycost}" />원</td>
											</tr>
											<tr>
												<td style="background: #4fbfa8; width: 20%">결제수단</td>
												<td style="width: 80%">
													<p>
														<input type="radio" id="payment1" name="paytype"
															value="1" checked="checked" />계좌이체 <input type="radio"
															id="payment2" name="paytype" value="2"/>신용/체크카드
													</p>
													<div id="transfer">
														<table class="table">
															<thead>
																<tr>
																	<td style="background: silver; width: 25%">은행 <form:select
																			path="payment">
																			<option value = "">선택하세요</option>
																			<option value="신한">신한</option>
																			<option value="국민">국민</option>
																			<option value="우리">우리</option>
																			<option value="기업">기업</option>
																			<option value="외환">외환</option>
																			<option value="농협">농협</option>
																			<option value="KEB하나">KEB하나</option>
																		</form:select>
																	</td>
																	<td style="background: silver; width: 75%"><form:input
																			path="payment" placeholder="숫자만 입력" /></td>
																</tr>
															</thead>
														</table>
													</div>
													<div id="card">
														<table class="table">
															<thead>
																<tr>
																	<td style="width: 30%; background: silver;">
																	등록된 카드 선택 
																	</td>
																	<td style="width: 70%">
																	<form:select
																			path="payment">
																			<option value = "">선택하세요.</option>
																			<c:if test="${!empty user.card1}">
																				<option value="${user.card1}">${user.card1}</option>
																			</c:if>
																			<c:if test="${!empty user.card2}">
																				<option value="${user.card2}">${user.card2}</option>
																			</c:if>
																		</form:select>
																	</td>
																</tr>
															</thead>
														</table>
													</div>
												</td>

											</tr>
										</thead>
									</table>
								</div>

								<div
									class="box-footer d-flex justify-content-between align-items-center">
									<div class="left-col">
										<a href="../item/category.shop?userid=${param.userid}"
											class="btn btn-secondary mt-0"><i
											class="fa fa-chevron-left"></i> 쇼핑 계속하기</a>
									</div>
									<div class="right-col">
										<button type="submit" class="btn btn-template-outlined">
											결제하기 <i class="fa fa-chevron-right"></i>
										</button>
									</div>
								</div>
							</form>
						</div>
					</form:form>
	
				</div>
				<div class="col-lg-3">
					<div id="order-summary" class="box mt-0 mb-4 p-0">
						<div class="box-header mt-0">
							<h3>결제 내역</h3>
						</div>
						<p class="text-muted">배송은 주말과 공휴일을 제외한 3-4일 정도 소요될 수 있습니다.</p>
						<div class="table-responsive">
							<table class="table">
								<tbody>
									<tr>
										<td>가격</td>
										<th><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.price*quantity}" />원</th>
									</tr>
									<tr>
										<td>배송비</td>
										<th><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.deliverycost}" />원</th>
									</tr>
									<tr>
										<td>할인 가격</td>
										<th></th>
									</tr>
									<tr class="total">
										<td>총 금액</td>
										<th><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${item.price*quantity+item.deliverycost}" />원</th>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="box box mt-0 mb-4 p-0">
						<div class="box-header mt-0">
							<h4>쿠폰 등록</h4>
						</div>
						<p class="text-muted">쿠폰이 있다면 아래에 코드를 등록해주시기 바랍니다.</p>
						<form>
							<div class="input-group">
								<input type="text" class="form-control"><span
									class="input-group-btn">
									<button type="button" class="btn btn-template-main">
										<i class="fa fa-gift"></i>
									</button>
								</span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>