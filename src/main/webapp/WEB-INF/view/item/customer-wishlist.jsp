<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <title>찜한 상품</title>
  </head>
  <body>
      <div id="heading-breadcrumbs">
        <div class="container">
          <div class="row d-flex align-items-center flex-wrap">
          
            <div class="col-md-7">
              <h1 class="h2">찜한 상품</h1>
            </div>
            <div class="col-md-5">
              <ul class="breadcrumb d-flex justify-content-end">
                <li class="breadcrumb-item"><a href="../shop/index.shop">Home</a></li>
                <li class="breadcrumb-item active">My Wishlist</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="content">
        <div class="container">
          <div class="row bar">
                      <div class="col-lg-3 mt-4 mt-lg-0">
              <!-- CUSTOMER MENU -->
              <div class="panel panel-default sidebar-menu">
                <div class="panel-heading">
                  <h3 class="h4 panel-title">Customer section</h3>
                </div>
                <div class="panel-body">
                  <ul class="nav nav-pills flex-column text-sm">
                    <li class="nav-item"><a href="customer-order.shop?userid=${sessionScope.loginUser.userid}" class="nav-link"><i class="fa fa-list"></i> 주문 내역</a></li>
                    <li class="nav-item"><a href="customer-wishlist.shop?userid=${sessionScope.loginUser.userid}" class="nav-link active"><i class="fa fa-heart"></i> 찜한 상품</a></li>
                    <li class="nav-item"><a href="payment.shop?userid=${sessionScope.loginUser.userid}" class="nav-link"><i class="fa fa-user"></i> 결제 내역</a></li>
                    <li class="nav-item"><a href="deliverysearch.shop?userid=${sessionScope.loginUser.userid}" class="nav-link"><i class="fa fa-sign-out"></i>배송조회</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-9">
              <p class="lead">기타 궁금한 점이 있으시다면 <a href="../shop/contact.shop">문의</a>해주시고, 평일 AM 09 - PM 18 연락 가능합니다.</p>
              <br/>
              <c:if test="${dipscnt ne null }">
              <c:forEach var="d" items="${dipslist }">
              <div class="row products">
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="image"><a href="sellingdetail.shop?userid=${d.item.userid }&tema=${d.item.tema}&itemid=${d.item.itemid}"><img src="img/${d.item.pictureUrl1 }" alt="" class="img-fluid image1"></a></div>
                    <div class="text">
                      <h3 class="h5"><a href="sellingdetail.shop?userid=${d.item.userid }&tema=${d.item.tema}&itemid=${d.item.itemid}">${d.item.subject}</a></h3>
                      <p class="price">${d.item.price }원</p>
                    </div>
                  </div>
                </div>
              </div>
             </c:forEach>
             </c:if>
             <c:if test="${dipscnt == '0' }">
                <p>찜한 상품이 없습니다.</p>
             </c:if>
             
             <div class="d-flex justify-content-center">
                        <nav aria-label="Page navigation example">
                           <ul class="pagination">


                              <c:if test="${pageNum >1 }">
                                 <li class="page-item"><a
                                    href="customer-order.shop?userid=${sessionScope.loginUser.userid}&pageNum=${pageNum-1}"
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
                                       href="customer-order.shop?userid=${sessionScope.loginUser.userid}&pageNum=${a}"
                                       class="page-link">${a}</a></li>
                                 </c:if>
                              </c:forEach>

                              <c:if test="${pageNum<maxpage }">
                                 <li class="page-item"><a
                                    href="customer-order.shop?userid=${sessionScope.loginUser.userid}&pageNum=${pageNum+1}"
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
  </body>
</html>