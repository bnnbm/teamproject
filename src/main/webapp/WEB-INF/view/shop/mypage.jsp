<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">마이페이지</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="index.shop">Home</a></li>
                <li class="breadcrumb-item active">Services</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <section class="bar">
            <div class="row">
              <div class="col-md-12">
                <div class="heading">
                  <h2>선택하세요.</h2>
                </div>
              </div>
            </div>
            <div class="row services text-center">
              <div class="col-md-6">
                <div class="box-simple">
                  <div class="icon-outlined">
                  	<i class="fa fa-desktop" 
                  		onclick = "location.href = '../item/sell.shop?userid=${sessionScope.loginUser.userid}'"></i>
                  </div>
                  <h3 class="h4">
                  	<a href = "../item/sell.shop?userid=${sessionScope.loginUser.userid}">판매자 페이지</a></h3>
                  <p>판매 목록관리, 판매된 물품, 반품신청목록 , Q&A 등을 확인할 수 있습니다.</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="box-simple">
                  <div class="icon-outlined">
                  	<i class="fa fa-globe" 
                  		onclick = "location.href = '../item/customer-order.shop?userid=${sessionScope.loginUser.userid}'"></i>
                  </div>
                  <h3 class="h4">
                  	<a href = "../item/customer-order.shop?userid=${sessionScope.loginUser.userid}">구매자 페이지</a></h3>
                  <p>구매목록 , 구매취소목록, 찜 목록, 배송정보 등을 볼 수 있습니다.</p>
                </div>
              </div>
            </div>
          </section>
        </div>
      </div>

</body>
</html>