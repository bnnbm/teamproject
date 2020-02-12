<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>안녕하세요</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

.animation_canvas { /* 이미지 한개의 영역만 보여줌 */
	overflow: hidden; /* 영역 외부의 내용을 보여주지 않음 */
	position: relative;
	width: 931px;
	height: 300px;
}
/* 이미지 5개가 보여지는 영역  */
.slider_panel {
	width: 4665px;
	position: relative;
}
/* 이미지 한개 보여지는 영역  */
.slider_image {
	float: left;
	width: 931px;
	height: 300px;
}
/* 설명을 보여주는 영역*/
.slider_text_panel {
	position: absolute;
	top: 100px;
	left: 50px;
}
/* 설명의 내용 */
.slider_text {
	position: absolute;
	width: 250px;
	height: 150px;
}
/* 선택버튼의 영역*/
.control_panel {
	position: absolute;
	top: 280px;
	left: 465px;
	height: 13px;
	overflow: hidden;
}
/*선택버튼 이미지 */
.control_button {
	width: 12px;
	height: 46px;
	position: relative;
	float: left;
	cursor: pointer;
	background: url('../shop/slide/point_button.png');
}
/* 마우스가 올라가게 되면  살짝 올라감*/
.control_button:hover {
	top: -16px;
}
/* 다시 돌아옴*/
.control_button.select {
	top: -31px;
}
</style>
<script type="text/javascript">
	$(function() {
		//버튼들 이벤트 등록
		$(".control_button").each(function(index) {
			$(this).attr("idx", index)
		}).click(function() {
			//$(this).attr('idx') : 클릭된 컴포넌트의 idx 속성 값 0~4
			var index = $(this).attr('idx');
			moveSlider(index);
		});
		//클릭과 상관없이 화면이 로드 된 경우 실행됨
		//처음에 몰아나오는 텍스트를 보이지 않도록 설정 + idx 속성 등록
		$('.slider_text').css("left", -300).each(function(index) {
			$(this).attr("idx", index)
		});
		moveSlider(0); //첫번째 이미지가 화면에 출력되도록
		var idx = 0;
		var inc = 1;
		setInterval(function() {
			if (idx >= 4) {
				inc = -1;
			}
			if (idx <= 0) {
				inc = 1;
			}
			idx += inc;
			moveSlider(idx);
		}, 5000);
	});

	function moveSlider(index) {
		var moveLeft = -(index * 931);
		$('.slider_panel').animate({
			left : moveLeft
		}, 'slow');
		$('.control_button[idx=' + index + ']').addClass('select');
		$('.control_button[idx!=' + index + ']').removeClass('select');
		$('.slider_text[idx=' + index + ']').show().animate({
			left : 0
		}, 'slow');
		$('.slider_text[idx!=' + index + ']').hide('slow', function() {
			$(this).css('left', -300);
		});
	}
</script>
</head>
<body>
	<!-- Product Catagories Area Start -->
	<div class="products-catagories-area clearfix">
		<div class="animation_canvas">

			<div class="slider_panel">
				<img src="../shop/slide/C1.png" class="slider_image" /> <img
					src="../shop/slide/C2.jpg" class="slider_image" /> <img
					src="../shop/slide/C3.png" class="slider_image" /> <img
					src="../shop/slide/C4.jpg" class="slider_image" /> <img
					src="../shop/slide/C5.jpg" class="slider_image" />
			</div>

			<div class="control_panel">
				<div class="control_button"></div>
				<div class="control_button"></div>
				<div class="control_button"></div>
				<div class="control_button"></div>
				<div class="control_button"></div>
			</div>
		</div>
		
		
		<div class="amado-pro-catagory clearfix">

			<!-- Single Catagory -->
			<div class="single-products-catagory clearfix">
				<a href="shop.html"> <img src="../shop/img/bg-img/1.jpg" alt="" >
					<!-- Hover Content -->
					<div class="hover-content">
						<div class="line"></div>
						<p>180,000</p>
						<h4>방송용 의자</h4>
					</div>
				</a>
			</div>

			<!-- Single Catagory -->
			<div class="single-products-catagory clearfix">
				<a href="shop.html"> <img src="../shop/img/bg-img/2.jpg" alt="" >
					<!-- Hover Content -->
					<div class="hover-content">
						<div class="line"></div>
						<p>24,000</p>
						<h4>공기정화용 꽃</h4>
					</div>
				</a>
			</div>

			<!-- Single Catagory -->
			<div class="single-products-catagory clearfix">
				<a href="shop.html"> <img src="../shop/img/bg-img/3.jpg" alt="" >
					<!-- Hover Content -->
					<div class="hover-content">
						<div class="line"></div>
						<p>18,000</p>
						<h4>의자</h4>
					</div>
				</a>
			</div>

			<!-- Single Catagory -->
			<div class="single-products-catagory clearfix">
				<a href="shop.html"> <img src="../shop/img/bg-img/4.jpg" alt="" >
					<!-- Hover Content -->
					<div class="hover-content">
						<div class="line"></div>
						<p>18,000</p>
						<h4>스탠드</h4>
					</div>
				</a>
			</div>

			<!-- Single Catagory -->
			<div class="single-products-catagory clearfix">
				<a href="shop.html"> <img src="../shop/img/bg-img/5.jpg" alt="" >
					<!-- Hover Content -->
					<div class="hover-content">
						<div class="line"></div>
						<p>18,000</p>
						<h4>화분</h4>
					</div>
				</a>
			</div>

			<!-- Single Catagory -->
			<div class="single-products-catagory clearfix">
				<a href="shop.html"> <img src="../shop/img/bg-img/6.jpg" alt="" >
					<!-- Hover Content -->
					<div class="hover-content">
						<div class="line"></div>
						<p>320,000</p>
						<h4>테이블</h4>
					</div>
				</a>
			</div>

			<!-- Single Catagory -->
			<div class="single-products-catagory clearfix">
				<a href="shop.html"> <img src="../shop/img/bg-img/7.jpg" alt="" >
					<!-- Hover Content -->
					<div class="hover-content">
						<div class="line"></div>
						<p>31,800</p>
						<h4>메탈릭 의자</h4>
					</div>
				</a>
			</div>

			<!-- Single Catagory -->
			<div class="single-products-catagory clearfix">
				<a href="shop.html"> <img src="../shop/img/bg-img/8.jpg" alt="" > <!-- Hover Content -->
					<div class="hover-content">
						<div class="line"></div>
						<p>31,800</p>
						<h4>예쁜 의자</h4>
					</div>
				</a>
			</div>

			<!-- Single Catagory -->
			<div class="single-products-catagory clearfix">
				<a href="shop.html"> <img src="../shop/img/bg-img/9.jpg" alt="" >
					<!-- Hover Content -->
					<div class="hover-content">
						<div class="line"></div>
						<p>31,000</p>
						<h4>장식</h4>
					</div>
				</a>
			</div>
		</div>
	</div>
	<!-- Product Catagories Area End -->
</body>

</html>