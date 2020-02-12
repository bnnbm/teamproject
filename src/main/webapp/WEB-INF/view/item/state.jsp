<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매통계</title>
<script type="text/javascript"
src = "https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script>
<script type="text/javascript"
src ="https://www.chartjs.org/samples/latest/utils.js"></script>
<script type="text/javascript">
   
</script>
</head>
<body>
<div class="container">
         <div class="row">
            <div class="col-lg-3">
               <!-- MENUS AND WIDGETS -->
               <div class="panel panel-default sidebar-menu with-icons">
                  <div class="panel-heading">
                     <h3 class="h4 panel-title">Menu</h3>
                  </div>
                  <div class="panel-body">
                     <ul class="nav nav-pills flex-column text-sm">
                        <li class="nav-item"><a
                           href="sell.shop?userid=${sessionScope.loginUser.userid}"
                           class="nav-link">판매 등록</a></li>
                        <li class="nav-item"><a
                           href="selling.shop?userid=${sessionScope.loginUser.userid}"
                           class="nav-link">판매 등록 물품 관리</a></li>
                        <li class="nav-item"><a
                           href="takeback.shop?userid=${sessionScope.loginUser.userid}"
                           class="nav-link">반품 신청 목록 관리</a></li>
                        <li class="nav-item"><a
                           href="state.shop?userid=${sessionScope.loginUser.userid}&year=${sessionScope.loginUser.year}"
                           class="nav-link active">판매 통계</a></li>
                        <li class="nav-item"><a
                           href="qna.shop?userid=${sessionScope.loginUser.userid}"
                           class="nav-link">Q&A 관리</a></li>
                        <li class="nav-item"><a
                           href="sellingcomplete.shop?userid=${sessionScope.loginUser.userid}"
                           class="nav-link">판매된 목록</a></li>
								<li class="nav-item"><a
									href="takebacked.shop?userid=${sessionScope.loginUser.userid}"
									class="nav-link">반품/취소된 목록</a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-lg-9">
               <div style="float:right;">
                  <form id="f" action="state1.shop" name="f">
                     <input type="hidden" name="userid" value="${param.userid }"/>
                     <select id="year" name="year" class="bs-select">
                           <c:forEach var="i" begin="0" end="${maxyear-minyear }">
                              <c:set var="yearOption" value="${maxyear-i }"/>
                              <option value="${yearOption }">${yearOption }년</option>
                           </c:forEach>
                     </select>
                  <input type="submit" value="검색" class="btn btn-template-yyw">
                  </form>
               </div>
               <div style="width:100%">
                  <canvas id="canvas"></canvas>
               </div>
               
               <div id="container" style="width: 100%;">
                  <canvas id="canvas1"></canvas>
               </div>            
            </div>
         </div>
      </div>
      <script>
                  var MONTHS = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
                  $("#year > option[value="+${year1}+"]").attr('selected','selected');
                  window.onload = function(){
                     var year = f.year.value;
                     
                     var ctx = document.getElementById('canvas').getContext('2d');
                     window.myLine = new Chart(ctx, {
                        type: 'line',
                        data: {
                           labels: [<c:forEach items="${month}" var="m1" begin="0" end="${maxmonth-1}">
                                    "${m1}",
                                 </c:forEach>],
                           datasets: [{
                              label: '월 총 판매 수량',
                              backgroundColor: window.chartColors.red,
                              borderColor: window.chartColors.red,
                              data: [
                                 <c:forEach items="${soldlist}" var="m" varStatus="status" begin="0" end="${maxmonth-1}">
                                    "${m.quantity}",
                                 </c:forEach>
                              ],
                              fill: false,
                           }]
                        },
                        options: {
                           responsive: true,
                           title: {
                              display: true,
                              text: '연도별 월별 판매수량'
                           },
                           tooltips: {
                              mode: 'index',
                              intersect: false,
                           },
                           hover: {
                              mode: 'nearest',
                              intersect: true
                           },
                           scales: {
                              xAxes: [{
                                 display: true,
                                 scaleLabel: {
                                    display: true,
                                    labelString: 'Month'
                                 }
                              }],
                              yAxes: [{
                                 display: true,
                                 scaleLabel: {
                                    display: true,
                                    labelString: 'quantity'
                                 }
                              }]
                           }
                        }
                     });
                     
                     var color = Chart.helpers.color;
                     var barChartData = {
                        labels: [<c:forEach items="${month}" var="m1" begin="0" end="${maxmonth-1}">
                                 "${m1}",
                        </c:forEach>],
                        datasets: [{
                           label: '전년도 매출액',
                           backgroundColor: color(window.chartColors.red).alpha(0.5).rgbString(),
                           borderColor: window.chartColors.red,
                           borderWidth: 1,
                           data: [
                              <c:forEach items="${takeList1}" var="m" varStatus="status" begin="0" end="${maxmonth-1}">
                                 "${m.price}",
                              </c:forEach>
                           ]
                        }, {
                           label: '이번년도 매출액',
                           backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
                           borderColor: window.chartColors.blue,
                           borderWidth: 1,
                           data: [
                              <c:forEach items="${takeList2}" var="m" varStatus="status" begin="0" end="${maxmonth-1}">
                              	"${m.price}",
                              </c:forEach>
                           ]
                        }]

                     };
   
                     
                  var ctx = document.getElementById('canvas1').getContext('2d');
                  window.myBar = new Chart(ctx, {
                     type: 'bar',
                     data: barChartData,
                     options: {
                        responsive: true,
                        title: {
                           display: true,
                           text: '연도별 월별 매출액'
                        }
                     }
                  });

               };
            
                  
                  
                  

                  
</script>      
</body>
</html>