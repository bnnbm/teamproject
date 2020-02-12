<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%--에러페이지에서만 Exception 객체가 전달되니까 isErrorPage = "true" 를 써준 것이다. : exception 객체를 내장객체로 할당 --%>    
<script>
	alert("${exception.message}");
	location.href = "${exception.url}";
</script>