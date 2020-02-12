<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../shop/vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="../shop/vendor/font-awesome/css/font-awesome.min.css">
<!-- Google fonts - Roboto-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
<!-- Bootstrap Select-->
<link rel="stylesheet"
	href="../shop/vendor/bootstrap-select/css/bootstrap-select.min.css">
<!-- owl carousel-->
<link rel="stylesheet"
	href="../shop/vendor/owl.carousel/assets/owl.carousel.css">
<link rel="stylesheet"
	href="../shop/vendor/owl.carousel/assets/owl.theme.default.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="../shop/css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="../shop/css/custom.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	function cancle() {
		self.close();
	};
</script>
</head>
<body>
	<form action="approvetakeback.shop" method="post">
		<input type="hidden" name="saleid" value="${im.saleid }" />
		<input type = "hidden" name = "userid" value = "${im.userid }"> 
		<table class="table" style="width: 100%">
			<tr>
				<td style="width: 40%; text-align: center;">유저 아이디</td>
				<td style="width: 60%; text-align: center;">${im.userid }</td>
			</tr>
			<tr>
				<td style="width: 40%; text-align: center;">물품명</td>
				<td style="width: 60%; text-align: center;">${im.itemname }</td>
			</tr>
			<tr>
				<td style="width: 40%; text-align: center;">가격</td>
				<td style="width: 60%; text-align: center;"><fmt:formatNumber
						type="number" maxFractionDigits="3" value="${im.price }" /></td>
			</tr>
			<tr>
				<td style="width: 40%; text-align: center;">수량</td>
				<td style="width: 60%; text-align: center;">${im.quantity }</td>
			</tr>

			<tr>
				<td style="width: 40%; text-align: center;">총 금액</td>
				<td style="width: 60%; text-align: center;"><fmt:formatNumber
						type="number" maxFractionDigits="3"
						value="${im.quantity*im.price }" /></td>
			</tr>
			<tr>
				<td style="width: 20%; text-align: center;">반품사유:</td>
				<td style="width: 80%;">${im.reason}</td>
			</tr>
			<tr>
				<td><input class="btn btn-template-outlined btn-sm"
					style="width: 100%; margin: auto;" type="submit" value="승인" /></td>

				<td><input class="btn btn-template-outlined btn-sm"
					style="width: 100%; margin: auto;" type="button" onclick = "location.href = 'denytakeback.shop?saleid=${im.saleid}&userid=${im.userid}'" value="반려" /></td>
			</tr>
		</table>
	</form>
</body>
</html>