<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/WEB-INF/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
               <h1 class="h2">주문/상세</h1>
            </div>
            <div class="col-md-5">
               <ul class="breadcrumb d-flex justify-content-end">
                  <li class="breadcrumb-item active">주문상세</li>
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
                  <div class="box mt-0 pb-0 no-horizontal-padding">
                     <form method="get" action="../item/shop-checkout1.shop">
                        <div class="table-responsive">
                           <h2>판매자 정보</h2>
                           <table class="table">
                              <thead>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">이름</td>
                                    <td style="width: 80%">${saleUser.name}</td>
                                 </tr>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">이메일</td>
                                    <td style="width: 80%">${saleUser.email}</td>
                                 </tr>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">휴대폰 번호</td>
                                    <td style="width: 80%">${saleUser.tel}</td>
                                 </tr>
                              </thead>
                           </table>
                        </div>
                        <br>
                        <div class="table-responsive">
                           <h2>내 정보</h2>
                           <table class="table">
                              <thead>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">이름</td>
                                    <td style="width: 80%">${myUser.name}</td>
                                 </tr>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">배송주소</td>
                                    <td style="width: 80%">${myUser.address}</td>
                                 </tr>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">휴대폰 번호</td>
                                    <td style="width: 80%">${myUser.tel}</td>
                                 </tr>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">배송요청사항</td>
                                    <td style="width: 80%">${imt.deliverymessage}</td>
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
                                    value="${imt.quantity}" />개</td>
                                 </tr>                                 
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">할인쿠폰</td>
                                    <td style="width: 80%">0건</td>
                                 </tr>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">배송비</td>
                                    <td style="width: 80%"><fmt:formatNumber type="number" maxFractionDigits="3"
                                    value="${imt.deliverycost}" />원</td>
                                 </tr>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">총 결제금액</td>
                                    <td style="width: 80%"><fmt:formatNumber type="number" maxFractionDigits="3"
                                    value="${item.price*imt.quantity+imt.deliverycost}" />원</td>
                                 </tr>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">결제수단</td>
                                    <td style="width: 100%">
                                       <c:if test="${code eq '1' }">
                                          <div id="transfer">
                                             <table class="table">
                                                <thead>
                                                   <tr><td>${payment1 }</td></tr>
                                                   <tr>
                                                      <td style="background: silver; width: 25%">
                                                         은행 : ${payment2}
                                                      </td>
                                                      <td style="background: silver; width: 75%">
                                                         계좌 : ${payment3}
                                                      </td>
                                                   </tr>
                                                </thead>
                                             </table>
                                          </div>
                                       </c:if>
                                       <c:if test="${code eq '2' }">
                                       
                                       <div id="transfer">
                                          <table class="table">
                                             <thead>
                                             <tr><td>${payment1 }</td></tr>
                                                <tr>
                                                   <td style="width: 100%; background: silver;">
                                                      등록된 카드 선택 : ${payment2 }
                                                   </td>
                                                </tr>
                                             </thead>
                                          </table>
                                          </div>
                                       
                                       </c:if>
                                    </td>

                                 </tr>
                              </thead>
                           </table>
                        </div>
                        
                         <div class="table-responsive">
                           <h2>사유</h2>
                           <table class="table">
                              <thead>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">반품 사유</td>
                                    <td style="width: 80%">${imt.reason }</td>
                                 </tr>
                                 <tr>
                                    <td style="background: #4fbfa8; width: 20%">반려 사유</td>
                                    <td style="width: 80%">${imt.refuse }</td>
                                 </tr>                                 
                              </thead>
                           </table>
                        </div>

                     </form>
                  </div>
               </div>
               
            
            <div class="col-lg-3">
               <div id="order-summary" class="box mt-0 mb-4 p-0">
                  <div class="box-header mt-0">
                     <h3>결제 내역</h3>
                  </div>
                  <div class="table-responsive">
                     <table class="table">
                        <tbody>
                           <tr>
                              <td>가격</td>
                              <th><fmt:formatNumber type="number" maxFractionDigits="3"
                                    value="${imt.price*imt.quantity}" />원</th>
                           </tr>
                           <tr>
                              <td>배송비</td>
                              <th><fmt:formatNumber type="number" maxFractionDigits="3"
                                    value="${imt.deliverycost}" />원</th>
                           </tr>
                           <tr>
                              <td>할인 가격</td>
                              <th></th>
                           </tr>
                           <tr class="total">
                              <td>총 금액</td>
                              <th><fmt:formatNumber type="number" maxFractionDigits="3"
                                    value="${imt.price*imt.quantity+imt.deliverycost}" />원</th>
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