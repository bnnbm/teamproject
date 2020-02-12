<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
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
	<form id="f" method="post" action="denytakeback.shop">
		<input type="hidden" name="saleid" value="${im.saleid}" />
		<table class="table" style="width: 100%">

			<tr>


				<td style="width: 40%; text-align: center;">품명</td>
				<td style="width: 60%; text-align: center;">${im.itemname}</td>
			</tr>
			<tr>
				<td style="width: 40%; text-align: center;">반품 신청사유</td>
				<td style="width: 60%; text-align: center;">${im.reason}</td>
			</tr>
			<tr>
				<td style="width: 40%; text-align: center;">반려사유:</td>
				<td style="width: 60%;"><textarea name="refuse"
						style="outline-color: #4fbfa8;" cols="30" rows="14" id="comment"></textarea>
					<script>
						CKEDITOR.replace("comment", {
							filebrowserImageUploadUrl : "imgupload.shop"
						});
					</script></td>
			</tr>
			<tr>
				<td><input class="btn btn-template-outlined btn-sm"
					style="width: 100%; margin: auto;" type="button" onclick="cancle()"
					value="취소" /></td>
				<td><input class="btn btn-template-outlined btn-sm"
					style="width: 100%; margin: auto;" type="submit" value="반려" /></td>
			</tr>
		</table>
	</form>

</body>
</html>