<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- /WEB-INF/view/border/delete.jsp --%>
<%@ include file="/WEB-INF/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 삭제</title>
</head>
<body>
<form:form modelAttribute="replyboard" action="deletereply.shop" enctype="multipart/form-data" name="f">
   <form:hidden path="no"/>
   <input type="hidden" name="no" value="${border.no}">
   <input type="hidden" name="num" value="${replyboard.num}">
   <input type="hidden" name="tema" value="${param.tema}">
   <table>
      <tr>
         <td colspan="2">
            <input type="submit" value="[삭제]">
         </td>
      </tr>
   </table>
</form:form>
</body>
</html>