<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매 통계</title>
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
                           href="delivery.shop?userid=${sessionScope.loginUser.userid}"
                           class="nav-link">배송 관리</a></li>
                        <li class="nav-item"><a
                           href="state.shop?userid=${sessionScope.loginUser.userid}&year=${sessionScope.loginUser.year}"
                           class="nav-link active">판매 통계</a></li>
                        <li class="nav-item"><a
                           href="qna.shop?userid=${sessionScope.loginUser.userid}"
                           class="nav-link">Q&A 관리</a></li>
                        <li class="nav-item"><a
                           href=".shop?userid=${sessionScope.loginUser.userid}"
                           class="nav-link">판매된 목록</a></li>
                        <li class="nav-item"><a
                           href=".shop?userid=${sessionScope.loginUser.userid}"
                           class="nav-link">반품/취소된 목록</a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-lg-9">
                 <div style="
                             width:300px;
                         height:300px;
                         position:absolute;
                         left:50%;
                         top:50%;
                         margin-left:-150px;
                         margin-top:-150px;">
                    <p><B>판매 데이터가 없습니다.</B></p>
                 </div>
            </div>
         </div>
      </div>

</body>
</html>