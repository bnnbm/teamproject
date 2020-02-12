<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Naver 사용자 정보</title>
<script src= "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("1pOeSW7I1etXR4tam8X7", "http://192.168.0.239:8080/project/user/naverlogin.shop");
  // 접근 토큰 값 출력
  //alert(naver_id_login.oauthParams.access_token);
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
    var id = naver_id_login.getProfileData('id');
    var nickname = naver_id_login.getProfileData('nickname');
    $.ajax({
         url:"login1.shop",
         type:"post",
         data:{
            id : id,
            nickname : nickname
            
         },
         success: function(data){
            if(data=='userEntry.shop'){
               alert("해당 아이디가 없습니다.")
               opener.document.location.href=data
            }else{
               opener.document.location.href=data
            }
               self.close();
         },
         error: function(e){
            alert(JSON.stringify(e));
         }
      });
  }
</script>

</body>
</html>