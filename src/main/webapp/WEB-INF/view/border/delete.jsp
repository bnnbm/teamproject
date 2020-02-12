<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- /WEB-INF/view/border/delete.jsp --%>
<%@ include file="/WEB-INF/jspHeader.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 삭제 화면</title>
</head>
<body>
<form:form modelAttribute="border" action="delete.shop" enctype="multipart/form-data" name="f">
   <form:hidden path="no"/>
   <input type="hidden" name="no" value="${border.no}">
   <input type="hidden" name="tema" value="${border.tema}">
   <input type="hidden" name="userid" value="${param.userid}">
   <table>
      <tr>
         <td colspan="2">
            <a href="javascript:document.f.submit()">[게시글 삭제]</a>
         </td>
      </tr>
   </table>
</form:form>
</body>
</html>