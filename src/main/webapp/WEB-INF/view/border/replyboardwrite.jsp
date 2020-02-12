<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글</title>
<link rel="stylesheet" href="../css/main.css">
<script type="text/javascript">
	function reply_submit() {
		f = document.f;
		if(f.content.value==""){
			alert("내용을 입력하세요.");
			f.content.focus();
			return;
		}
		f.submit();
	}
</script>
</head>
<body>
<form:form modelAttribute="replyboard" action="replyboardwrite.shop" name="f">
<input type="hidden" name="no" value="${param.no}">
<input type="hidden" name="tema" value="${param.tema}">
<table>
   <caption>댓글작성</caption>
   <tr>
      <td>닉네임</td>
      <td><input type="text" name="nickname" value="${sessionScope.loginUser.nickname}" readonly></td>
   </tr>
   <tr>
      <td>내용</td>
      <td><textarea rows="15" name="content"></textarea></td>
   </tr>
   <tr>
      <td colspan="2"><a href="javascript:reply_submit()">[댓글등록]</a></td>
   </tr>
</table>
</form:form>
</body>
</html>