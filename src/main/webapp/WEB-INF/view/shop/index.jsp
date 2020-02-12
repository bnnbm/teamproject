<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <title>HOME</title>
  </head>
  <body>      
      <section style="background:center center repeat; background-size: cover;" class="relative-positioned">
        <!-- Carousel Start-->
        <div class="home-carousel">
          <div class="dark-mask mask-primary"></div>
          <div class="container">
            <div class="homepage owl-carousel">
            <c:forEach items="${itemlist }" var="item" begin="0" end="3">
              <div class="item">
                <div class="row">
                  <div class="col-md-5 text-right">
                    <h1>${item.subject}</h1>
                    <p>${item.itemname }</p>
                  </div>
                  <div class="col-md-7"><img src="../item/img/${item.pictureUrl1}" alt="" class="img-fluid" style = "height : 400px;"></div>
                </div>
              </div>
            </c:forEach>              
            </div>
          </div>
        </div>
        <!-- Carousel End-->
      </section>
      <section class="bar no-mb">
        <div data-animate="fadeInUp" class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="heading text-center">
                <h3>PRODUCTS</h3>
              </div>
              <div class="row portfolio text-center no-space">
              <c:forEach items="${itemlist}" begin="0" end="11" var="item">
                <div class="col-md-4">
                  <div class="box-image">
                    <div class="image"><img src="../item/img/${item.pictureUrl1 }" alt="" class="img-fluid" style = "height : 300px;">
                      <div class="overlay d-flex align-items-center justify-content-center">
                        <div class="content">
                          <div class="name">
                            <h3><a href="" class="color-white">${item.itemid }</a></h3>
                          </div>
                          <div class="text">
                            <p class="d-none d-sm-block">${fn:substring(item.description,0,10)}</p>
                            <p class="buttons"><a href="../item/sellingdetail.shop?userid=${item.userid}&tema=${item.tema}&itemid=${item.itemid}" class="btn btn-template-outlined-white">View</a></p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                </c:forEach>
              </div>
              <div class="see-more text-center"><a href="../item/category.shop?userid=${param.userid}&tema=clothes" class="btn btn-template-outlined">상품 더보기</a></div>
            </div>
          </div>
        </div>
      </section>
  </body>
</html>