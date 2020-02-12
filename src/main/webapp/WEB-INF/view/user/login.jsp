<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
</head>
<body>
   <div id="heading-breadcrumbs">
      <div class="container">
         <div class="row d-flex align-items-center flex-wrap">
            <div class="col-md-7">
               <h1 class="h2">회원가입</h1>
            </div>
            <div class="col-md-5">
               <ul class="breadcrumb d-flex justify-content-end">
                  <li class="breadcrumb-item"><a href="../shop/index.shop">Home</a></li>
                  <li class="breadcrumb-item active">회원가입 / 로그인</li>
               </ul>
            </div>
         </div>
      </div>
   </div>
   <div id="content">
      <div class="container">
         <div class="row">
            <div class="col-lg-10">
               <div class="box">
                  <h2 class="text-uppercase">로그인</h2>
                  <form:form modelAttribute="user" method="post"
                     action="login.shop">
                     <form:hidden path="name" class="form-control" value = "12345"/>
                     <form:hidden path="age" class="form-control" value = "12345"/>
                     <form:hidden path="nickname" class="form-control" value = "12345"/>
                     <form:hidden path="email" class="form-control" value = "12345"/>
                     <form:hidden path="zonecode" class="form-control" value = "12345"/>
                     <form:hidden path="tel" class="form-control" value = "12345"/>
                     <spring:hasBindErrors name="user">
                        <font color="red"> <c:forEach
                              items="${errors.globalErrors}" var="error">
                              <spring:message code="${error.code}" />
                           </c:forEach>
                        </font>
                     </spring:hasBindErrors>

                     <div class="form-group">
                        <form:input path="userid" class="form-control" placeholder="id"/>
                        <font color="red"><form:errors path="userid" /></font>
                     </div>
                     <div class="form-group">
                        <form:password path="pass" class="form-control" placeholder="password"/>
                        <font color="red"><form:errors path="pass" /></font>
                     </div>
                     <p class="text-center">
                        
                        
                        <%-- kakao 로그인 --%>
                        <a id="kakao-login-btn"></a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <button class="btn btn-template-outlined">
                           <i style="height:26px;" class="fa fa-sign-in"></i> 로그인
                        </button>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        <%-- naver 로그인 --%>
                        <a id="naver_id_login"></a>
                        <script type="text/javascript">
                           Kakao.init('4c1a17571a06cb20f632254fd82157f3');
                           var email;
                           var nickname;
                           var profile;
                           var access_token;
                           $(document).ready(function(){
                              Kakao.Auth.createLoginButton({
                                    container: '#kakao-login-btn'
                        
                              });
                              $('#kakao-login-btn').click(function(){
                                 Kakao.Auth.loginForm({ 
                                         success : function(authObj) {
                                             Kakao.API.request({
                                                url : '/v1/user/me',
                                                success : function(res) {
                                                   
                                                   // json형태로 출력되는 로그인 정보들을 변수에 담는다.
                                                   
                                                    email = JSON.stringify(res.kaccount_email);
                                                    nickname = JSON.stringify(res.properties['nickname']);
                                                    profile =    JSON.stringify(res.properties.profile_image); //res.properties.nickname으로도 접근 가능.
                                                    access_token = JSON.stringify(authObj.access_token);
                                                   
                                                         $(function() {
                                                            
                                                            //로그인 정보들을 input 태그의 value 에 담는다.
                              
                                                            console.log("email");
                                                            console.log("nickname");
                                                            
                                                            //서브밋 한다.
                                                             var form = document.getElementById("kakao-login");  
                                                            $.ajax({
                                                                 url:"login3.shop",
                                                                 type:"post",
                                                                 data:{
                                                                    email : email,
                                                                    profile : profile,
                                                                    nickname : nickname
                                                                 },
                                                                 success: function(data){
                                                                    
                                                                    if(data == 'userEntry.shop'){
                                                                    alert("해당 아이디가 없습니다.");
                                                                    location.href=data
                                                                    }else{
                                                                       alert("카카오 로그인 성공")
                                                                       location.href=data
                                                                    }
                                                                 },
                                                                 error: function(e){
                                                                    alert(JSON.stringify(e));
                                                                 }
                                                              });
                                                            
                                                            
                                                            
                                                         });
                                                }
                                          });
                                                
                                          
                                       },
                                          fail : function(error) {
                                             alert(JSON.stringify(error));
                                             alert("로그인 실패!");
                                          }
                                       });
                              })
                           })
                           
                           var naver_id_login = new naver_id_login("1pOeSW7I1etXR4tam8X7", "http://192.168.0.239:8080/project/user/naverlogin.shop");   // Client ID, CallBack URL 삽입
                                                         // 단 'localhost'가 포함된 CallBack URL
                               var state = naver_id_login.getUniqState();
                              
                               naver_id_login.setButton("white", 20, 47);
                               naver_id_login.setDomain("http://192.168.0.239:8080/project/user/login.shop");   //  URL
                               naver_id_login.setState(state);
                               naver_id_login.setPopup();
                               naver_id_login.init_naver_id_login();
                              
                     </script>
                     </p>
                  </form:form>
                  <p class="text-center text-muted">아직 가입 안하셨나요?</p>
                  <p class="text-center text-muted">
                     <a href="../user/userEntry.shop"> <strong>등록하세요</strong></a> ! 단
                     1분만 투자하시면 됩니다! 지금 가입하시면 할인 쿠폰 드려요!
                  </p>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>