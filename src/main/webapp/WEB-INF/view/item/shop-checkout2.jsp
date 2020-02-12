<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>배송현황</title>
  </head>
  <body>
      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
              <h1 class="h2">Checkout - 배송 현황</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="../shop/index.shop">Home</a></li>
                <li class="breadcrumb-item active">Checkout - 배송 현황</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <div class="row">
            <div id="checkout" class="col-lg-9">
              <div class="box">
                <form method="get" action="../item/shop-checkout3.shop">
                  <ul class="nav nav-pills nav-fill">
                    <li class="nav-item"><a href="../item/shop-checkout1.shop" class="nav-link"> <i class="fa fa-map-marker"></i><br>주소</a></li>
                    <li class="nav-item"><a href="../item/shop-checkout2.shop" class="nav-link active"><i class="fa fa-truck"></i><br>배송 현황</a></li>
                    <li class="nav-item"><a href="../item/shop-checkout3.shop" class="nav-link disabled"><i class="fa fa-money"></i><br>결제</a></li>
                    <li class="nav-item"><a href="../item/shop-checkout4.shop" class="nav-link disabled"><i class="fa fa-eye"></i><br>상품 리뷰</a></li>
                  </ul>
                  <div class="content">
                    <div class="row">
                      <div class="col-sm-6">
                        <div class="box shipping-method">
                          <h4>USPS Next Day</h4>
                          <p>Get it right on next day - fastest option possible.</p>
                          <div class="box-footer text-center">
                            <input type="radio" name="delivery" value="delivery1">
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="box shipping-method">
                          <h4>USPS Next Day</h4>
                          <p>Get it right on next day - fastest option possible.</p>
                          <div class="box-footer text-center">
                            <input type="radio" name="delivery" value="delivery2">
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="box shipping-method">
                          <h4>USPS Next Day</h4>
                          <p>Get it right on next day - fastest option possible.</p>
                          <div class="box-footer text-center">
                            <input type="radio" name="delivery" value="delivery3">
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="box-footer d-flex flex-wrap align-items-center justify-content-between">
                    <div class="left-col"><a href="../item/shop-checkout1.shop" class="btn btn-secondary mt-0"><i class="fa fa-chevron-left"></i>주소</a></div>
                    <div class="right-col">
                      <button type="submit" class="btn btn-template-main">결제내역<i class="fa fa-chevron-right"></i></button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <div class="col-lg-3">
              <div id="order-summary" class="box mb-4 p-0">
                <div class="box-header mt-0">
                  <h3>결제 내역</h3>
                </div>
                <p class="text-muted">배송은 주말과 공휴일을 제외한 3-4일 정도 소요될 수 있습니다.</p>
                <div class="table-responsive">
                  <table class="table">
                    <tbody>
                      <tr>
                        <td>가격</td>
                        <th>￦65000</th>
                      </tr>
                      <tr>
                        <td>배송비</td>
                        <th>￦0</th>
                      </tr>
                      <tr>
                        <td>할인 가격</td>
                        <th>￦4000</th>
                      </tr>
                      <tr class="total">
                        <td>총 금액</td>
                        <th>￦61000</th>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </body>
</html>